import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leenqueen_user/utils/constants.dart';

import '../colors.dart';

/*
  a common widget which is CustomRoundedButton it takes button title , its Functionality and its style
   */
class CustomRoundedButton extends StatelessWidget {
  String? text;
  Function()? pressed;
  Color? backgroundColor;
  Color? textColor;
  Color? borderColor;
  Icon? icon;
  double? elevation;
  double textSize;
  BorderRadiusGeometry? borderRadius;
  EdgeInsetsGeometry? padding;
  // double? width;

  CustomRoundedButton(
      {this.pressed,
      this.text,
      this.backgroundColor,
      this.borderColor,
      this.icon,
      this.textColor,
      this.elevation = 0.0,
      this.borderRadius,
      this.padding,
      this.textSize = 12
      // this.width
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              padding ?? EdgeInsets.symmetric(vertical: 15.h)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(30.0),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        onPressed: pressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              style: TextStyle(
                  color: textColor,
                  fontFamily: Constants.fontFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenUtil().setSp(textSize)),
            ),
            SizedBox(
              width: 10.w,
            ),
            (icon == null)
                ? const SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      icon!,
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  String text;
  Function()? pressed;
  Color? backgroundColor;
  Color? textColor;
  double textSize;
  Color? borderColor;
  String? icon;
  double? elevation;
  BorderRadiusGeometry? borderRadius;
  EdgeInsetsGeometry? padding;
  FontWeight fontWeight;
  // double? width;

  CustomOutlinedButton({
    this.pressed,
    required this.text,
    this.textSize = 14,
    this.backgroundColor,
    this.borderColor,
    this.icon,
    this.textColor,
    this.elevation = 0.0,
    this.borderRadius,
    this.padding,
    this.fontWeight = FontWeight.w500,
    // this.width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: width,
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
              color: borderColor ?? ColorsUtils.PRIMARY,
              width: 1.2,
              style: BorderStyle.solid)),
          padding: MaterialStateProperty.all(
              padding ?? EdgeInsets.symmetric(vertical: 15.h)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(28),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        onPressed: pressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (icon == null)
                ? const SizedBox()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        icon!,
                        height: 20.0,
                        width: 20.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
            Text(
              text,
              style: TextStyle(
                  color: textColor,
                  fontFamily: Constants.fontFamily,
                  fontWeight: fontWeight,
                  fontSize: ScreenUtil().setSp(textSize)),
            ),
          ],
        ),
      ),
    );
  }
}
