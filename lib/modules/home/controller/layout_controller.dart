import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Feed/view/feed_view.dart';
import 'package:leenqueen_user/modules/home/view/My_Plan/binding/MyPlan_binding.dart';
import 'package:leenqueen_user/modules/home/view/My_Plan/view/MyPlan_view.dart';
import 'package:leenqueen_user/modules/home/view/Profile/binding/profile_binding.dart';
import 'package:leenqueen_user/modules/home/view/Profile/view/MeView.dart';
import 'package:leenqueen_user/modules/home/view/Store/binding/Store_binding.dart';
import 'package:leenqueen_user/modules/home/view/Store/view/Store_view.dart';
import 'package:leenqueen_user/routes/app_pages.dart';

import '../view/Feed/binding/feed_binding.dart';
import '../view/Group/binding/group_binding.dart';
import '../view/Group/view/chat_view.dart';

class LayoutController extends GetxController {
  RxInt currentIndex = 2.obs;

  var pageController = PageController().obs;

  void changePage(int index) {
    currentIndex.value = index;
    update();
    Get.offAndToNamed(
      screens[index],
      id: 1,
    );
  }

  // List<BottomNavigationBarItem> bottomItem = [
  //   BottomNavigationBarItem(
  //     icon: Image.asset(
  //       AssetsImage.discover,
  //       width: 24.w,
  //       height: 24.w,
  //       color: currentIndex.value == 0
  //           ? ColorsUtils.PRIMARY
  //           : ColorsUtils.HINT_COLOR,
  //     ),
  //     label: "Feed",
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Image.asset(
  //       AssetsImage.profileUser,
  //       width: 24.w,
  //       height: 24.w,
  //       color: currentIndex.value == 1
  //           ? ColorsUtils.PRIMARY
  //           : ColorsUtils.HINT_COLOR,
  //     ),
  //     label: "Group",
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Image.asset(
  //       AssetsImage.me,
  //       width: 24.w,
  //       height: 24.w,
  //       color: currentIndex.value == 2
  //           ? ColorsUtils.PRIMARY
  //           : ColorsUtils.HINT_COLOR,
  //     ),
  //     label: "Me",
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Image.asset(
  //       AssetsImage.documentText,
  //       width: 24.w,
  //       height: 24.w,
  //       color: currentIndex.value == 3
  //           ? ColorsUtils.PRIMARY
  //           : ColorsUtils.HINT_COLOR,
  //     ),
  //     label: "MyPlan",
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Obx(
  //       () => Image.asset(
  //         AssetsImage.bag,
  //         width: 24.w,
  //         height: 24.w,
  //         color: currentIndex.value == 4
  //             ? ColorsUtils.PRIMARY
  //             : ColorsUtils.HINT_COLOR,
  //       ),
  //     ),
  //     label: "Store",
  //   ),
  // ];

  List<String> screens = [
    AppPages.FeedPage,
    AppPages.ChatPage,
    AppPages.ProfilePage,
    AppPages.MyPlanPage,
    AppPages.StroePage,
  ];

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppPages.FeedPage)
      return GetPageRoute(
        settings: settings,
        page: () => FeedView(),
        binding: FeedBinding(),
      );

    if (settings.name == AppPages.ChatPage)
      return GetPageRoute(
        settings: settings,
        page: () => ChatView(),
        binding: GroupBinding(),
      );
    if (settings.name == AppPages.ProfilePage)
      return GetPageRoute(
        settings: settings,
        page: () => MeView(),
        binding: ProfileBinding(),
      );
    if (settings.name == AppPages.MyPlanPage)
      return GetPageRoute(
        settings: settings,
        page: () => MyPlanView(),
        binding: MyPlanBinding(),
      );
    if (settings.name == AppPages.StroePage)
      return GetPageRoute(
        settings: settings,
        page: () => StoreView(),
        binding: StoreBinding(),
      );

    return null;
  }

  // animateTo() {
  //   pageController.value.nextPage(
  //     duration: const Duration(
  //       milliseconds: 750,
  //     ),
  //     curve: Curves.fastLinearToSlowEaseIn,
  //   );
  // }

//   animateBack() {
//     pageController.value.previousPage(
//       duration: const Duration(
//         milliseconds: 750,
//       ),
//       curve: Curves.fastLinearToSlowEaseIn,
//     );
//   }

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
