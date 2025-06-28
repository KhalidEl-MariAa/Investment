import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';

class HomeBox extends StatelessWidget {
  const HomeBox({super.key, required this.title, required this.imagePath});
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
   
        return Stack(
                      children: [
                        Container(
                          height: 0.2.sh,
                          width: 0.45.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image:  DecorationImage(
                              image: AssetImage(imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 0.05.sh,
                            width: 0.46.sw,
                            color: AppColors.black.withOpacity(0.7),
                            child: Center(
                              child: Text(
                                title,
                                style: Styles.santosh15W700.copyWith(
                                  color: AppColors.whiteColor,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
  }
}