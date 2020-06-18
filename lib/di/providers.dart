import 'package:flutter/material.dart';
import 'package:fluttergraphql/app_config.dart';
import 'package:fluttergraphql/data/api/graphql_api_client.dart';
import 'package:fluttergraphql/data/repository/country_repository.dart';
import 'package:fluttergraphql/data/repository/country_repository_impl.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders(AppConfig config) {
  return <SingleChildWidget>[
    Provider<AppConfig>(
      create: (BuildContext context) => config,
    ),
    // api
    ..._apiProviders(),
    // repository
    ..._repositoryProviders(),
  ];
}

List<SingleChildWidget> _apiProviders() {
  return <SingleChildWidget>[
    Provider<GraphQLApiClient>(
      create: (BuildContext context) => GraphQLApiClient(
        context.read(),
      ),
    ),
  ];
}

List<SingleChildWidget> _repositoryProviders() {
  return <SingleChildWidget>[
    Provider<CountryRepository>(
      create: (BuildContext context) => CountryRepositoryImpl(
        context.read(),
      ),
    ),
  ];
}
