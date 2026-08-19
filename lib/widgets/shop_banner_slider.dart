// widgets/shop_banner_slider.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopBannerSlider extends StatefulWidget {
  List<String> images;

  ShopBannerSlider({required this.images});

  @override
  State<ShopBannerSlider> createState() => _ShopBannerSliderState();
}

class _ShopBannerSliderState extends State<ShopBannerSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 119,
            autoPlay: true,
            viewportFraction: 1,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: [
            for (var img in widget.images)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: widget.images.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xff53B175),
              dotColor: Colors.white,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 4,
            ),
          ),
        ),
      ],
    );
  }
}
