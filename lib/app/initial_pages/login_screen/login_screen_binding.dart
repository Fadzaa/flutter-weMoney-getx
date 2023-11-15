import 'package:get/get.dart';
import 'package:we_money_getx/app/initial_pages/login_screen/login_screen_controller.dart';


class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
  }
}
