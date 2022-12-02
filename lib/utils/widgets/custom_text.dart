import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/constants.dart';

import '../colors.dart';

/*
   CustomText is a common widget for Text which takes some parameters .
   */
class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final bool? fontWeight;
  final FontWeight? customFontWeight;
  final Color? fontColor;
  final TextAlign? fontAlign;
  final bool? hasUnderLineBorder;
  const CustomText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.fontColor,
      this.fontAlign,
      this.customFontWeight,
      this.hasUnderLineBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: fontAlign ?? TextAlign.start,
        style: TextStyle(
            fontFamily: Constants.fontFamily,
            decoration: hasUnderLineBorder == true
                ? TextDecoration.underline
                : TextDecoration.none,
            color: fontColor ?? ColorsUtils.TEXT_FEILD_STYLE,
            fontSize: fontSize ?? 12.sp,
            fontWeight: customFontWeight ??
                (fontWeight == true ? FontWeight.bold : FontWeight.normal)));
  }
}
