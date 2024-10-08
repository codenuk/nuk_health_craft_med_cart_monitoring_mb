import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/report.graphql.dart';
import 'package:health_craft_med_cart_monitoring_mb/graphql/auth/schema.graphql.dart';

class ReportPatientHistoryService {
  static AuthGraphqlQLConfig graphqlQLConfig = AuthGraphqlQLConfig();

  Future<Query$ReportPatientHistory$reportPatientHistory?>
      reportPatientHistory({
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

class PrintMedicalRecordService {
  static AuthGraphqlQLConfig graphqlQLConfig = AuthGraphqlQLConfig();

  Future<Mutation$printMedicalRecord$printMedicalRecord?> printMedicalRecord({
    required BuildContext context,
    required Input$PrintMedicalRecordInput input,
  }) async {
    GraphQLClient client = graphqlQLConfig.clientToQuery(context);
    try {
      Variables$Mutation$printMedicalRecord variables =
          Variables$Mutation$printMedicalRecord(input: input);

      QueryResult result = await client.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: documentNodeMutationprintMedicalRecord,
          variables: variables.toJson(),
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        // Parse the typed response
        Mutation$printMedicalRecord response =
            Mutation$printMedicalRecord.fromJson(result.data ?? {});

        // Return the actual login response (either success or error)
        return response.printMedicalRecord;
      }
    } catch (e) {
      return null;
    }
  }
}
