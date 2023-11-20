import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/features/insight/components/appbar.dart';
import 'package:we_money_getx/app/features/insight/components/spending_chart.dart';
import 'package:we_money_getx/app/features/insight/components/spending_evaluation.dart';
import 'package:we_money_getx/app/features/insight/components/spending_overview.dart';


class InsightView extends GetView {
  const InsightView({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            InsightAppBar(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  //Chart
                  SpendingChart(),

                  //Spending Evaluation
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 16),
                  //   child: SpendingEvaluation(),
                  // ),
                  //
                  // SpendingOverview()




                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
