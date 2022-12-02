import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class GroupController extends GetxController {
  var chatController = TextEditingController().obs;
  var searchMemberController = TextEditingController().obs;
  var isChecked = false.obs;
  var isRecording = false.obs;
  late final RecorderController recorderController;
  late final PlayerController playerController1;
  String? path;
  String? musicFile;

  late Directory appDirectory;

  void _getDir() async {
    appDirectory = await getApplicationDocumentsDirectory();
    // _preparePlayers();
    path = "${appDirectory.path}/music.aac";
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
    _getDir();
    recorderController = (RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 16000
      ..bitRate = 64000);
    playerController1 = (PlayerController()..addListener(() {}));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    recorderController.dispose();
    playerController1.dispose();
  }
}
