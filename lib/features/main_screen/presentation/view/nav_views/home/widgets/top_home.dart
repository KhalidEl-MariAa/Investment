import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';

class TopHome extends StatelessWidget {
  const TopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 27.r,
                        backgroundColor: AppColors.primaryColor,
                        child: CircleAvatar(
                          
                          backgroundColor: AppColors.whiteColor,
                          radius: 25.r,
                          child: Center(child: Icon(FontAwesomeIcons.user,size: 25.sp,color: Colors.grey.shade500,),),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi, Khalid',style: Styles.santosh15W700.copyWith(color: AppColors.black),),
                      // SizedBox(height: 1.h,),
                      Text('Lets go shopping!',style: Styles.santosh12W400.copyWith(color: Colors.grey.shade500,fontSize: 12.sp),),
                    ],
                  )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          
                        },
                        icon: Icon(FontAwesomeIcons.magnifyingGlass, color: AppColors.black, size: 22.sp)),
                      // SizedBox(width: 10.w,),
                      IconButton(
                        onPressed: () {
                          
                        },
                        icon: Stack(
                          children: [
                            Positioned(
                              right: 2.sp,
                              top:2.sp ,
                              child: CircleAvatar(
                                radius: 3.5.r,
                                backgroundColor: Colors.red,
                              ),
                            ),
                            Icon(FontAwesomeIcons.bell, color: AppColors.black, size: 22.sp),
                          ],
                        )),
                    ],
                  )
                ],
              ),
            )  ;
  }
}