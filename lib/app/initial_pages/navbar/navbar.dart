import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:we_money_getx/app/features/balance_detail/detail_balance_view.dart';
import 'package:we_money_getx/app/features/edit_profile/edit_profile_view.dart';
import 'package:we_money_getx/app/features/home_page/home_page_view.dart';
import 'package:we_money_getx/app/features/manual_transaction/manual_transaction_view.dart';
import 'package:we_money_getx/app/features/profile_screen/profile_screen_view.dart';
import 'package:we_money_getx/app/features/saving_page/saving_page_view.dart';
import 'package:we_money_getx/common/helper/colors.dart';
import 'package:we_money_getx/common/helper/index.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePageView(),
        Container(child: Center(child: Text("Insight Page"),),),
        ManualTransactionView(),
        SavingPage(),
        ProfileScreenView(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
            icon: SvgPicture.asset("assets/icon/icon_home_active.svg"),
            inactiveIcon:
                SvgPicture.asset("assets/icon/icon_home_inactive.svg"),
            title: ("Home"),
            textStyle: tsPrimaryMedium.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
            activeColorPrimary: primaryColor,
            inactiveColorPrimary: secondaryTextColor),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/icon/icon_insight_active.svg"),
          inactiveIcon:
              SvgPicture.asset("assets/icon/icon_insight_inactive.svg"),
          title: ("Insight"),
          textStyle: tsPrimaryMedium.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryTextColor,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/icon/icon_plus.svg"),
          activeColorPrimary: primaryColor
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/icon/icon_saving_active.svg"),
          inactiveIcon:
              SvgPicture.asset("assets/icon/icon_saving_inactive.svg"),
          title: ("Saving"),
          textStyle: tsPrimaryMedium.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryTextColor,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/icon/icon_profile_active.svg"),
          inactiveIcon:
              SvgPicture.asset("assets/icon/icon_profile_inactive.svg"),
          title: ("Profile"),

          textStyle: tsPrimaryMedium.copyWith(
              fontSize: 12, fontWeight: FontWeight.w600),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryTextColor,
        ),
      ];
    }

    return PersistentTabView(
      navBarHeight: 65,
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(0),
          colorBehindNavBar: Colors.white,
          ),

      padding: NavBarPadding.only(bottom: 5, left: 0, right: 0, top: 10),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
