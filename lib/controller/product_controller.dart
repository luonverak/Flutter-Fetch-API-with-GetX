import 'package:flutter_api/model/product_model.dart';
import 'package:flutter_api/service/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<ProductModel> listProduct = <ProductModel>[].obs;
  RxBool loading = true.obs;
  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  void getProduct() async {
    try {
      loading(true);
      var product = await APIService().fetchAPIData();
      if (product != null) {
        listProduct.value = product;
      }
    } finally {
      loading(false);
    }
  }
}
