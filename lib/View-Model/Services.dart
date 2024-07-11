import 'package:countries_app_with_http_dao/Model/country.dart';
import 'package:dio/dio.dart';


class Services {
  final Dio _dio = Dio();

  Future<List<Country>> fetchcountries() async {
    try {
      final response = await _dio.get("https://restcountries.com/v3.1/region/europe?fields=population,name,flags");

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        print(response.data);
        return data.map((e) => Country.fromJson(e)).toList();

      } else {
        throw Exception('Failed to load countries');
      }
    } catch (e) {
      print('Error fetching countries: $e');
      return [];
    }

  }
}
