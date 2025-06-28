
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';
import 'package:investment/features/main_screen/presentation/view/nav_views/home/widgets/home_tabs.dart';

class SalesSection extends StatefulWidget {
  const SalesSection({super.key});

  @override
  State<SalesSection> createState() => _SalesSectionState();
}

int index = 0;

class _SalesSectionState extends State<SalesSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeTabs(
                onTap: () {
                  if(index!=0){
                  setState(() {
                    index=0;
                  });
                  }
                },
                color: index == 0 ? AppColors.primaryColor : AppColors.whiteColor,
                titleColor:
                    index == 0 ? AppColors.whiteColor : AppColors.primaryColor,
                title: 'All',
                border: Border.all(color: AppColors.primaryColor),
                borderRadiuss: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  topLeft: Radius.circular(10.r),
                ),
              ),
              HomeTabs(
                onTap: () {
                  if(index!=1){
                  setState(() {
                    index=1;
                  });
                  }
                },
                color: index == 1 ? AppColors.primaryColor : AppColors.whiteColor,
                titleColor:
                    index == 1 ? AppColors.whiteColor : AppColors.primaryColor,
                title: 'Apartments',
                border: Border(
                  top: BorderSide(color: AppColors.primaryColor),
                  bottom: BorderSide(color: AppColors.primaryColor),
                  right: BorderSide(color: AppColors.primaryColor),
                ),
              ),
              HomeTabs(
                onTap: () {
                  if(index!=2){
                    
                  setState(() {
                    index=2;
                  });
                  }
                },
                color: index == 2 ? AppColors.primaryColor : AppColors.whiteColor,
                titleColor:
                    index == 2 ? AppColors.whiteColor : AppColors.primaryColor,
                title: 'Lands',
                border: Border(
                  top: BorderSide(color: AppColors.primaryColor),
                  bottom: BorderSide(color: AppColors.primaryColor),
                  right: BorderSide(color: AppColors.primaryColor),
                ),
                borderRadiuss: BorderRadius.only(
                  bottomRight: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            height: 0.52.sh,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Container(
                  height: 0.15.sh,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 0.6.sw,
                              ),
                              child: Text('Luxury Apartment in Downtown ',
                                maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                                style: Styles.santosh12W700.copyWith(
                                  color: AppColors.black,
                                ),),
                            ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on, color: AppColors.primaryColor, size: 15.sp),
                                    SizedBox(width: 5.w),
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: 0.55.sw,
                                      ),
                                      child: Text('Cairo, ALtagamo, Egypt ',
                                      overflow: TextOverflow.ellipsis,
                                        style: Styles.santosh12W400.copyWith(
                                          color: Colors.grey.shade600,
                                        ),),
                                    )
                                  ],
                                ),
                              ),
                              
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 0.6.sw,
                                ),
                                child: Text('500000 EGP',
                                overflow: TextOverflow.ellipsis,
                                  style: Styles.santosh12W700.copyWith(
                                    color: Colors.grey.shade600,
                                  ),),
                              )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0.15.sh,
                        child: Image.asset(index%2==0?'assets/images/room.png':'assets/images/building2.png',
                          // height: 0.1.sh,
                          width: 0.3.sw,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
