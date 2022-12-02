import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/widgets/custom_round_image.dart';
import '../../../../../../utils/widgets/custom_text.dart';

class SendMessage extends StatelessWidget {
  SendMessage({super.key, required this.message, required this.time});
  String message;
  String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h, right: 15.w, left: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 260.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.5.h),
              decoration: const BoxDecoration(
                color: ColorsUtils.PRIMARY,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(message,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorsUtils.WHITE,
                        fontWeight: FontWeight.w400,
                      )),
                  CustomText(
                    text: time,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.WHITE,
                    customFontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.w),
          CustomRoundImage(),
        ],
      ),
    );
  }
}
