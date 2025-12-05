import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/home_box.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/sales_section.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/top_bar.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/top_home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.whiteColor,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey.shade400,
          selectedLabelStyle: Styles.santosh12W700,
          unselectedLabelStyle: Styles.santosh12W400,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidHome),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 221, 191, 253),
        //   actions: [
        //     Icon(Icons.notifications, color: Colors.black, size: 22.sp),
        //     SizedBox(width: 5.w),
        //     Icon(Icons.search, color: Colors.black, size: 22.sp),
        //   ],
        //   title: Image.asset('assets/images/logo_nobg.png', height: 60.h),
        // ),
        body: Column(
          children: [
            TopHome(),
           TopBar()
          ],
        ) ,
        // body: Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
        //   child: Column(
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           HomeBox(title:'Lands' , imagePath: 'assets/images/land.jpeg'),
        //           HomeBox(title:'apartments' , imagePath: 'assets/images/building3.jpeg'),
                
        //         ],
        //       ),
        //       SalesSection(),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
