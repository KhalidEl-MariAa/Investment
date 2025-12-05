import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/topbar_categories_view.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/topbar_home_view.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}
int topBarIndex = 0;
List <Widget> topBarViews = [
  const TopbarHomeView(),
  const TopbarCategoriesView(),
];
class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
           padding:  EdgeInsets.symmetric(vertical: 20.h),
           child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 0.45.sw,
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            topBarIndex = 0;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5.h),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color:topBarIndex==0? AppColors.primaryColor:AppColors.whiteColor,
                                width: 2.h,
                              ),
                            ),
                          ),
                          width: 120.w,
                          child: Center(child: Text('Home',style: Styles.santosh15W700.copyWith(color:topBarIndex==0? AppColors.black:Colors.grey.shade500),)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 0.45.sw,
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            topBarIndex = 1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5.h),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color:topBarIndex==1? AppColors.primaryColor:AppColors.whiteColor,
                                width: 2.h,
                              ),
                            ),
                          ),
                          width: 120.w,
                          child: Center(child: Text('Categories',style: Styles.santosh15W700.copyWith(color:topBarIndex==1? AppColors.black:Colors.grey.shade500),)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
         ),
            topBarViews[topBarIndex],
      ],
    );
  }
}