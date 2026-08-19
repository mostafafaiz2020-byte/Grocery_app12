// screens/5-Shop.dart
import 'package:flutter/material.dart';

import '../widgets/shop_header.dart';
import '../widgets/shop_search.dart';
import '../widgets/section_title.dart';
import '../widgets/shop_banner_slider.dart';
import '../widgets/products_grid.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<String> bannerImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOugGlF2Qd8mRk1r5kNeF84gL40_E8uW_GFsy-zerFWQ&s=10",
    "https://www.shutterstock.com/image-photo/full-grocery-bag-smartphone-blank-260nw-2230311385.jpg",
    "https://t3.ftcdn.net/jpg/19/91/86/40/360_F_1991864009_MfAWQ2BGnP6vF0WUiI0Q4Jv3yF7ap3nk.jpg",
    "https://teamtweaks1-blog.s3.us-east-2.amazonaws.com/blog/wp-content/uploads/2023/03/16062712/TT-Best-grocery-app-development-companies-2023.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                ShopHeader(),
                SizedBox(height: 20),
                SearchStore(),
                SizedBox(height: 20),

                ShopBannerSlider(images: bannerImages),
                SizedBox(height: 30),

                SectionTitle(title: 'Exclusive Offer'),
                SizedBox(height: 20),

                ProductsGrid(),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
