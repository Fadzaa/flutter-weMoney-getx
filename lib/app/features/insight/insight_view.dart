import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:we_money_getx/app/features/insight/components/spending_chart.dart';
import 'package:we_money_getx/app/features/insight/components/spending_evaluation.dart';
import 'package:we_money_getx/app/features/insight/components/spending_overview.dart';

import '../../../common/helper/index.dart';
import '../../model/chart.dart';

class InsightView extends GetView {
  const InsightView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
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
                  SvgPicture.asset(
                    "assets/icon/icon_insight_active.svg",
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
                        "Insight",
                        style: tsPrimaryMedium.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),

                      Text(
                        "Get more Insight about your Spending",
                        style: tsCommonHeadingCard,
                      ),

                    ],
                  )
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  //Chart
                  SpendingChart(),

                  //Spending Evaluation
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SpendingEvaluation(),
                  ),

                  SpendingOverview()




                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
