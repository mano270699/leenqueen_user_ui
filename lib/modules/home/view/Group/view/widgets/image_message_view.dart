import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/widgets/custom_round_image.dart';
import '../../../../../../utils/widgets/custom_text.dart';

class ImageMessageView extends StatelessWidget {
  ImageMessageView(
      {super.key,
      required this.message,
      required this.time,
      required this.image,
      this.color = ColorsUtils.WHITE});
  String message;
  String image;
  String time;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h, right: 30.w, left: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomRoundImage(),
          SizedBox(width: 10.w),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 260.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 7.h),
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image),
                  Text(message,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorsUtils.BLACK,
                        fontWeight: FontWeight.w400,
                      )),
                  CustomText(
                    text: time,
                    fontSize: 14.sp,
                    fontColor: ColorsUtils.BLACK.withOpacity(0.5),
                    customFontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
