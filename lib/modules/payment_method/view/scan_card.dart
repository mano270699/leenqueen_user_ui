// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';
// import 'package:leenqueen_user/modules/home/view/Profile/view/widgets/conclusion_card.dart';
// import 'package:leenqueen_user/modules/payment_method/view/scan_option_configration_widget.dart';
// import 'package:leenqueen_user/utils/image_manager.dart';
// import 'package:leenqueen_user/utils/widgets/custom_text.dart';
// import '../../../../../../../utils/colors.dart';
// import '../../../../../../../utils/widgets/custom_rounded_btn.dart';

// import '../../../utils/widgets/custom_textfield.dart';
// import '../controllers/payment_controller.dart';

// class ScanePaymentCardView extends GetView<PaymentMethodController> {
//   ScanePaymentCardView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: ColorsUtils.WHITE,
//         appBar: AppBar(
//           elevation: 0.0,
//           backgroundColor: ColorsUtils.WHITE,
//           leading: InkWell(
//             onTap: () {
//               Get.back();
//             },
//             child: const Icon(
//               Icons.arrow_back,
//               color: ColorsUtils.BLACK,
//             ),
//           ),
//         ),
//         body: CustomScrollView(
//           slivers: <Widget>[
//             SliverToBoxAdapter(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
//                     child: CustomText(
//                         text: "Scan New Card",
//                         fontAlign: TextAlign.start,
//                         customFontWeight: FontWeight.w500,
//                         fontSize: 18.sp,
//                         fontColor: ColorsUtils.BLACK),
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomText(
//                           text: "Hold the card into the frameto start scanning",
//                           fontAlign: TextAlign.center,
//                           customFontWeight: FontWeight.w400,
//                           fontSize: 12.sp,
//                           fontColor: ColorsUtils.holdColor),
//                       OptionConfigureWidget(
//                         initialOptions: controller.scanOptions,
//                         onScanOptionChanged: (newOptions) =>
//                             controller.scanOptions = newOptions,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 230.h),
//                   Padding(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
//                     child: CustomRoundedButton(
//                       backgroundColor: controller.isfilled.value
//                           ? ColorsUtils.PRIMARY
//                           : ColorsUtils.HINT_COLOR,
//                       borderColor: ColorsUtils.PRIMARY,
//                       pressed: () {
//                         // if (controller.globalKey.currentState!.validate()) {
//                         //   FocusScope.of(context).unfocus();
//                         controller.scanCard();
//                         // } else {
//                         //   return;
//                         // }
//                       },
//                       text: 'Place my order',
//                       textColor: Colors.white,
//                       elevation: 0,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }
