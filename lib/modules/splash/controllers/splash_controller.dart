import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    Future.delayed(const Duration(seconds: 3), () async {
      Get.toNamed(
        AppPages.WELCOME,
      );
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
