import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../../../../../utils/widgets/custom_text.dart';
import '../../../../controllers/Store_controller.dart';

class CartItem extends GetView<StoreController> {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Container(
        height: 105.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsUtils.WHITE,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(1, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetsImage.product_image,
              width: 110.w,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 190.w,
                    child: CustomText(
                      text: "Zero Trear Apricot Jam 180 gm",
                      fontAlign: TextAlign.start,
                      customFontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontColor: ColorsUtils.BLACK,
                    ),
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "120 EGP",
                        fontAlign: TextAlign.start,
                        customFontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        fontColor: ColorsUtils.PRIMARY,
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      Container(
                        height: 24.h,
                        width: 90.w,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: ColorsUtils.GRAY_3.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetsImage.delete_icon,
                            ),
                            Obx(
                              () => CustomText(
                                text: controller.itemCounte.value.toString(),
                                fontAlign: TextAlign.start,
                                customFontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                fontColor: ColorsUtils.PRIMARY,
                              ),
                            ),
                            InkWell(
                              onTap: (() => controller.increment()),
                              child: Icon(
                                Icons.add,
                                color: ColorsUtils.PRIMARY,
                                size: 18.sp,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
