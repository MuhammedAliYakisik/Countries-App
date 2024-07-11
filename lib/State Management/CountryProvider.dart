import 'package:countries_app_with_http_dao/Model/country.dart';
import 'package:countries_app_with_http_dao/View-Model/Services.dart';
import 'package:flutter/material.dart';

class CountryProvider with ChangeNotifier {
  Services _services = Services();
  List<Country> _countries = [];
  bool _loading = false;

  List<Country> get countries => _countries;
  bool get loading => _loading;

  CountryProvider() {
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    _loading = true;
    notifyListeners();

    _countries = await _services.fetchcountries();

    _loading = false;
    notifyListeners();
  }
}
