import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/features/register_screen/presentation/view/registration_screen.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

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
              style: Styles.santosh20W400,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text('Join us now to become one of the owners at the lowest prices.',
              textAlign: TextAlign.center,
                style: Styles.santosh15W400
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 5.h,bottom: 10.h),
              child: SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                ), child: Text('Create an account',
                  style: Styles.santosh15W700.copyWith(
                    color: Color.fromARGB(255, 79, 43, 141),
                  ),
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
                    style: Styles.santosh15W400,
                  ),
                  SizedBox(width: 3.w,),
                 Text('Login',
                    style: Styles.santosh15W700
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