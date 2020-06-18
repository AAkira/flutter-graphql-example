import 'package:fluttergraphql/data/api/graphql_api_client.dart';
import 'package:fluttergraphql/data/model/country.dart';
import 'package:fluttergraphql/data/model/flag.dart';
import 'package:fluttergraphql/data/repository/country_repository.dart';
import 'package:fluttergraphql/generated/countries_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CountryRepositoryImpl implements CountryRepository {
  CountryRepositoryImpl(this._client);

  final GraphQLApiClient _client;

  @override
  Future<List<Country>> getCountries() async {
    final QueryResult result =
        await _client.query(GetCountriesQuery().document);

    final List<Country> countries =
        GetCountries$Query.fromJson(result.data as Map<String, dynamic>)
            .country
            .map((GetCountries$Query$Country item) => _mapCountry(item))
            .toList();

    // Remove items that failed to parse
    countries.removeWhere((Country value) => value == null);

    return countries;
  }

  Country _mapCountry(GetCountries$Query$Country item) {
    try {
      return Country(
        name: item.name,
        flag: _mapFlag(item.flag),
      );
    } catch (e) {
      print('Parse error: $e');
      return null;
    }
  }

  Flag _mapFlag(GetCountries$Query$Country$Flag item) {
    return Flag(
      emoji: item.emoji,
      svgFile: item.svgFile,
    );
  }
}
