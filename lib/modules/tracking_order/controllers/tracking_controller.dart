import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

class TrackingController extends GetxController {
  var curStep = 2.obs;

  Widget viewImage() {
    if (curStep.value == 2) {
      return imageStatusView[0];
    } else if (curStep.value == 3) {
      return imageStatusView[1];
    } else if (curStep.value == 4) {
      return imageStatusView[2];
    } else if (curStep.value == 5) {
      return imageStatusView[3];
    } else {
      return const SizedBox();
    }
  }

  List<Widget> imageStatusView = [
    Image.asset(AssetsImage.order_placed),
    Image.asset(AssetsImage.prepared),
    Image.asset(AssetsImage.onRoad),
    Image.asset(AssetsImage.order_deliverd),
  ];
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
