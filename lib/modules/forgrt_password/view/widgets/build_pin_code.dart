import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCode extends StatelessWidget {
  CustomPinCode(
      {super.key, required this.onChanged, required this.onCompleted});
  Function(String) onChanged;
  Function(String) onCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: PinCodeTextField(
        autoFocus: true,
        cursorHeight: 1,
        cursorWidth: 20,
        cursorColor: ColorsUtils.PRIMARY,
        keyboardType: TextInputType.number,
        length: 4,
        obscureText: false,
        textStyle: TextStyle(
            fontFamily: Constants.fontFamily,
            color: ColorsUtils.PRIMARY,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400),
        animationType: AnimationType.scale,
        enablePinAutofill: true,
        boxShadows: const [
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.black12,
            blurRadius: 2,
          )
        ],
        animationCurve: Curves.easeInCirc,
        pinTheme: PinTheme(
          fieldOuterPadding: EdgeInsets.zero,
          borderRadius: BorderRadius.circular(8),
          shape: PinCodeFieldShape.box,
          fieldHeight: 61,
          fieldWidth: 54,
          borderWidth: 1,
          activeColor: ColorsUtils.PRIMARY,
          inactiveColor: ColorsUtils.BLACK,
          inactiveFillColor: ColorsUtils.WHITE,
          activeFillColor: ColorsUtils.WHITE,
          selectedColor: ColorsUtils.PRIMARY,
          errorBorderColor: Colors.red,
          selectedFillColor: ColorsUtils.WHITE,
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: ColorsUtils.WHITE,
        enableActiveFill: true,
        onCompleted: onCompleted,
        onChanged: onChanged,
        appContext: context,
      ),
    );
  }
}
