import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:leenqueen_user/utils/colors.dart';

import '../../../../../utils/widgets/custom_text.dart';

class StoreController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Color tabColer = ColorsUtils.PRIMARY;
  var isPlan = true.obs;
  var isReadyToCart = false.obs;
  var cannotDecrement = false.obs;
  var itemCounte = 1.obs;
  late TabController tabController;

  void increment() {
    if (itemCounte.value >= 1) {
      cannotDecrement.value = false;
      itemCounte.value += 1;
    }
  }

  void decrement() {
    if (itemCounte > 1) {
      itemCounte.value -= 1;
    } else if (itemCounte.value == 1) {
      cannotDecrement.value = true;
      print("cannot decrement");
    }
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
