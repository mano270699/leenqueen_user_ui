import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:leenqueen_user/modules/notification/view/widgets/notification_widget.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/constants.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../utils/colors.dart';

import '../../../utils/widgets/custom_rounded_btn.dart';
import '../../../utils/widgets/custom_text.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotifiactionController> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.BACK_GROUND,
        appBar: AppBar(
          backgroundColor: ColorsUtils.BACK_GROUND,
          elevation: 0,
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomText(
                text: 'Notifications',
                fontSize: 18.sp,
                fontColor: ColorsUtils.BLACK,
                customFontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const NotificationWidget(),
            const NotificationWidget(),
            const NotificationWidget(),
          ],
        ));
  }
}
