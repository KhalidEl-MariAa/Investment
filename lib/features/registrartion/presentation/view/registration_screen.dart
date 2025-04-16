import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/utils/const.dart';

class RegistrartionScreen extends StatelessWidget {
  const RegistrartionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/gifs/buildings2.gif'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children:[ Text('Welcome to SEMSARI',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text('Join us now to become one of the owners at the lowest prices.',
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 5.h,bottom: 10.h),
              child: SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {
                  
                }, child: Text('Create an account',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 3.w,),
                 Text('Login',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
            ]
          ),
        ),
      ),
    ));
  }
}