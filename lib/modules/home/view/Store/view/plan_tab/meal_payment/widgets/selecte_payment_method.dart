import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

class SelectePaymentMethodItem extends StatelessWidget {
  const SelectePaymentMethodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.h,
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
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AssetsImage.visa_icon),
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
    );
  }
}
