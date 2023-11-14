part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const REGISTER_SCREEN = _Paths.REGISTER_SCREEN;
  static const LOGIN_SCREEN = _Paths.LOGIN_SCREEN;
  static const ONBOARDING_SCREEN = _Paths.ONBOARDING_SCREEN;
  static const HOME_PAGE = _Paths.HOMEPAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_SCREEN = '/';
  static const REGISTER_SCREEN = '/register-screen';
  static const LOGIN_SCREEN = '/login-screen';
  static const ONBOARDING_SCREEN = '/onboarding-screen';
  static const HOMEPAGE = '/home-page';

}
