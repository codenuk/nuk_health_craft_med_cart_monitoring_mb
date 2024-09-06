## How to run
``` sh
flutter run # For Specific Device 
flutter run -d all # For All Device
```

## How to update file generate mutiple lang
```sh
#add localizations to file /lib/base/l10n/app_en.arb, /lib/base/l10n/app_th.arb
#after add wording to localizations file run this command for reload localizations
flutter gen-l10n
```

## How to generate type gql in dart
1. Install ```npm install -g get-graphql-schema```
2. Run command ```get-graphql-schema https://asarn28lj2.execute-api.ap-southeast-1.amazonaws.com/dev/v1/graphqlNonAuth > lib/graphql/schema.graphql``` -> For generate File `lib/graphql/schema.graphql`
3. Run command ```flutter pub run build_runner build``` For convert file `schema.graphql` to `schema.graphql.dart`

## Noted
- About go_router, how to navigate page between go and push. [Click](https://stackoverflow.com/a/76008627)
