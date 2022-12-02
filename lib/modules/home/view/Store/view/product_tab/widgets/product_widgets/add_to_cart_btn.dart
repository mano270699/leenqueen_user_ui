import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../controllers/Store_controller.dart';

class AddToCartBtn extends GetView<StoreController> {
  AddToCartBtn({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.h,
      width: 325.w,
      child: Stack(
        children: [
          Container(
            height: 57.h,
            width: 320.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: ColorsUtils.PRIMARY,
            ),
            child: InkWell(
              onTap: (() {
                Get.toNamed(AppPages.CartPage);
                //go to cart
              }),
              child: Center(
                child: CustomText(
                  text: text,
                  fontSize: 14.sp,
                  fontColor: ColorsUtils.WHITE,
                  customFontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            left: -3.w,
            top: 0,
            bottom: 0,
            child: InkWell(
              onTap: (() {
                controller.decrement();
              }),
              child: Container(
                height: 55.h,
                width: 55.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: ColorsUtils.incrementsColor),
                child: Center(
                  child: Obx(
                    () => Icon(Icons.remove,
                        size: 30.sp,
                        color: controller.cannotDecrement.value
                            ? ColorsUtils.HINT_COLOR
                            : ColorsUtils.PRIMARY),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -3.w,
            top: 0,
            bottom: 0,
            child: InkWell(
              onTap: (() {
                controller.increment();
              }),
              child: Container(
                height: 55.h,
                width: 55.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: ColorsUtils.incrementsColor),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: ColorsUtils.PRIMARY,
                    size: 30.sp,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
