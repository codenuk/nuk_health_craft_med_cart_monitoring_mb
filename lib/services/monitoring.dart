import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/monitoring.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';

class MonitoringDeviceInBuildingService {
  static AuthGraphqlQLConfig graphqlQLConfig = AuthGraphqlQLConfig();

  Future<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding?> monitoringDeviceInBuilding({
    required BuildContext context,
    required Input$MonitoringDeviceInBuildingFilterInput filter,
  }) async {
    GraphQLClient client = graphqlQLConfig.clientToQuery(context);
    try {
      // Create typed variables using Variables$Mutation$login
      Variables$Query$MonitoringDeviceInBuilding variables =
          Variables$Query$MonitoringDeviceInBuilding(filter: filter);

      QueryResult result = await client.query(
        QueryOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: documentNodeQueryMonitoringDeviceInBuilding,
          variables: variables.toJson(),
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        // Parse the typed response
        Query$MonitoringDeviceInBuilding response =
            Query$MonitoringDeviceInBuilding.fromJson(result.data ?? {});

        // Return the actual login response (either success or error)
        return response.monitoringDeviceInBuilding;
      }
    } catch (e) {
      return null;
    }
  }
}

class MonitoringDeviceService {
  static AuthGraphqlQLConfig graphqlQLConfig = AuthGraphqlQLConfig();

  Future<Query$MonitoringDevice$monitoringDevice?> monitoringDevice({
    required BuildContext context,
    required Input$MonitoringDeviceFilterInput filter,
  }) async {
    GraphQLClient client = graphqlQLConfig.clientToQuery(context);
    try {
      // Create typed variables using Variables$Mutation$login
      Variables$Query$MonitoringDevice variables =
          Variables$Query$MonitoringDevice(filter: filter);

      QueryResult result = await client.query(
        QueryOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: documentNodeQueryMonitoringDevice,
          variables: variables.toJson(),
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        // Parse the typed response
        Query$MonitoringDevice response =
            Query$MonitoringDevice.fromJson(result.data ?? {});

        // Return the actual login response (either success or error)
        return response.monitoringDevice;
      }
    } catch (e) {
      return null;
    }
  }
}
