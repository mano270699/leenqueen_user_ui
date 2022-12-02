import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Feed/view/widgets/post_widget.dart';
import 'package:leenqueen_user/utils/image_manager.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';

import '../../../../../utils/colors.dart';
import '../controllers/feed_controller.dart';

class FeedView extends GetView<FeedController> {
  //final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.BACK_GROUND_2,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ColorsUtils.WHITE,
          title: Image.asset(
            AssetsImage.app_name,
            width: 128.w,
            height: 50.h,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 7.h, bottom: 7.h),
              child: Container(
                width: 80.w,
                decoration: BoxDecoration(
                  color: ColorsUtils.titleGroup,
                  borderRadius: BorderRadius.circular(58),
                ),
                child: Center(
                  child: CustomText(
                      fontAlign: TextAlign.center,
                      text: "Group A25",
                      fontSize: 11.sp,
                      customFontWeight: FontWeight.w500,
                      fontColor: ColorsUtils.BLACK),
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            CircleAvatar(
              backgroundImage: const AssetImage(AssetsImage.user),
              radius: 20.sp,
            ),
            SizedBox(
              width: 15.w,
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: ((context, index) => PostWidget()),
                      separatorBuilder: ((context, index) => SizedBox(
                            height: 5.h,
                          )),
                      itemCount: 5)
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: IntrinsicHeight(),
            ),
          ],
        ));
  }
}
