
import 'package:get/get.dart';

import 'manual_transaction_controller.dart';

class ManualTransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManualTransactionController());
  }
}