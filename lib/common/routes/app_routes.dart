part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const REGISTER_SCREEN = _Paths.REGISTER_SCREEN;
  static const LOGIN_SCREEN = _Paths.LOGIN_SCREEN;
  static const ONBOARDING_SCREEN = _Paths.ONBOARDING_SCREEN;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const DETAIL_BALANCE_PAGE = _Paths.DETAIL_BALANCE_PAGE;
  static const MANUAL_TRANSACTION = _Paths.MANUAL_TRANSACTION ;
  static const LIST_TRANSACTION = _Paths.LIST_TRANSACTION ;
  static const ADD_CASH_BALANCE = _Paths.ADD_CASH_BALANCE ;
  static const ADD_NEW_ACCOUNT = _Paths.ADD_NEW_ACCOUNT ;
  static const EDIT_PROFILE = _Paths.EDIT_PROFILE ;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_SCREEN = '/';
  static const REGISTER_SCREEN = '/register-screen';
  static const LOGIN_SCREEN = '/login-screen';
  static const ONBOARDING_SCREEN = '/onboarding-screen';
  static const HOME_PAGE = '/home';
  static const DETAIL_BALANCE_PAGE = '/detail-balance';
  static const MANUAL_TRANSACTION  = '/manual-transaction';
  static const LIST_TRANSACTION  = '/list-transaction';
  static const ADD_CASH_BALANCE  = '/add-cash-balance';
  static const ADD_NEW_ACCOUNT  = '/add-new-account';
  static const EDIT_PROFILE  = '/edit-profile';

}
