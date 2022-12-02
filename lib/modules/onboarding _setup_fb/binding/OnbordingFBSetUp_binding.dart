import 'package:get/get.dart';

import '../controllers/OnbordingFBSetUp_controller.dart';

class OnbordingFBSetUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnbordingFBSetUpController());
  }
}
