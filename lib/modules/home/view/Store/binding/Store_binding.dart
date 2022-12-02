import 'package:get/get.dart';

import '../controllers/Store_controller.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StoreController());
  }
}
