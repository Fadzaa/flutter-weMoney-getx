import 'package:get/get.dart';

import 'register_screen_controller.dart';

class RegisterScreenBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<RegisterScreenController>(() => RegisterScreenController());
  }
}
