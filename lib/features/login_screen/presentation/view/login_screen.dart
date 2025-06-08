
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/core/utils/screen_names.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/custom_elevatedbutton.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/custom_textfield.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/password_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          elevation: 0,
          shadowColor: AppColors.whiteColor,
          backgroundColor: AppColors.whiteColor,
          title: Text(
            'Login to your account',
            style: Styles.santosh15W700.copyWith(color: AppColors.primaryColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    'Welcome back! Please login to your account.',
                    textAlign: TextAlign.center,
                    style: Styles.santosh15W400.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
                
                CustomTextfield(hintText: 'Phone', icon: Icons.phone),
                SizedBox(height: 10.h),
                PasswordTextfield(
                  hintText: 'Password',
                  icon: Icons.lock,
                  seePassAdvices: true,
                ),
                SizedBox(height: 5.h),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text( 'Forgot Password?',
                      style: Styles.santosh15W400.copyWith(
                        color: AppColors.black,
                        fontSize: 10.sp,
                      )),
                ),
                SizedBox(height: 20.h),
              
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SizedBox(
                    width: double.infinity,
                    child: CustomElevatedbutton(
                      onPressed: () {
                        
                        Navigator.pushNamed(context, ScreenNames.otp);
                      },
                      backgroundColor: AppColors.primaryColor,
                      borderColor: AppColors.black,
                      child: Text(
                        'Login',
                        style: Styles.santosh15W700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    'or',
                    style: Styles.santosh15W400.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: Styles.santosh15W400.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        'Register',
                        style: Styles.santosh15W700.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                SizedBox(height: 3.h),
                // SizedBox(height: 20.h),
                Text(
                  'By continuing, you agree to our',
                  style: Styles.santosh15W400.copyWith(
                    color: AppColors.black,
                    fontSize: 12.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: Text(
                    'Terms and Services',
                    style: Styles.santosh15W700.copyWith(
                      color: AppColors.black,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
