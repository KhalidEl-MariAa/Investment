
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderOffers extends StatefulWidget {
  const CarouselSliderOffers({super.key});

  @override
  State<CarouselSliderOffers> createState() => _CarouselSliderOffersState();
}
int activeIndex = 0;
final CarouselSliderController _controller = CarouselSliderController();
List images = [
  'assets/images/sale1.jpg',
  'assets/images/sale2.jpg',
  'assets/images/sale3.jpg',
];

class _CarouselSliderOffersState extends State<CarouselSliderOffers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: 150.h,
           child: CarouselSlider.builder(
              carouselController: _controller,
              itemCount: images.length,
              itemBuilder:
                  (context, index, realIndex) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
                height: 150.h,
                viewportFraction: 0.9,
              ),
            ),
         ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: images.length,
              effect: ColorTransitionEffect(
                activeDotColor: AppColors.primaryColor,
                dotColor: Colors.grey.shade300,
                dotHeight: 7.h,
                dotWidth: 7.w,
              ),
            ),
          ),
      ],
    );
  }
}