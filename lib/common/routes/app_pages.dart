import 'package:get/get.dart';
import 'package:we_money_getx/app/features/edit_profile/edit_profile_view.dart';
import 'package:we_money_getx/app/features/manual_transaction/manual_transaction_binding.dart';
import 'package:we_money_getx/app/features/manual_transaction/manual_transaction_controller.dart';
import 'package:we_money_getx/app/features/saving_page/saving_page_view.dart';
import 'package:we_money_getx/app/index.dart';
import 'package:we_money_getx/app/initial_pages/navbar/navbar.dart';
import 'package:we_money_getx/app/features/profile_screen/profile_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN; // Ganti sesuai screen masing masing

  static final routes = [
    GetPage(
        name: _Paths.SPLASH_SCREEN,
        page: () => SplashScreenView(),
        binding: SplashScreenBinding(),
        // transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.LOGIN_SCREEN,
        page: () => LoginScreenView(),
        binding: LoginScreenBinding(),
        // transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.REGISTER_SCREEN,
        page: () => RegisterScreenView(),
        binding: RegisterScreenBinding(),
        // transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.ONBOARDING_SCREEN,
        page: () => OnboardingScreenView(),
        binding: OnboardingScreenBinding(),
        // transition: Transition.noTransition
    )
    ,
    GetPage(
        name: _Paths.HOME_PAGE,
        page: () => HomePageView(),
        // binding: OnboardingScreenBinding(),
        // transition: Transition.noTransition
  ),
    GetPage(
        name: _Paths.DETAIL_BALANCE_PAGE,
        page: () => DetailBalanceView(),
        // binding: OnboardingScreenBinding(),
        // transition: Transition.noTransition
  ),
    GetPage(
        name: _Paths.MANUAL_TRANSACTION,
        page: () => ManualTransactionView(),
        // binding: ManualTransactionBinding(),
        transition: Transition.upToDown
  ),
    GetPage(
        name: _Paths.ADD_CASH_BALANCE,
        page: () => AddCashBalanceView(),
        // binding: OnboardingScreenBinding(),
        // transition: Transition.noTransition
        ),
    GetPage(
        name: _Paths.ADD_NEW_ACCOUNT,
        page: () => AddNewAccountView(),
        // binding: OnboardingScreenBinding(),
        // transition: Transition.noTransition
  ),
    GetPage(
        name: _Paths.LIST_TRANSACTION,
        page: () => ListTransactionView(),
        // binding: OnboardingScreenBinding(),
        // transition: Transition.noTransition
  ),
    GetPage(
        name: _Paths.NAVBAR,
        page: () => Navbar(),
      bindings: [
        ManualTransactionBinding(),
      ]
  ),
  GetPage(
        name: _Paths.EDIT_PROFILE,
        page: () => EditProfile(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.SAVING_PAGE,
        page: () => SavingPage(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
        // transition: Transition.noTransition
    GetPage(
        name: _Paths.PROFILE_PAGE,
        page: () => ProfileScreenView(),
        // binding: OnboardingScreenBinding(),
        // transition: Transition.noTransition
  ),

  ];
}
