// widgets/products_grid.dart
import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: 173 / 248,
      children: [
        ProductCard(
          imagePath: "assets/images/product-image.png",
          title: "Organic Bananas",
          subtitle: "7pcs, Priceg",
          price: "\$4.99",
        ),
        ProductCard(
          imagePath: "assets/images/pngfuel 1 (2).png",
          title: "Red Apple",
          subtitle: "1kg, Priceg",
          price: "\$4.99",
        ),
        ProductCard(
          imagePath: "assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (3).png",
          title: "Organic Tomato",
          subtitle: "1kg, Priceg",
          price: "\$3.99",
        ),
        ProductCard(
          imagePath: "assets/images/pngfuel3.png",
          title: "Sweet Orange",
          subtitle: "1kg, Priceg",
          price: "\$5.99",
        ),
      ],
    );
  }
}
