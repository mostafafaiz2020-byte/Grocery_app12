// widgets/5_product_item.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/model/product_model.dart';

class Exclusive extends StatelessWidget {
  ProductModel productModel;

  Exclusive({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, right: 15, left: 15, bottom: 15),
      width: 173,

      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productModel.image,
            height: 80,
            width: double.infinity,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 15),

          Text(
            productModel.titel,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),

          Text(
            productModel.descripion,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),

          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ${productModel.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              Container(
                padding: const EdgeInsets.all(14),

                decoration: BoxDecoration(
                  color: const Color(0xff53B175),
                  borderRadius: BorderRadius.circular(18),
                ),

                child: const Icon(Icons.add, color: Colors.white, size: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
