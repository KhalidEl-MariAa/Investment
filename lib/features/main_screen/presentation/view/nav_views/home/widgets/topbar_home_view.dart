import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/carousel_slider_offers.dart';

class TopbarHomeView extends StatelessWidget {
  const TopbarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       CarouselSliderOffers(),
       Padding(
         padding:  EdgeInsets.only(left:10.w ,right: 10.w,bottom: 15.h),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('New Arrivals 🔥', style: Styles.santosh15W700.copyWith(color: AppColors.black),),
          Text('See All', style: Styles.santosh12W400.copyWith(color: AppColors.primaryColor),),  
          ],
         ),
       ),
       SizedBox(
        height: 0.377.sh,
         child: GridView.builder(
          // physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.w
          ), 
         itemBuilder: (context, index) => Container(
          color:Colors.red,
         height: 150,
         ),),
       )
      ],
    );
  }
}
