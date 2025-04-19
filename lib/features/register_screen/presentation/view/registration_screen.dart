import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/custom_elevatedbutton.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Create an account',
            style: Styles.santosh15W700.copyWith(
              color: Color.fromARGB(255, 79, 43, 141),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Text(
                  'Begin with creating new free account. This helps you keep your investing way easier.',
                  textAlign: TextAlign.center,
                  style: Styles.santosh15W400.copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    backgroundColor: const Color.fromARGB(255, 79, 43, 141),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Text(
                    'Continue with email',
                    style: Styles.santosh15W700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Text(
                  'or',
                  style: Styles.santosh15W400.copyWith(color: Colors.black),
                ),
              ),
              CustomElevatedbutton(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Facebook.png',
                      width: 25.w,
                      height: 25.h,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Continue with facebook',
                      style: Styles.santosh15W700.copyWith(color: Colors.black),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
                borderColor: Colors.grey,
               
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: CustomElevatedbutton(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Google.png',
                        width: 25.w,
                        height: 25.h,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'Continue with google',
                        style: Styles.santosh15W700.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ), backgroundColor: Colors.transparent, borderColor: Colors.grey)
              ),
              Spacer(),
              SizedBox(height: 20.h),
              Text(
                'By continuing, you agree to our',
                style: Styles.santosh15W400.copyWith(
                  color: Colors.black,
                  fontSize: 12.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Text(
                  'Terms and Services',
                  style: Styles.santosh15W700.copyWith(
                    color: Colors.black,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
