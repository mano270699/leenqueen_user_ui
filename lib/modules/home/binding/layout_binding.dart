import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/controller/layout_controller.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LayoutController());
  }
}
