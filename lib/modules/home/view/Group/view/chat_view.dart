import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/modules/home/view/Group/view/widgets/image_message_view.dart';
import 'package:leenqueen_user/modules/home/view/Group/view/widgets/meal_image_uploaded_dialog.dart';
import 'package:leenqueen_user/modules/home/view/Group/view/widgets/meal_time_dialog.dart';
import 'package:leenqueen_user/modules/home/view/Group/view/widgets/received_message.dart';
import 'package:leenqueen_user/modules/home/view/Group/view/widgets/send_message.dart';
import 'package:leenqueen_user/routes/app_pages.dart';
import 'package:leenqueen_user/utils/image_manager.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/widgets/custom_dialog.dart';
import '../../../../../utils/widgets/custom_round_image.dart';
import '../../../../../utils/widgets/custom_rounded_btn.dart';
import '../../../../../utils/widgets/custom_text.dart';
import '../../../../../utils/widgets/custom_textfield.dart';
import '../controllers/Group_controller.dart';

class ChatView extends GetView<GroupController> {
  //final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.BACK_GROUND_2,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ColorsUtils.WHITE,
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(AppPages.PortfolioPage);
                },
                child: CircleAvatar(
                  backgroundImage: const AssetImage(AssetsImage.user),
                  radius: 20.sp,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppPages.MyGroupPage);
                },
                child: Container(
                  width: 80.w,
                  height: 31.h,
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
            ],
          ),
          actions: [
            PopupMenuButton(
                elevation: 0,
                offset: const Offset(13, 25),
                padding: EdgeInsets.zero,
                color: ColorsUtils.BACK_GROUND,
                shape: TooltipShape(),
                child: Image.asset(AssetsImage.more),
                itemBuilder: (_) {
                  // final RenderBox overlay = Overlay.of(context)!
                  //     .context
                  //     .findRenderObject() as RenderBox;

                  return <PopupMenuEntry>[
                    PopupMenuItem(
                      padding: EdgeInsets.zero,
                      child: CustomDialog.dialogItem(
                          onTap: () {
                            Get.toNamed(AppPages.GroupMediaPage);
                          },
                          asset: AssetsImage.gallery,
                          title: 'Group Media',
                          width: 100.w),
                    ),
                    PopupMenuItem(
                      padding: EdgeInsets.zero,
                      child: CustomDialog.dialogItem(
                          onTap: () {
                            Get.toNamed(AppPages.GroupEventPage);
                          },
                          asset: AssetsImage.calendar_tick,
                          title: 'Events',
                          width: 100.w),
                    ),
                    PopupMenuItem(
                      padding: EdgeInsets.zero,
                      child: CustomDialog.dialogItem(
                          onTap: () {
                            Get.toNamed(AppPages.NotificationPage);
                          },
                          asset: AssetsImage.notification,
                          title: 'Notification',
                          width: 100.w),
                    ),
                    PopupMenuItem(
                      height: 28.h,
                      padding: EdgeInsets.zero,
                      child: CustomDialog.dialogItem(
                          onTap: () {},
                          asset: AssetsImage.logout,
                          title: 'Leave ',
                          divider: false,
                          width: 100.w),
                    ),
                  ];
                }),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              color: ColorsUtils.BACK_GROUND,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                shrinkWrap: true,
                children: [
                  SendMessage(message: 'Good morning all!', time: '16:50'),
                  ReceivedMessage(
                      message: 'Good morning, did you sleep well? ',
                      color: ColorsUtils.WHITE,
                      time: '16:50'),
                  ReceivedMessage(
                      message:
                          'Good morning , please send you daily meals after breakfast,thanks ',
                      time: '16.46'),
                  ImageMessageView(
                    image: AssetsImage.image_meal,
                    message: "Almost done.. keep goinn",
                    time: '16.46',
                  )
                ],
              ),
            )),
            Container(
              height: 170.h,
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
              decoration: const BoxDecoration(
                  color: ColorsUtils.ROSE,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                    () => controller.isRecording.value
                        ? Row(
                            children: [
                              AudioWaveforms(
                                enableGesture: true,
                                size: Size(
                                    MediaQuery.of(context).size.width / 1.5,
                                    50),
                                recorderController:
                                    controller.recorderController,
                                waveStyle: const WaveStyle(
                                  waveColor: ColorsUtils.HINT_COLOR,
                                  extendWaveform: true,
                                  showMiddleLine: false,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: ColorsUtils.WHITE,
                                ),
                                padding: const EdgeInsets.only(left: 18),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                              ),
                              InkWell(
                                  onTap: (() {
                                    controller.isRecording.value = false;
                                    controller.recorderController.dispose();
                                  }),
                                  child: const Icon(Icons.refresh))
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 4.h),
                                  controller: controller.chatController.value,
                                  hint: '',
                                  filledColor: ColorsUtils.WHITE,
                                  borderRadius: BorderRadius.circular(16),
                                  sufficIcon: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                        AssetsImage.sendButton,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13.w),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      builder: (BuildContext context) => Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap: (() {
                                                  controller.choosePhoto();
                                                }),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w,
                                                      vertical: 20.h),
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                        AssetsImage.gallery,
                                                        width: 21.w,
                                                        height: 21.w,
                                                        color:
                                                            ColorsUtils.BLACK,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      CustomText(
                                                        text:
                                                            "Upload Image from Gallery",
                                                        customFontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12.sp,
                                                        fontColor:
                                                            ColorsUtils.BLACK,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Divider(
                                                height: 1.5,
                                                color: ColorsUtils.GRAY_3,
                                              ),
                                              InkWell(
                                                onTap: (() {
                                                  controller
                                                      .choosePhotofromCamera();
                                                }),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w,
                                                      vertical: 20.h),
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                        AssetsImage.camera,
                                                        width: 21.w,
                                                        height: 21.w,
                                                        color:
                                                            ColorsUtils.BLACK,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      CustomText(
                                                        text: "Take a Photo",
                                                        customFontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12.sp,
                                                        fontColor:
                                                            ColorsUtils.BLACK,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 80.h,
                                              )
                                            ],
                                          ),
                                      context: context);

                                  // showDialog(
                                  //   barrierColor: ColorsUtils.BLACK.withOpacity(0.7),
                                  //   barrierDismissible: true,
                                  //   context: context,
                                  //   builder: (context) {
                                  //     return MealImageUploadedDialog();
                                  //   },
                                  // );
                                },
                                child: Image.asset(
                                  AssetsImage.gallery,
                                  color: ColorsUtils.BLACK,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              InkWell(
                                onTap: (() async {
                                  controller.isRecording.value = true;
                                  await controller.recorderController
                                      .record(controller.path);
                                }),
                                child: Image.asset(
                                  AssetsImage.microphone,
                                  color: ColorsUtils.BLACK,
                                ),
                              ),
                            ],
                          ),
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          activeColor: ColorsUtils.PRIMARY,
                          checkColor: ColorsUtils.WHITE,
                          overlayColor: MaterialStateColor.resolveWith(
                            (states) {
                              if (states.contains(MaterialState.selected)) {
                                return ColorsUtils
                                    .PRIMARY; // the color when checkbox is selected;
                              }
                              return ColorsUtils
                                  .PRIMARY; //the color when checkbox is unselected;
                            },
                          ),
                          fillColor: MaterialStateColor.resolveWith(
                            (states) {
                              if (states.contains(MaterialState.selected)) {
                                return ColorsUtils
                                    .PRIMARY; // the color when checkbox is selected;
                              }
                              return Colors
                                  .white; //the color when checkbox is unselected;
                            },
                          ),
                          value: controller.isChecked.value,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onChanged: (bool? value) {
                            controller.isChecked.value =
                                !controller.isChecked.value;
                          },
                        ),
                      ),
                      CustomText(
                        text: "Send to coach only",
                        fontColor: ColorsUtils.BLACK.withOpacity(0.9),
                        fontSize: 12.sp,
                        customFontWeight: FontWeight.w400,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
