import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/features/introduction_screen/presentation/view/widgets/page_view_item.dart';
import 'package:investment/features/register_screen/presentation/view/registration_screen.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}
int index=0;
class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 0.7.sh,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    index=value;
                  });
                },
                children: [
                  PageViewItem(
                    image: 'assets/images/intro1.jpg',
                    title: 'Various Collections Of The Latest Products',
                    subtitle:
                        'Explore a wide range of products from fashion to electronics, all in one place.',
                  ),
                 PageViewItem(image: 'assets/images/intro2.jpg', title: 'Complete Collections Of Colors And Sizes', subtitle: 'Find products in every color and size to suit your style and needs.'),
                  PageViewItem(image: 'assets/images/intro3.jpg', title: 'Find The Most Suitable Outfit For You', subtitle: 'Discover outfits that match your personality and occasion with ease.'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5.sp,
                  backgroundColor:index==0? AppColors.primaryColor:Colors.grey.shade500,
                ),
                SizedBox(width: 3.w),
                CircleAvatar(
                  radius: 5.sp,
                  backgroundColor:index==1? AppColors.primaryColor:Colors.grey.shade500,
                ),
                SizedBox(width: 3.w),

                CircleAvatar(
                  radius: 5.sp,
                  backgroundColor:index==2? AppColors.primaryColor:Colors.grey.shade500,
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize: Size(0.9.sw, 45.h),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  RegistrationScreen()));
                  },
                  child: Text('Create Account', style: Styles.santosh15W700),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Already have an account?',
                  style: Styles.santosh15W400.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
