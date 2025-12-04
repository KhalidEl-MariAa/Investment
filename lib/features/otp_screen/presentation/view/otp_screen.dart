import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/core/utils/screen_names.dart';
import 'package:investment/features/main_screen/presentation/view/main_screen.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/custom_elevatedbutton.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/custom_textfield.dart';
import 'package:investment/features/register_screen/presentation/view/widgets/password_textfield.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, required this.resetPass});
  final bool resetPass;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
          
          elevation: 0,
          shadowColor: AppColors.whiteColor,
          backgroundColor: AppColors.whiteColor,
          title: Text(
            'Verify your phone number',
            style: Styles.santosh15W700.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric( horizontal: 5.w),
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Text(
                'We just sent 5-digit code to +201061942646, enter it bellow:',
                textAlign: TextAlign.center,
                style: Styles.santosh15W400.copyWith(color: AppColors.black),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20.h),
                child: Pinput(
                 animationCurve: Curves.bounceIn,
                 length: 5,
                 defaultPinTheme: PinTheme(
                   width: 50.w,
                   height: 50.h,
                   textStyle: Styles.santosh15W400.copyWith(
                     color: AppColors.black,
                     fontSize: 20.sp,
                   ),
                   decoration: BoxDecoration(
                     border: Border.all(color: AppColors.primaryColor),
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
                ),
              ),
              SizedBox(
                      width: double.infinity,
                      child: CustomElevatedbutton(
                        onPressed: () {
                          if(resetPass){
                             showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: AppColors.whiteColor,
      context: context,
      builder:
          (context) => Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
              height: 0.5.sh,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Reset Password',
                      style: Styles.santosh25W700.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 18.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h, bottom: 15.h),
                      child: Text(
                        'Create your new password.',
                        style: Styles.santosh15W400.copyWith(
                          color: Colors.grey.shade600,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                    PasswordTextfield(
                      seePassAdvices: true,
                      hintText: 'Password', icon: Icons.password),
                      SizedBox(height: 15.h,),
                      PasswordTextfield(hintText: 'Retype password', icon: Icons.password, seePassAdvices: false,),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Center(
                        child: CustomElevatedbutton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          backgroundColor: AppColors.primaryColor,
                          borderColor: AppColors.black,
                          child: Text('Set Password', style: Styles.santosh15W700),
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
                          else{
                            Navigator.pushNamedAndRemoveUntil(context, ScreenNames.home, (route) => false);
                          }
                          // Navigator.pushNamedAndRemoveUntil(context, ScreenNames.home, (route) => false);
                        },
                        backgroundColor: AppColors.primaryColor,
                        borderColor: AppColors.black,
                        child: Text(
                          'Verify',
                          style: Styles.santosh15W700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 20.h),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn’t receive the code?",
                          style: Styles.santosh12W400.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          'Resend',
                          style: Styles.santosh12W700.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                                        ),
                    ),
            ],
          ),
        ),
    ));
  }
}