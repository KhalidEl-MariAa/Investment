
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/core/utils/screen_names.dart';
import 'package:investment/features/otp_screen/presentation/view/otp_screen.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/custom_elevatedbutton.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/custom_textfield.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/password_textfield.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
            'Create an account',
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
                    'Begin with creating new free account. This helps you keep your shopping way easier.',
                    textAlign: TextAlign.center,
                    style: Styles.santosh15W400.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
                CustomTextfield(hintText: 'Full Name', icon: Icons.person),
                SizedBox(height: 10.h),
                CustomTextfield(hintText: 'Email', icon: Icons.email),
                SizedBox(height: 10.h),
                CustomTextfield(hintText: 'Phone', icon: Icons.phone),
                SizedBox(height: 10.h),
                PasswordTextfield(
                  hintText: 'Password',
                  icon: Icons.lock,
                  seePassAdvices: true,
                ),
                SizedBox(height: 10.h),
                PasswordTextfield(
                  hintText: 'Confirm Password',
                  icon: Icons.lock,
                  seePassAdvices: false,
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SizedBox(
                    width: double.infinity,
                    child: CustomElevatedbutton(
                      onPressed: () {
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(resetPass: false,)));
                      },
                      backgroundColor: AppColors.primaryColor,
                      borderColor: AppColors.black,
                      child: Text(
                        'Create an account',
                        style: Styles.santosh15W700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: CustomElevatedbutton(
                    onPressed: () {
                      
                    },
                    backgroundColor: Colors.white, borderColor: AppColors.black, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Container(
                      height: 25.sp,
                      width: 25.sp,
                      decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/google.png',), fit: BoxFit.contain)
                     ),),
                     Text('  Sign up with Google', style: Styles.santosh15W700.copyWith(color: AppColors.black),)
                    ],
                  )),
                ),
                 CustomElevatedbutton(
                  onPressed: () {
                    
                  },
                  backgroundColor: Colors.white, borderColor: AppColors.black, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                    height: 30.w,
                    width: 30.w,
                    decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/Facebook1.png',), fit: BoxFit.contain)
                   ),),
                   Text('  Sign up with Facebook', style: Styles.santosh15W700.copyWith(color: AppColors.black),)
                  ],
                )),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    'or',
                    style: Styles.santosh15W400.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: Styles.santosh12W400.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      GestureDetector(
                        onTap: () {
                          
                          Navigator.pushNamed(context, ScreenNames.login);
                        },
                        child: Text(
                          'Login',
                          style: Styles.santosh12W700.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                SizedBox(height: 1.5.h),
                // SizedBox(height: 20.h),
                // Text(
                //   'By continuing, you agree to our',
                //   style: Styles.santosh15W400.copyWith(
                //     color: AppColors.black,
                //     fontSize: 12.sp,
                //   ),
                // ),
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
