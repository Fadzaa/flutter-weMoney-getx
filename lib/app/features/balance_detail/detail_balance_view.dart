import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/features/balance_detail/components/connect_account.dart';
import 'package:we_money_getx/app/features/balance_detail/components/set_balance_limit.dart';
import 'package:we_money_getx/app/features/home_page/components/balance_overview.dart';
import 'package:we_money_getx/app/features/home_page/components/total_balance.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';
import 'package:we_money_getx/common/helper/index.dart';

class DetailBalanceView extends GetView {
  const DetailBalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 25, 18, 0),
        child: Column(
          children: [
            CommonAppBar(
                text: "DETAIL BALANCE",
                showIcon: false
            ),

            SizedBox(height: 15,),

            const TotalBalance(),

            SizedBox(height: 25,),

            const BalanceOverview(),

            SizedBox(height: 10,),

            const SetBalanceLimit(),

            SizedBox(height: 30,),

            const ConnectAccount(),


          ],
        ),
      ),
    );
  }
}
