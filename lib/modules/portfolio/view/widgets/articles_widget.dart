import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/custom_dialog.dart';
import '../../../../utils/widgets/custom_rounded_btn.dart';
import '../../../../utils/widgets/custom_text.dart';

class ArticlesWidget extends StatefulWidget {
  const ArticlesWidget({Key? key}) : super(key: key);

  @override
  State<ArticlesWidget> createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        ListView.separated(
            padding: EdgeInsets.only(
                left: 23.w, right: 23.w, top: 15.h, bottom: 65.h),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: ColorsUtils.BACK_GROUND,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Article Title',
                      fontSize: 16.sp,
                      fontColor: ColorsUtils.BLACK,
                      customFontWeight: FontWeight.w400,
                    ),
                    PopupMenuButton(
                      elevation: 0,
                      offset: const Offset(13, 25),
                      padding: EdgeInsets.zero,
                      shape: TooltipShape(),
                      child: SvgPicture.asset(
                        'assets/p_more.svg',
                      ),
                      itemBuilder: (_) => <PopupMenuEntry>[
                        PopupMenuItem(
                          padding: EdgeInsets.zero,
                          child: CustomDialog.dialogItem(
                              onTap: () {},
                              asset: 'assets/p_edit.svg',
                              title: 'Edit',
                              width: 80.w),
                        ),
                        PopupMenuItem(
                          padding: EdgeInsets.zero,
                          child: CustomDialog.dialogItem(
                              onTap: () {},
                              asset: 'assets/trash.svg',
                              title: 'Delete',
                              divider: false,
                              width: 80.w),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.h,
              );
            },
            itemCount: 6),
        Positioned(
          right: 23.w,
          left: 23.w,
          bottom: 10.h,
          child: CustomRoundedButton(
            backgroundColor: ColorsUtils.PRIMARY,
            borderColor: ColorsUtils.PRIMARY,
            pressed: () {},
            text: 'Add new article',
            textColor: Colors.white,
            elevation: 0,
          ),
        ),
      ],
    ));
  }
}
