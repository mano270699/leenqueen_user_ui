import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leenqueen_user/utils/widgets/custom_rounded_btn.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/image_manager.dart';
import '../../../../../utils/widgets/custom_text.dart';

class GroupEventView extends StatelessWidget {
  const GroupEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      appBar: AppBar(
        backgroundColor: ColorsUtils.WHITE,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'Event',
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          customFontWeight: FontWeight.w500,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.keyboard_backspace,
            color: ColorsUtils.BLACK,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 330.w,
                  height: 130.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      image: const DecorationImage(
                        image: AssetImage(
                          AssetsImage.p_videos,
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomText(
                  text: 'Event Name',
                  fontSize: 16.sp,
                  fontColor: ColorsUtils.BLACK,
                  customFontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    Image.asset(
                      AssetsImage.calendar_tick,
                      color: ColorsUtils.PRIMARY,
                      width: 24.w,
                      height: 24.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    CustomText(
                      text: 'Start at: ',
                      fontSize: 10.sp,
                      fontColor: ColorsUtils.PRIMARY,
                      customFontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: '25 Oct , 12:00 pm',
                      fontSize: 12.sp,
                      fontColor: ColorsUtils.PRIMARY,
                      customFontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    Image.asset(
                      AssetsImage.calendar_tick,
                      width: 24.w,
                      height: 24.h,
                      color: ColorsUtils.RED_COLOR,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    CustomText(
                      text: 'End at: ',
                      fontSize: 10.sp,
                      fontColor: ColorsUtils.RED_COLOR,
                      customFontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: '25 Oct , 12:00 pm',
                      fontSize: 12.sp,
                      fontColor: ColorsUtils.RED_COLOR,
                      customFontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomText(
                  text: 'Description',
                  fontSize: 12.sp,
                  fontColor: ColorsUtils.HINT_COLOR,
                  customFontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas varius amet in egestas risus id arcu neque. Ipsum at facilisis sit magna. Vitae mattis diam est nunc. Ac massa turpis massa turpis suscipit. Augue pellentesque tellus dolor vestibulum odio gravida quis enim adipiscing. Vel, urna facilisis varius pharetra pharetra in at.Enim pretium nisi, egestas suscipit. Amet et enim.',
                  fontSize: 12.sp,
                  fontAlign: TextAlign.start,
                  fontColor: ColorsUtils.BLACK,
                  customFontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20.h,
            left: 20.w,
            child: Row(
              children: [
                SizedBox(
                  width: 100.w,
                  child: CustomOutlinedButton(
                    text: "Maybe",
                    textColor: ColorsUtils.PRIMARY,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                SizedBox(
                  width: 100.w,
                  child: CustomRoundedButton(
                    text: "Done",
                    backgroundColor: ColorsUtils.PRIMARY,
                    textColor: ColorsUtils.WHITE,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                SizedBox(
                  width: 100.w,
                  child: CustomOutlinedButton(
                    text: "Ignore",
                    textColor: ColorsUtils.PRIMARY,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
