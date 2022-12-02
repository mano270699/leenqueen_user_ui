import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/utils/colors.dart';
import 'package:leenqueen_user/utils/widgets/custom_text.dart';
import 'package:like_button/like_button.dart';

import '../../../../../../utils/image_manager.dart';
import '../../../../../../utils/widgets/custom_textfield.dart';
import '../../controllers/feed_controller.dart';

class PostWidget extends GetView<FeedController> {
  PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtils.WHITE,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage(AssetsImage.user),
                      radius: 20.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: "Dr. Salma H",
                      fontSize: 16.sp,
                      customFontWeight: FontWeight.w500,
                      fontColor: ColorsUtils.BLACK,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Image.asset(AssetsImage.isDoctor)
                  ],
                ),
                IconButton(
                    onPressed: (() {}),
                    icon: Image.asset(
                      AssetsImage.more_vertical,
                      height: 15.h,
                    ))
              ],
            ),
          ),
          //title of post

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: CustomText(
              text: "5 Advicess for best plans..",
              fontSize: 16.sp,
              customFontWeight: FontWeight.w400,
              fontColor: ColorsUtils.BLACK,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: CustomText(
              text:
                  "Reference site about Lorem , giving safas information on itsgenerator.",
              fontSize: 14.sp,
              customFontWeight: FontWeight.w400,
              fontColor: ColorsUtils.postContentColor,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Image.asset(
            AssetsImage.postImage,
            height: 230.h,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    LikeButton(
                      size: 30,
                      // circleColor: CircleColor(
                      //     start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      // bubblesColor: BubblesColor(
                      //   dotPrimaryColor: Color(0xff33b5e5),
                      //   dotSecondaryColor: Color(0xff0099cc),
                      // ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.favorite,
                          color: isLiked ? Colors.red : Colors.grey,
                          size: 30,
                        );
                      },
                      likeCount: 665,

                      // countBuilder: (int count, bool isLiked, String text) {
                      //   var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                      //   Widget result;
                      //   if (count == 0) {
                      //     result = Text(
                      //       "love",
                      //       style: TextStyle(color: color),
                      //     );
                      //   } else
                      //     result = Text(
                      //       text,
                      //       style: TextStyle(color: color),
                      //     );
                      //   return result;
                      // },
                    ),
                    // IconButton(
                    //     onPressed: (() {}),
                    //     icon: Image.asset(AssetsImage.love)),
                    // CustomText(
                    //   text: "110",
                    //   fontSize: 12.sp,
                    //   customFontWeight: FontWeight.w500,
                    //   fontColor: ColorsUtils.postIconsColor,
                    // ),
                    SizedBox(
                      width: 50.w,
                    ),
                    IconButton(
                        onPressed: (() {
                          FocusScope.of(context)
                              .requestFocus(controller.focusNode);
                          controller.displayCommentTextForm.value = true;
                        }),
                        icon: Image.asset(AssetsImage.comment)),
                    CustomText(
                      text: "32",
                      fontSize: 12.sp,
                      customFontWeight: FontWeight.w500,
                      fontColor: ColorsUtils.postIconsColor,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: ColorsUtils.postIconsColor,
                    )),
              ],
            ),
          ),
          Obx(() => controller.displayCommentTextForm.value
              ? Column(
                  children: [
                    Divider(
                      height: 1.2.h,
                      color: ColorsUtils.GRAY_3,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: CustomTextField(
                        autoFoucs: true,
                        focusNode: controller.focusNode,
                        filledColor: ColorsUtils.commentTextFormColor,
                        borderRadius: BorderRadius.circular(66),
                        controller: controller.commentController.value,
                        hint: "Write a comment",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Write a comment";
                          }
                          return null;
                        },
                        sufficIcon: Image.asset(
                          AssetsImage.sendButton,
                          width: 26.w,
                          height: 26.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                )
              : const SizedBox())
        ],
      ),
    );
  }
}
