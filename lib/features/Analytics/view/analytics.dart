import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';
import '../../home_screen/view/home_screen.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppColor.appMainColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 280.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.r), // Adjust as needed
                      bottomRight: Radius.circular(15.r), // Adjust as needed
                    ),
                    color: AppColor.whiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.10,
                        child: InkWell(
                          onTap: () {
                            Get.to(HomeScreen(),
                                transition: Transition.leftToRightWithFade);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20.sp,
                            color: AppColor.headingColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.05,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Analytics",
                            style: TextStyle(
                                fontSize: 16.sp, color: AppColor.headingColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                        Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Student Name: ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          Text(
                            'Sunder ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-Regular",
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                        Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Student Age: ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          Text(
                            '14',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-Regular",
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                        Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'District: ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          Text(
                            'Chennai',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-Regular",
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                    Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w, right: 8.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text('No. of Games Played ',
                          style: TextStyle(
                          color: AppColor.darkGreyColor,
                          fontFamily: "Poppins-SemiBold",
                          fontSize: 12.sp),
                    ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                '3-3-3: 20',
                                style: TextStyle(
                                    color: AppColor.headingColor,
                                    fontFamily: "Poppins-SemiBold",
                                    fontSize: 12.sp),
                              ),
                              Spacer(),
                              Text(
                                '3-6-3: 15',
                                style: TextStyle(
                                    color: AppColor.headingColor,
                                    fontFamily: "Poppins-Regular",
                                    fontSize: 12.sp),
                              ),
                             Spacer(),
                              Text(
                                'Cycle: 10',
                                style: TextStyle(
                                    color: AppColor.headingColor,
                                    fontFamily: "Poppins-Regular",
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                    Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w, right: 8.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text('Best Records',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                '3-3-3: 00:10',
                                style: TextStyle(
                                    color: AppColor.headingColor,
                                    fontFamily: "Poppins-SemiBold",
                                    fontSize: 12.sp),
                              ),
                              Spacer(),
                              Text(
                                '3-6-3: 00:08',
                                style: TextStyle(
                                    color: AppColor.headingColor,
                                    fontFamily: "Poppins-Regular",
                                    fontSize: 12.sp),
                              ),
                              Spacer(),
                              Text(
                                'Cycle: 00:20',
                                style: TextStyle(
                                    color: AppColor.headingColor,
                                    fontFamily: "Poppins-Regular",
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBarWidget(
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
