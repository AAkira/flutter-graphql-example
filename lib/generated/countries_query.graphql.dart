// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'countries_query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetCountries$Query$Country$Flag with EquatableMixin {
  GetCountries$Query$Country$Flag();

  factory GetCountries$Query$Country$Flag.fromJson(Map<String, dynamic> json) =>
      _$GetCountries$Query$Country$FlagFromJson(json);

  String emoji;

  String svgFile;

  @override
  List<Object> get props => [emoji, svgFile];
  Map<String, dynamic> toJson() =>
      _$GetCountries$Query$Country$FlagToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCountries$Query$Country with EquatableMixin {
  GetCountries$Query$Country();

  factory GetCountries$Query$Country.fromJson(Map<String, dynamic> json) =>
      _$GetCountries$Query$CountryFromJson(json);

  String name;

  GetCountries$Query$Country$Flag flag;

  @override
  List<Object> get props => [name, flag];
  Map<String, dynamic> toJson() => _$GetCountries$Query$CountryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCountries$Query with EquatableMixin {
  GetCountries$Query();

  factory GetCountries$Query.fromJson(Map<String, dynamic> json) =>
      _$GetCountries$QueryFromJson(json);

  @JsonKey(name: 'Country')
  List<GetCountries$Query$Country> country;

  @override
  List<Object> get props => [country];
  Map<String, dynamic> toJson() => _$GetCountries$QueryToJson(this);
}

class GetCountriesQuery
    extends GraphQLQuery<GetCountries$Query, JsonSerializable> {
  GetCountriesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'GetCountries'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'Country'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'flag'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'emoji'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'svgFile'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'GetCountries';

  @override
  List<Object> get props => [document, operationName];
  @override
  GetCountries$Query parse(Map<String, dynamic> json) =>
      GetCountries$Query.fromJson(json);
}
