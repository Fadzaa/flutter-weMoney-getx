import 'package:get/get.dart';
import 'package:we_money_getx/app/login_screen/login_screen_controller.dart';


class OnboardingScreenBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
  }
}
