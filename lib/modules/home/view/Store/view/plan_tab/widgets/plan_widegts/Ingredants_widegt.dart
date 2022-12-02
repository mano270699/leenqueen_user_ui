import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

class IngredantsCard extends StatelessWidget {
  IngredantsCard({super.key, required this.ingredants});
  String ingredants;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12.h,
            backgroundColor: const Color(0xffFDE897),
            child: Center(
                child: Icon(
              Icons.check,
              color: ColorsUtils.PRIMARY,
              size: 15.w,
            )),
          ),
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            width: 280.w,
            child: CustomText(
              text: ingredants,
              fontSize: 15.sp,
              customFontWeight: FontWeight.w400,
              fontColor: const Color(0xff2E3E5C),
            ),
          )
        ],
      ),
    );
  }
}
