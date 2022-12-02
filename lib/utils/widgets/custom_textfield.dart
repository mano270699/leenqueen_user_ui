import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/constants.dart';

import '../colors.dart';

/*
  a common widget which is CustomTextField
   */
// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  String? lablel;
  String? hint;
  String? initialValue;
  Widget? icon;
  Widget? sufficIcon;
  Color? filledColor;
  bool isMobile;
  bool centerText;
  TextEditingController? controller;
  BorderRadius? borderRadius;
  String? errorMessage;
  bool hasPassword;
  bool isEmail;
  bool? passwordIdentical;
  bool isPhoneCode;
  bool isFinal;
  bool isEditable;
  bool isNotes;
  bool readOnly;
  bool hasBorder;
  bool autoFoucs;
  Color lableColor;
  EdgeInsetsGeometry? contentPadding;
  Color hintColor;
  Color? borderColor;
  double? maxWidthSuffixIcon;
  List<TextInputFormatter>? inputFormatters;
  String? Function(String?)? validator;
  void Function(String?)? onFieldSubmitted;
  FocusNode? focusNode;
  int? maxLength;
  TextInputType? textInputType;
  void Function(String)? onChanged;
  CustomTextField(
      {this.icon,
      this.lablel,
      this.hint,
      this.initialValue,
      this.filledColor,
      this.borderColor,
      this.hasBorder = true,
      this.isEditable = true,
      this.isNotes = false,
      this.centerText = false,
      this.isFinal = false,
      this.readOnly = false,
      this.isPhoneCode = false,
      this.isMobile = false,
      this.isEmail = false,
      this.borderRadius,
      this.passwordIdentical,
      this.hasPassword = false,
      this.maxWidthSuffixIcon = double.infinity,
      this.lableColor = Colors.grey,
      this.hintColor = ColorsUtils.HINT_COLOR,
      this.controller,
      this.sufficIcon,
      this.errorMessage,
      this.validator,
      this.onFieldSubmitted,
      this.maxLength,
      this.textInputType,
      this.inputFormatters,
      this.contentPadding,
      this.focusNode,
      this.autoFoucs = false,
      this.onChanged});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = true;

  List<String> codes = ['+20', '+966'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      controller: widget.controller,
      enabled: widget.isEditable,
      inputFormatters: widget.inputFormatters,
      textInputAction: TextInputAction.next,
      cursorColor: ColorsUtils.PRIMARY,
      readOnly: widget.readOnly,
      maxLength: widget.maxLength,
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      autofocus: widget.autoFoucs,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamily: Constants.fontFamily,
        color: Colors.black,
      ),
      initialValue: widget.initialValue,
      obscureText: (widget.hasPassword) ? showPassword : widget.hasPassword,
      maxLines: (widget.isNotes) ? 3 : 1,
      textAlign:
          // (widget.centerText)
          //     ? TextAlign.center
          //     : widget.isPhoneCode
          //         ?
          TextAlign.left
      // : TextAlign.right
      ,
      keyboardType: (widget.isEmail)
          ? TextInputType.emailAddress
          : (widget.isMobile)
              ? TextInputType.phone
              : widget.textInputType ?? TextInputType.text,
      decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: widget.hintColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          counter: const SizedBox(),
          contentPadding: widget.contentPadding ??
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          enabledBorder: (!widget.hasBorder)
              ? InputBorder.none
              : OutlineInputBorder(
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(65.sp),
                  borderSide: BorderSide(
                      color: widget.borderColor ?? ColorsUtils.BORDER_COLOR)),
          disabledBorder: (!widget.hasBorder)
              ? InputBorder.none
              : OutlineInputBorder(
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(65.sp),
                  borderSide: BorderSide(
                      color: widget.borderColor ?? ColorsUtils.BORDER_COLOR)),
          border: (!widget.hasBorder)
              ? InputBorder.none
              : OutlineInputBorder(
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(65.sp),
                  borderSide: BorderSide(
                      color: widget.borderColor ?? ColorsUtils.BORDER_COLOR)),
          focusedBorder: (!widget.hasBorder)
              ? InputBorder.none
              : OutlineInputBorder(
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(65.sp),
                  borderSide: BorderSide(
                      color: widget.borderColor ?? ColorsUtils.BORDER_COLOR)),
          labelText: widget.lablel,
          labelStyle: TextStyle(
              color: widget.lableColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
          prefixIcon: (!widget.isPhoneCode) ? widget.icon : null,
          fillColor: (widget.filledColor == null)
              ? Colors.transparent
              : widget.filledColor,
          filled: true,
          // suffixIconConstraints:
          //     BoxConstraints(maxWidth: widget.maxWidthSuffixIcon!),

          suffixIcon: (widget.isPhoneCode)
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        color: ColorsUtils.TEXT_FEILD_STYLE,
                        thickness: 1.5,
                      ),
                    ),
                    Text(
                      '2+',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorsUtils.TEXT_FEILD_STYLE,
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                  ],
                )
              : (widget.hasPassword)
                  ? InkWell(
                      onTap: () {
                        showPassword = !showPassword;
                        setState(() {});
                      },
                      child: (!showPassword)
                          ? const Icon(
                              Icons.visibility,
                              color: ColorsUtils.HINT_COLOR,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              color: ColorsUtils.HINT_COLOR,
                            ),
                    )
                  : widget.sufficIcon),
    );
  }
}
