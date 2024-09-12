import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/location.graphql.dart';

class AllBuildingService {
  static AuthGraphqlQLConfig graphqlQLConfig = AuthGraphqlQLConfig();

  Future<Query$AllBuilding$allBuilding?> allBuilding({
    required BuildContext context,
  }) async {
    GraphQLClient client = graphqlQLConfig.clientToQuery(context);
    try {

      QueryResult result = await client.query(
        QueryOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: documentNodeQueryAllBuilding,
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        Query$AllBuilding response =
            Query$AllBuilding.fromJson(result.data ?? {});

        return response.allBuilding;
      }
    } catch (e) {
      return null;
    }
  }
}

class AllWardService {
  static AuthGraphqlQLConfig graphqlQLConfig = AuthGraphqlQLConfig();

  Future<Query$AllWard$allWard?> allWard({
    required BuildContext context,
  }) async {
    GraphQLClient client = graphqlQLConfig.clientToQuery(context);
    try {

      QueryResult result = await client.query(
        QueryOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: documentNodeQueryAllWard,
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        Query$AllWard response =
            Query$AllWard.fromJson(result.data ?? {});

        return response.allWard;
      }
    } catch (e) {
      return null;
    }
  }
}
