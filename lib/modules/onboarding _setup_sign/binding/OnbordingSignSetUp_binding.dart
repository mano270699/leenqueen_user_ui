import 'package:get/get.dart';

import '../controllers/OnbordingSignSetUp_controller.dart';

class OnbordingSignSetUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnbordingSignSetUpController());
  }
}
