import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/components/base/snackbar.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/environment.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/nonAuth/login.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/nonAuth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/services/authentication.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/index.dart';
import 'package:go_router/go_router.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:provider/provider.dart';

class GraphqlQLConfig {
  static HttpLink httpLink = HttpLink(Environment.endPoint);

  GraphQLClient clientToQuery() =>
      GraphQLClient(link: httpLink, cache: GraphQLCache());
}

class AuthGraphqlQLConfig {
  bool isTokenExpired(String? token) {
    if (token == null) return true; // Token is null, consider it expired
    return JwtDecoder.isExpired(token);
  }

  // Method to refresh the access token using the RefreshService class
  Future<String?> refreshToken(BuildContext context) async {
    try {
      String? storedRefreshToken = context.read<GlobalState>().refreshToken;

      if (storedRefreshToken == null) {
        context.go('/login');
        return null;
      }

      // Prepare the input for the refresh token mutation
      Input$RefreshTokenInput input = Input$RefreshTokenInput(
        refreshToken: storedRefreshToken,
      );

      // Call the refresh token mutation via RefreshService
      Mutation$refreshToken$refreshToken? refreshTokenResult =
          await RefreshService().refreshToken(input: input);

      if (refreshTokenResult != null) {
        refreshTokenResult.when(
          refreshToken: (refreshData) {
            context.read<GlobalState>().setCredential(
                  refreshData.accessToken,
                  refreshData.refreshToken,
                );
            return refreshData.accessToken;
          },
          error: (errorData) {
            showSnackBarError(context, 'Your session has expired. Please log in again.');
            context.read<GlobalState>().clearCredential();
            context.go('/login');
            return null;
          },
          orElse: () {
            context.read<GlobalState>().clearCredential();
            context.go('/login');
            return null;
          },
        );
      } else {
        context.read<GlobalState>().clearCredential();
        context.go('/login');
        return null;
      }
    } catch (e) {
      context.read<GlobalState>().clearCredential();
      context.go('/login');
      return null;
    }
    return null;
  }

  GraphQLClient clientToQuery(BuildContext context) {
    final HttpLink httpLink = HttpLink(Environment.endPointAuth);

    // AuthLink to add Authorization header
    final authLink = AuthLink(
      getToken: () async {
        String? accessTokenLocal = context.read<GlobalState>().accessToken;
        // Check if the token is expired
        if (isTokenExpired(accessTokenLocal)) {
          await refreshToken(context);
          accessTokenLocal = context.read<GlobalState>().accessToken;
        }

        return accessTokenLocal != null ? 'Bearer $accessTokenLocal' : null;
      },
    );

    // Combine AuthLink and HttpLink
    final Link link = authLink.concat(httpLink);

    return GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }
}
