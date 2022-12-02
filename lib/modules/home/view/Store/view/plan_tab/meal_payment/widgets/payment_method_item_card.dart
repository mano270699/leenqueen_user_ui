import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

class PaymentMethodItem extends StatelessWidget {
  PaymentMethodItem({super.key, required this.onEditeTap});
  void Function() onEditeTap;
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
                  text: "Payment Method",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontColor: const Color(0xff3B3B3B).withOpacity(0.3),
                ),
                InkWell(
                  onTap: onEditeTap,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AssetsImage.visa_icon),
                SizedBox(
                  width: 5.w,
                ),
                CustomText(
                  text: "2121 6352 8465 ****",
                  fontAlign: TextAlign.start,
                  customFontWeight: FontWeight.w300,
                  fontSize: 14.sp,
                  fontColor: const Color(0xff3B3B3B),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
