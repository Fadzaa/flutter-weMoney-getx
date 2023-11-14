import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/features/home_page/components/balance_overview.dart';
import 'package:we_money_getx/app/features/home_page/components/list_transaction.dart';
import 'package:we_money_getx/app/features/home_page/components/total_balance.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Heading Section
          Container(
            width: width * 0.93,
            height: height * 0.0875,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
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

          // //Total Balance
          // const TotalBalance(),
          //
          // //Balance Used and Limit Balance
          // const BalanceOverview(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const ListTransaction(),
          )
        ],
      ),
    );
  }
}


