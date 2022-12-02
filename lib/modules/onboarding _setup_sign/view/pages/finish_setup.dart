import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/custom_text.dart';
import '../../controllers/OnbordingSignSetUp_controller.dart';

class FinishSetup extends StatefulWidget {
  const FinishSetup({Key? key}) : super(key: key);

  @override
  State<FinishSetup> createState() => _FinishSetupState();
}

class _FinishSetupState extends State<FinishSetup>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    setRotation();
    animationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        await Future.delayed(const Duration(seconds: 2));
        Get.toNamed(AppPages.HomeLayoutPage);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  setRotation() {
    final angle = 180 * pi / 180;
    animation =
        Tween<double>(begin: 0, end: angle).animate(animationController);

    animationController.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.WHITE,
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetsImage.finishSetup),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) => Transform.rotate(
                    angle: animation.value,
                    child: Image.asset(
                      AssetsImage.logo,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: "You are all setup!",
                fontSize: 28.sp,
                fontColor: ColorsUtils.BLACK,
                fontAlign: TextAlign.center,
                customFontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text:
                    "Explore our delicios recipies and personalised mealplans.",
                fontSize: 16.sp,
                fontColor: ColorsUtils.BLACK,
                fontAlign: TextAlign.center,
                customFontWeight: FontWeight.w400,
              ),
            ],
          ),
        ));
  }
}
