import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hintText, required this.icon});
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return    TextFormField(
                decoration: InputDecoration(
                  hintText:hintText,
                  hintStyle: Styles.santosh15W400.copyWith(color: AppColors.black,fontSize: 13.sp),
                  prefixIcon: Icon(icon, color: AppColors.primaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: AppColors.primaryColor),
                  ),
                ),
              );
  }
}