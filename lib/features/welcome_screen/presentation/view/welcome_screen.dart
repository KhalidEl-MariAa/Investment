import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/features/introduction_screen/presentation/view/introduction_screen.dart';
import 'package:investment/features/register_screen/presentation/view/registration_screen.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroductionScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        // decoration: BoxDecoration(
        //   image: DecorationImage(image: AssetImage('assets/gifs/buildings2.gif'), fit: BoxFit.cover),
        // ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[ Padding(
              padding:  EdgeInsets.only(top: 0.3.sh),
              child: Column(
                children: [
                  Text('PENTAKON',
                    style: Styles.santosh25W700,
                  ),
                  Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text('Shopping from home',
                textAlign: TextAlign.center,
                  style: Styles.santosh15W400.copyWith(fontSize: 12.sp)
                ),
              )
                ],
              ),
            ),
            
            // Padding(
            //   padding:  EdgeInsets.only(top: 5.h,bottom: 10.h),
            //   child: SizedBox(
            //     width: 1.sw,
            //     child: ElevatedButton(
            //       onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: AppColors.whiteColor,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10.r),
            //       ),
            //       padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
            //     ), child: Text('Create an account',
            //       style: Styles.santosh15W700.copyWith(
            //         color: Color.fromARGB(255, 79, 43, 141),
            //       ),
            //     ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:  EdgeInsets.only(bottom: 15.h),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('Already have an account?',
            //         style: Styles.santosh15W400,
            //       ),
            //       SizedBox(width: 3.w,),
            //      Text('Login',
            //         style: Styles.santosh15W700
            //       ),
            //     ],
            //   ),
            // )
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('Version 1.0.0',
                style: Styles.santosh12W400.copyWith(
                  color: AppColors.whiteColor.withOpacity(0.5),
                ),
              ),
            ),
            ]
          ),
        ),
      ),
    ));
  }
}