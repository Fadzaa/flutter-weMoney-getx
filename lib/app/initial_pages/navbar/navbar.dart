import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:we_money_getx/app/features/balance_detail/detail_balance_view.dart';
import 'package:we_money_getx/app/features/edit_profile/edit_profile_view.dart';
import 'package:we_money_getx/app/features/home_page/home_page_view.dart';
import 'package:we_money_getx/app/features/manual_transaction/manual_transaction_view.dart';
import 'package:we_money_getx/app/profile_screen/profile_screen_view.dart';
import 'package:we_money_getx/common/helper/colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePageView(),
        EditProfile(),
        ManualTransactionView(),
        DetailBalanceView(),
        ProfileScreenView(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(""),
          title: ("Home"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryTextColor
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),
          title: ("Settings"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: primaryTextColor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),

          activeColorPrimary: primaryColor,
          inactiveColorPrimary: primaryTextColor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),
          title: ("Settings"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: primaryTextColor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),
          title: ("Settings"),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: primaryTextColor,
        ),
      ];
    }


    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      // screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
      //   animateTabTransition: true,
      //   curve: Curves.ease,
      //   duration: Duration(milliseconds: 200),
      // ),
      navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
