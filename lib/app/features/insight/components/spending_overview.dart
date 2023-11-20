import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_money_getx/common/helper/index.dart';

class SpendingOverview extends StatelessWidget {
  const SpendingOverview({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: primaryColor,
                      height: 1,
                      width: 100,
                      margin: EdgeInsets.only(bottom: 10),
                    ),
                    Text(
                      "SPENDING OVERVIEW",
                      style: tsPrimaryMedium.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15,),

                Row(
                  children: [
                    Expanded(
                      child: Text("THIS MONTH",
                        style: tsCommonHeadingCard.copyWith(
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("LAST MONTH",
                          style: tsCommonHeadingCard.copyWith(
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Divider(color: lineColor, height: 1, thickness: 1),
          ),

          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextOverview(
                        headerText: "Total Spending",
                        nominalText: "1.200.000",
                        isLastMonth: false,
                        showMostSpending: false,
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextOverview(
                      headerText: "Total Spending",
                      nominalText: "2.400.000",
                      isLastMonth: true,
                      showMostSpending: false,
                    ),
                  )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Divider(color: lineColor, height: 1, thickness: 1),
          ),

          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextOverview(
                      headerText: "Daily Average",
                      nominalText: "75.000",
                      isLastMonth: false,
                      showMostSpending: false,
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextOverview(
                      headerText: "Daily Average",
                      nominalText: "88.000",
                      isLastMonth: true,
                      showMostSpending: false,
                    ),
                  )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Divider(color: lineColor, height: 1, thickness: 1),
          ),

          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextOverview(
                      headerText: "Most Spending On",
                      nominalText: "660.000",
                      isLastMonth: false,
                      showMostSpending: true,
                      mostSpending: "Food and Beverage",
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextOverview(
                      headerText: "Most Spending On",
                      nominalText: "800.000",
                      isLastMonth: true,
                      showMostSpending: true,
                      mostSpending: "Entertainment",
                    ),
                  )
              ),
            ],
          ),





        ],
      ),
    );
  }
}


class TextOverview extends StatelessWidget {
  const TextOverview({
    required this.headerText,
    required this.nominalText,
    required this.isLastMonth,
    required this.showMostSpending,
    this.mostSpending,
    super.key
  });

  final String headerText;
  final String nominalText;
  final bool isLastMonth;
  final bool showMostSpending;
  final String? mostSpending;

  @override
  Widget build(BuildContext context) {
    return showMostSpending
        ? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),

        Text(headerText, style: tsCommonHeadingCard),

        SizedBox(height: 2,),

        Text(mostSpending ?? "", style: tsCommonHeadingCard.copyWith(
            color: isLastMonth ? secondaryTextColor : primaryColor,
            fontWeight: FontWeight.w600
        )),

        SizedBox(height: 8,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(" IDR", style: tsCommonHeadingCard.copyWith(
                  color: isLastMonth ? secondaryTextColor : primaryColor
              ),),
            ),

            Text(nominalText, style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: isLastMonth ? secondaryTextColor : primaryColor
            ),
            )

          ],
        )

      ],
    )
        : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),

        Text(headerText, style: tsCommonHeadingCard),

        SizedBox(height: 8,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(" IDR", style: tsCommonHeadingCard.copyWith(
                  color: isLastMonth ? secondaryTextColor : primaryColor
              ),),
            ),

            Text(nominalText, style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: isLastMonth ? secondaryTextColor : primaryColor
            ),
            )

          ],
        )

      ],
    );
  }
}


