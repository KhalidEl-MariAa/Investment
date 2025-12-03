import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.title, required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 300.sp,
            width: 300.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: Styles.santosh25W700.copyWith(
                color: AppColors.primaryColor,
                fontSize: 20.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Styles.santosh15W400.copyWith(
                color: Colors.grey.shade500,
                fontSize: 15.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
