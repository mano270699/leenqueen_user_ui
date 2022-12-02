import 'package:get/get.dart';

import '../controllers/signIn_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}
