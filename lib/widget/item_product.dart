import 'package:flutter/material.dart';
import 'package:flutter_api/view/detail_screen.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

Widget itemProduct(ProductModel model) {
  return GestureDetector(
    onTap: () => Get.to(DetailScreen(
      model: model,
    )),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: Colors.grey,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: SizedBox(
              height: 180,
              child: Hero(
                tag: model.id,
                child: Image.network(model.image),
              ),
            ),
          ),
          Text(
            model.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            model.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Text(
                '\$ ${model.price}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              const Icon(Icons.shopping_cart)
            ],
          )
        ],
      ),
    ),
  );
}
