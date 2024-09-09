import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/nonAuth/schema.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/nonAuth/login.graphql.dart';

class LoginService {
  static GraphqlQLConfig graphqlQLConfig = GraphqlQLConfig();
  GraphQLClient client = graphqlQLConfig.clientToQuery();

  Future<Mutation$login$login?> login({
    required Input$LoginInput input,
  }) async {
    try {
      // Create typed variables using Variables$Mutation$login
      Variables$Mutation$login variables =
          Variables$Mutation$login(input: input);

      QueryResult result = await client.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document:
              documentNodeMutationlogin, // Use the pre-defined DocumentNode for the mutation
          variables: variables.toJson(), // Use toJson() to pass typed variables
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        // Parse the typed response
        Mutation$login loginResponse =
            Mutation$login.fromJson(result.data ?? {});

        // Return the actual login response (either success or error)
        return loginResponse.login;
      }
    } catch (e) {
      return null;
    }
  }
}

class RefreshService {
  static GraphqlQLConfig graphqlQLConfig = GraphqlQLConfig();
  GraphQLClient client = graphqlQLConfig.clientToQuery();

  Future<Mutation$refreshToken$refreshToken?> refreshToken({
    required Input$RefreshTokenInput input,
  }) async {
    try {
      // Create typed variables using Variables$Mutation$login
      Variables$Mutation$refreshToken variables =
          Variables$Mutation$refreshToken(input: input);

      QueryResult result = await client.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document:
              documentNodeMutationrefreshToken, // Use the pre-defined DocumentNode for the mutation
          variables: variables.toJson(), // Use toJson() to pass typed variables
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        // Parse the typed response
        Mutation$refreshToken refreshTokenResponse =
            Mutation$refreshToken.fromJson(result.data ?? {});

        // Return the actual login response (either success or error)
        return refreshTokenResponse.refreshToken;
      }
    } catch (e) {
      return null;
    }
  }
}
