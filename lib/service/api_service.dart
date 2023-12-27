import 'package:flutter_api/model/product_model.dart';
import 'package:http/http.dart' as http;

import '../api/product_api.dart';

class APIService {
  Future<List<ProductModel>> fetchAPIData() async {
    var response = await http.get(Uri.parse(productAPI));
    if (response.statusCode == 200) {
      return productModelFromJson(response.body);
    } else {
      return [];
    }
  }
}
