import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_money_getx/common/helper/index.dart';

class SpendingEvaluation extends StatelessWidget {
  const SpendingEvaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Spending is Stable".toUpperCase(),
                      style: tsCommonHeadingList.copyWith(

                          color: successColor
                      ),
                    ),

                    SizedBox(height: 7,),

                    Text(
                        "You already done correctly related to your financial management.",
                        style: tsCommonSubheadingList.copyWith(fontSize: 7)
                    ),
                  ],
                ),

                SvgPicture.asset("assets/icon/icon_check.svg")

              ],
            ),
          ),

          Divider(color: lineColor, height: 1, thickness: 1),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                EvaluationText(textExplanation: "You spend 5% less than last month ", textNominal: "100.000"),

                EvaluationText(textExplanation: "Your usage is not exceed current limit", textNominal: "1.200.000"),
              ],
            ),
          ),




        ],
      ),
    );
  }
}

class EvaluationText extends StatelessWidget {
  const EvaluationText({
    required this.textExplanation,
    required this.textNominal,
    super.key
  });

  final String textExplanation;
  final String textNominal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textExplanation, style: tsCommonHeadingCard.copyWith(color: successColor)),

          Text("IDR ${textNominal}", style: tsCommonHeadingList.copyWith(color: successColor))
        ],
      ),
    );
  }
}

