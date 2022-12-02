import 'package:credit_card_scanner/credit_card_scanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PaymentMethodController extends GetxController {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  var cardNameController = TextEditingController().obs;
  var cardNumberController = TextEditingController().obs;
  var exDateController = TextEditingController().obs;
  var cVVController = TextEditingController().obs;
  var isfilled = false.obs;

  CardDetails? cardDetails;
  CardScanOptions scanOptions = const CardScanOptions(
    scanCardHolderName: true,
    enableDebugLogs: true,
    scanExpiryDate: true,
    validCardsToScanBeforeFinishingScan: 5,
    possibleCardHolderNamePositions: [
      CardHolderNameScanPosition.aboveCardNumber,
    ],
  );

  Future<void> scanCard() async {
    var cardDetails = await CardScanner.scanCard(
      scanOptions: scanOptions,
    );

    this.cardDetails = cardDetails;
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
