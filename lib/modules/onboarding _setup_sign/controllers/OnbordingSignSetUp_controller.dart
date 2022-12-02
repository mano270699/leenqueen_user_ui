import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:get/get.dart';
import 'package:leenqueen_user/routes/app_pages.dart';

import '../view/pages/allergy_question_page.dart';
import '../view/pages/birthday_page.dart';
import '../view/pages/gender_page.dart';
import '../view/pages/medical_condition_page.dart';
import '../view/pages/tell_more_about_you_page.dart';
import '../view/pages/weight_page.dart';

class OnbordingSignSetUpController extends GetxController {
  var page = 0.obs;
  var isFirst = true.obs;
  var islast = false.obs;
  var pageController = PageController().obs;
  var medicalConditionItemSelected = Rxn<int>();
  //var medicalConditionItemSelected = 0.obs;
  var allergyItemSelected = 0.obs;
  var isMeleSelected = true.obs;
  var nameController = TextEditingController().obs;
  var addressController = TextEditingController().obs;
  var switchValue = true.obs;
  var rulerPickerController = RulerPickerController(value: 0).obs;

  var currentValue = 85.obs;
  onPageChanged(input) {
    page.value = input;
    if (input != 0) isFirst.value = false;
    if (input == onboardingContents.length - 1) islast.value = true;
    if (input == 0) isFirst.value = true;
  }

  List<Widget> onboardingContents = [
    MedicalCondition(),
    const GenderPage(),
    BirthdayPage(),
    const WeightPage(),
    AllergyQuestionPage(),
    TellMoreAboutYouPage()
  ];
  animateTo() {
    if (islast.value) {
      Get.toNamed(AppPages.FINISHSETUP);
    } else {
      pageController.value.nextPage(
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }
  }

  animateBack() {
    pageController.value.previousPage(
      duration: Duration(
        milliseconds: 750,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  resetController(int page) {
    pageController.value = PageController(initialPage: page);
  }

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
