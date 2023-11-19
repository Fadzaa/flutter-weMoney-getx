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
                      child: Text("LAST MONTH",
                        style: tsCommonHeadingCard.copyWith(
                            fontWeight: FontWeight.w600
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
                    child: TextOverview(headerText: "Total Spending", nominalText: "1.200.000"),
                  )
              ),
              Expanded(
                  child: TextOverview(headerText: "Total Spending", nominalText: "1.200.000")
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
                    child: TextOverview(headerText: "Total Spending", nominalText: "1.200.000"),
                  )
              ),
              Expanded(
                  child: TextOverview(headerText: "Total Spending", nominalText: "1.200.000")
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
                    child: TextOverview(headerText: "Total Spending", nominalText: "1.200.000"),
                  )
              ),
              Expanded(
                  child: TextOverview(headerText: "Total Spending", nominalText: "1.200.000")
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
    super.key
  });

  final String headerText;
  final String nominalText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headerText, style: tsCommonHeadingCard),

        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(" IDR", style: tsCommonHeadingCard.copyWith(
                  color: primaryColor
              ),),
            ),

            Text(nominalText, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: primaryColor
            ),
            )

          ],
        )

      ],
    );
  }
}


