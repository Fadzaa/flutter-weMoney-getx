import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/features/home_page/components/balance_overview.dart';
import 'package:we_money_getx/app/features/home_page/components/list_transaction.dart';
import 'package:we_money_getx/app/features/home_page/components/total_balance.dart';
import 'package:we_money_getx/common/routes/app_pages.dart';

import '../../../common/helper/index.dart';

class HomePageView extends GetView {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F9FA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading Section
            Container(
              width: width,
              height: height * 0.0875,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //     topRight: Radius.circular(16),
                //     bottomRight: Radius.circular(16)),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/user.png",
                    width: 45,
                    height: 45,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: tsCommonHeadingCard,
                      ),
                      Text(
                        "Fattah Anggit Al Dzakwan",
                        style: tsPrimaryMedium.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),

            // SizedBox(height: 30,),

            //Total Balance
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 0),
               child: TotalBalance(icon: "assets/icon/icon_details_balance.svg", iconText: "Details", route: Routes.DETAIL_BALANCE_PAGE,),
             ),

            //Balance Used and Limit Balance
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: const BalanceOverview(),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const ListTransaction(),
            )
          ],
        ),
      ),
    );
  }
}


