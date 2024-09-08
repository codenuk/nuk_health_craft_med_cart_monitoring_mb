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
```sh
$ npm install -g get-graphql-schema
$ get-graphql-schema https://asarn28lj2.execute-api.ap-southeast-1.amazonaws.com/dev/v1/graphqlNonAuth > lib/graphql/nonAuth/schema.graphql
$ get-graphql-schema --header "Authorization=Bearer TOKEN" https://asarn28lj2.execute-api.ap-southeast-1.amazonaws.com/dev/v1/graphql > lib/graphql/auth/schema.graphql
 > lib/graphql/auth/schema.graphql
$ flutter pub run build_runner build
```

## Noted
- About go_router, how to navigate page between go and push. [Click](https://stackoverflow.com/a/76008627)
- [Medium Go route](https://medium.com/@vimehraa29/flutter-go-router-the-crucial-guide-41dc615045bb)
- [Medium Set design system](https://medium.com/@mregnauld/how-to-implement-your-design-system-in-a-flutter-app-1-2-d2e21b5fcffd)