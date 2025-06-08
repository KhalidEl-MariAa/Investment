import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedbutton extends StatelessWidget {
  const CustomElevatedbutton({
    super.key,
    required this.child,
    this.onPressed,
    required this.backgroundColor,
    required this.borderColor,
    this.borderRadius,
    this.paddingVertical,
    this.paddingHorizontal,
  });
  final Widget child;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final double? borderRadius;
  final double? paddingVertical;
  final double? paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: paddingVertical ?? 20.h,
          horizontal: paddingHorizontal ?? 0,
        ),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          side: BorderSide(color: borderColor),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
