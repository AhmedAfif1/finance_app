import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/Features/home_page/widgets/card_item.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndixPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: .7,
            enlargeFactor: .05,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndixPage = index;
              });
            },
          ),
          items: [CardItem(), CardItem(), CardItem()],
        ),
        HeightSpacing(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndixPage.toDouble(),
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4),
            color: Color(0xffE3E9ED),
            size: const Size.square(9),
            activeSize: const Size(18, 9),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
