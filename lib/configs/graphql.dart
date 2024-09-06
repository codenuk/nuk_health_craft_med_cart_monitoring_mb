import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/environment.dart';

class GraphqlQLConfig {
  static HttpLink httpLink = HttpLink(Environment.endPoint);

  GraphQLClient clientToQuery() =>
      GraphQLClient(link: httpLink, cache: GraphQLCache());
}
