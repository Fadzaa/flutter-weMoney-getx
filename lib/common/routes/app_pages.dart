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
    GetPage(
        name: _Paths.HOME_PAGE,
        page: () => HomePageView(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.DETAIL_BALANCE_PAGE,
        page: () => DetailBalanceView(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.MANUAL_TRANSACTION,
        page: () => ManualTransactionView(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ADD_CASH_BALANCE,
        page: () => AddCashBalanceView(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ADD_NEW_ACCOUNT,
        page: () => AddNewAccountView(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.LIST_TRANSACTION,
        page: () => ListTransactionView(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
  ];
}
