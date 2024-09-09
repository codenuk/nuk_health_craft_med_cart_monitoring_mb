import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static const Map<String, Map<String, String>> envConfig = {
    'DEV': {
      'END_POINT': 'https://asarn28lj2.execute-api.ap-southeast-1.amazonaws.com/dev/v1/graphqlNonAuth',
      'END_POINT_AUTH': 'https://asarn28lj2.execute-api.ap-southeast-1.amazonaws.com/dev/v1/graphql',
    },
    'PROD': {
      'END_POINT': 'ZZZZZ',
    }
  };

  static String get filename {
    return '.env';
  }

  static String get stage {
    return dotenv.env['STAGE'] ?? 'NOT FOUND';
  }

  static String get endPoint {
    return envConfig[stage]?['END_POINT'] ?? 'END POINT NOT FOUND';
  }

  static String get endPointAuth {
    return envConfig[stage]?['END_POINT_AUTH'] ?? 'END POINT NOT FOUND';
  }
}
