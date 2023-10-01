import 'package:sample_web_num_information/core/strings.dart';
import 'package:sample_web_num_information/infrastruture/api_key.dart';

class ApiEndPoints {
  static const trending = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey&query=";
}
