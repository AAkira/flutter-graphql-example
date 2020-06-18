import 'package:flutter/cupertino.dart';
import 'package:fluttergraphql/data/model/country.dart';
import 'package:fluttergraphql/data/repository/country_repository.dart';

class HomeModel extends ChangeNotifier {
  HomeModel(this._countryRepository) {
    getCountries();
  }

  final CountryRepository _countryRepository;

  List<Country> countries = [];

  Future<void> getCountries() async {
    try {
      countries = await _countryRepository.getCountries();
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
