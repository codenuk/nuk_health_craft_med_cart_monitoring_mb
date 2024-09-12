import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/report.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';

class ReportPatientHistoryService {
  static AuthGraphqlQLConfig graphqlQLConfig = AuthGraphqlQLConfig();

  Future<Query$ReportPatientHistory$reportPatientHistory?> reportPatientHistory({
    required BuildContext context,
    required Input$ReportPatientHistoryFilterInput filter,
  }) async {
    GraphQLClient client = graphqlQLConfig.clientToQuery(context);
    try {
      Variables$Query$ReportPatientHistory variables =
          Variables$Query$ReportPatientHistory(filter: filter);

      QueryResult result = await client.query(
        QueryOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: documentNodeQueryReportPatientHistory,
          variables: variables.toJson(),
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        // Parse the typed response
        Query$ReportPatientHistory response =
            Query$ReportPatientHistory.fromJson(result.data ?? {});

        // Return the actual login response (either success or error)
        return response.reportPatientHistory;
      }
    } catch (e) {
      return null;
    }
  }
}
