import 'package:flutter/material.dart';
import 'package:fluttergraphql/app_config.dart';
import 'package:fluttergraphql/data/api/graphql_api_client.dart';
import 'package:fluttergraphql/di/providers.dart';
import 'package:fluttergraphql/ui/home/home_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  // Separate an environment with dev, stg and prd
  const AppConfig config =
      AppConfig(baseUrl: 'https://countries-274616.ew.r.appspot.com/');
  runApp(app(config));
}

Widget app(AppConfig config) {
  return MultiProvider(
    providers: getProviders(config),
    child: MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: context.select((GraphQLApiClient value) => value.graphQLClient),
      child: MaterialApp(
        title: 'Flutter GraphQL Example',
        routes: <String, WidgetBuilder>{
          '/': (_) => const HomePage(),
        },
      ),
    );
  }
}
