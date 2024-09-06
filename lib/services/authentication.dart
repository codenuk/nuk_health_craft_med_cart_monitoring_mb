import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:health_craft_med_cart_monitoring_mb/configs/graphql.dart';

class LoginService {
  static GraphqlQLConfig graphqlQLConfig = GraphqlQLConfig();
  GraphQLClient client = graphqlQLConfig.clientToQuery();

  Future<bool> login({
    required dynamic input,
  }) async {
    try {
      QueryResult result = await client.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: gql("""
            mutation login(\$input: LoginInput!) {
              login(input: \$input) {
                __typename
                ... on Login {
                  res_code
                  res_desc
                  accessToken 
                  refreshToken
                }
                ... on Error {
                  res_code
                  res_desc
                }
              }
            }
            """),
          variables: {
            "input": {
              "username": "codenuk",
              "password": "123456"
            },
          },
        ),
      );

      print(result);
      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        return true;
      }
    } catch (e) {
      return false;
    }
  }
}
