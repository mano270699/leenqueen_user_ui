import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

class DeliveryMethodItem extends StatelessWidget {
  const DeliveryMethodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.h,
      decoration: BoxDecoration(
        color: ColorsUtils.WHITE,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Delivery Address ",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontColor: const Color(0xff3B3B3B).withOpacity(0.3),
                ),
                InkWell(
                  onTap: (() {
                    // Get.toNamed(AppPages.ChooseMealPaymentMethodPage);
                  }),
                  child: CustomText(
                    text: "Edit",
                    fontAlign: TextAlign.start,
                    customFontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.PRIMARY,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(AssetsImage.location),
                SizedBox(
                  width: 5.w,
                ),
                CustomText(
                  text: "9 Mostafa El-Nahas, Nasr City",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w300,
                  fontSize: 14.sp,
                  fontColor: ColorsUtils.BLACK,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
