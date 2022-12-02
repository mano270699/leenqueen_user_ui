import 'package:get/get.dart';

import '../controllers/MyPlan_controller.dart';

class MyPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyPlanController());
  }
}
