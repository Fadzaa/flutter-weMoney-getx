import 'package:get/get.dart';
import 'package:we_money_getx/app/index.dart';


class OnboardingScreenBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<OnboardingScreenController>(() => OnboardingScreenController());
  }
}
