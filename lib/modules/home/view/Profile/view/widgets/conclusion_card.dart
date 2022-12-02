import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import 'add_btn.dart';

class ConclusionCardItem extends StatelessWidget {
  ConclusionCardItem(
      {super.key,
      required this.icon,
      required this.title,
      this.isHasBtn = false,
      this.recommandedDesc});
  String title;
  String? recommandedDesc;
  String icon;
  Function()? onTap;
  bool isHasBtn;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: ColorsUtils.WHITE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Image.asset(icon),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                    fontSize: 16.sp,
                    fontColor: ColorsUtils.BLACK,
                    customFontWeight: FontWeight.w500,
                  ),
                  recommandedDesc != null
                      ? CustomText(
                          text: recommandedDesc!,
                          fontSize: 12.sp,
                          fontColor: ColorsUtils.HINT_COLOR,
                          customFontWeight: FontWeight.w400,
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
          isHasBtn
              ? Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: AddBtn(
                    onTap: onTap,
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
