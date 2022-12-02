import 'package:get/get.dart';

import '../controllers/Group_controller.dart';

class GroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GroupController());
  }
}
