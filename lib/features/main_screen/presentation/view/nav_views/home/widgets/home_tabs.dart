import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
    required this.title,
    required this.border,
    this.borderRadiuss,
    this.color,
    this.titleColor, this.onTap,
  });
  final String title;
  final Border border;
  final BorderRadiusGeometry? borderRadiuss;
  final Color? color;
  final Color? titleColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 0.3.sw,
        padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 5.sp),
        decoration: BoxDecoration(
          color: color,
          border: border,
          borderRadius: borderRadiuss,
        ),
        child: Center(
          child: Text(
            title,
            style: Styles.santosh12W700.copyWith(color: titleColor),
          ),
        ),
      ),
    );
  }
}
