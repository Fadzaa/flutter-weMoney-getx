import 'package:get/get.dart';
import 'package:we_money_getx/app/index.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
        name: _Paths.SPLASH_SCREEN,
        page: () => SplashScreenView(),
        binding: SplashScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.LOGIN_SCREEN,
        page: () => LoginScreenView(),
        binding: LoginScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.REGISTER_SCREEN,
        page: () => RegisterScreenView(),
        binding: RegisterScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ONBOARDING_SCREEN,
        page: () => OnboardingScreenView(),
        binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
  ];
}
