import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../routes/app_pages.dart';
import '../view/pages/add_midecal_condition_page.dart';
import '../view/pages/birthday_page.dart';
import '../view/pages/breastfeed_question_page.dart';
import '../view/pages/fitness_level.dart';
import '../view/pages/gender_page.dart';
import '../view/pages/height_page.dart';
import '../view/pages/inbody_weight_page.dart';
import '../view/pages/pregnant_question_page.dart';
import '../view/pages/target_weight_page.dart';
import '../view/pages/weight_page.dart';

class OnbordingFBSetUpController extends GetxController {
  var page = 0.obs;
  var isFirst = true.obs;
  var islast = false.obs;
  var genderSelected = Rxn<int>();
  var yesBreadstfeedSelected = false.obs;
  var noBreadstfeedSelected = false.obs;
  var yesPregnantSelected = false.obs;
  var noPregnantSelected = false.obs;
  var fitnessItemSelected = Rxn<int>();
  // var isGenderSelected = true.obs;
  var pageController = PageController().obs;
  var rulerPickerController = RulerPickerController(value: 0).obs;

  var currentValue = 85.obs;
  var rulerPickerTargetController = RulerPickerController(value: 0).obs;
  var rulerPickerInbodyController = RulerPickerController(value: 0).obs;

  var currentValueTargetWeight = 85.obs;
  var currentValueInbodyWeight = 70.obs;

  onPageChanged(input) {
    page.value = input;
    if (input != 0) isFirst.value = false;
    if (input == onboardingContents.length - 1) islast.value = true;
    if (input == 0) isFirst.value = true;
  }

  List<Widget> onboardingContents = [
    GenderFBPage(),
    BirthdayFBPage(),
    const WeightFBPage(),
    const TargetWeightFBPage(),
//fitness
    FitnessLevelPage(),
    HeightPage(),
    const InbodyWeightFBPage(),
    BreastfeedQuestionPage(),
    PregnantQuestionPage(),
    AddMedicalConditionPage()
  ];
  animateTo() {
    if (islast.value) {
      Get.offAndToNamed(AppPages.FINISHSETUP);
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
      duration: const Duration(
        milliseconds: 750,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  File? _file;
  PickedFile? _data;

  PickedFile get data => _data!;

  File get file => _file!;
  final picker = ImagePicker();

  void choosePhoto() async {
    final pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
        maxHeight: 500,
        maxWidth: 500);
    if (pickedFile != null) {
      _file = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }

  void choosePhotofromCamera() async {
    final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
        maxHeight: 500,
        maxWidth: 500);
    if (pickedFile != null) {
      _file = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
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
