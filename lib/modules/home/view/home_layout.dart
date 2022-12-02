import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/constants.dart';

import '../../../utils/image_manager.dart';
import '../controller/layout_controller.dart';

class HomeLayout extends GetView<LayoutController> {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody:
          true, // Important: to remove background of bottom navigation (making the bar transparent doesn't help)
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33.0), // adjust to your liking
            topRight: Radius.circular(33.0), // adjust to your liking
          ),
          color: ColorsUtils.WHITE, // put the color here
        ),
        child: Obx(
          () => BottomNavigationBar(
            unselectedLabelStyle: TextStyle(
                fontFamily: Constants.fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp),
            selectedLabelStyle: TextStyle(
                fontFamily: Constants.fontFamily,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            iconSize: 24.w,
            selectedItemColor: ColorsUtils.PRIMARY,
            unselectedItemColor: ColorsUtils.HINT_COLOR,
            selectedIconTheme: const IconThemeData(color: ColorsUtils.PRIMARY),
            unselectedIconTheme:
                const IconThemeData(color: ColorsUtils.HINT_COLOR),
            onTap: (value) {
              controller.changePage(value);
              print(value);
            },
            selectedFontSize: 12.sp,
            currentIndex: controller.currentIndex.value,
            backgroundColor: ColorsUtils.WHITE,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsImage.discover,
                  width: 24.w,
                  height: 24.w,
                  color: controller.currentIndex.value == 0
                      ? ColorsUtils.PRIMARY
                      : ColorsUtils.HINT_COLOR,
                ),
                label: "Feed",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsImage.profileUser,
                  width: 24.w,
                  height: 24.w,
                  color: controller.currentIndex.value == 1
                      ? ColorsUtils.PRIMARY
                      : ColorsUtils.HINT_COLOR,
                ),
                label: "Group",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsImage.me,
                  width: 24.w,
                  height: 24.w,
                  color: controller.currentIndex.value == 2
                      ? ColorsUtils.PRIMARY
                      : ColorsUtils.HINT_COLOR,
                ),
                label: "Me",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AssetsImage.documentText,
                  width: 24.w,
                  height: 24.w,
                  color: controller.currentIndex.value == 3
                      ? ColorsUtils.PRIMARY
                      : ColorsUtils.HINT_COLOR,
                ),
                label: "My Plan",
              ),
              BottomNavigationBarItem(
                icon: Obx(
                  () => Image.asset(
                    AssetsImage.bag,
                    width: 24.w,
                    height: 24.w,
                    color: controller.currentIndex.value == 4
                        ? ColorsUtils.PRIMARY
                        : ColorsUtils.HINT_COLOR,
                  ),
                ),
                label: "Store",
              ),
            ],
          ), // don't forget to put it
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: AppPages.ProfilePage,
        onGenerateRoute: controller.onGenerateRoute,
      ),
    );
  }
}
