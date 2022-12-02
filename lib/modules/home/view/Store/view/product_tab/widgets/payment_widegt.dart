import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

class SelecteProductPaymentMethodItem extends StatelessWidget {
  SelecteProductPaymentMethodItem(
      {super.key, required this.icon, required this.text});
  String icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorsUtils.WHITE,
        borderRadius: BorderRadius.circular(22),
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
          children: [
            Image.asset(icon),
            CustomText(
              text: "$text",
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
