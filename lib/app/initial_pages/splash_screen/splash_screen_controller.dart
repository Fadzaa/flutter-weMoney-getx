import 'package:get/get.dart';
import 'package:we_money_getx/common/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToLogin();
  }

  Future<void> _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAndToNamed(Routes.LOGIN_SCREEN);
  }
}

