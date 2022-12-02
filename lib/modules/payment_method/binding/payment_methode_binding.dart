import 'package:get/get.dart';

import '../controllers/payment_controller.dart';

class PaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PaymentMethodController());
  }
}