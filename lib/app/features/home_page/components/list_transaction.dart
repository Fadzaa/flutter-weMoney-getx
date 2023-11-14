import 'package:flutter/material.dart';
import 'package:we_money_getx/app/global_components/common_heading.dart';
import 'package:we_money_getx/common/helper/index.dart';

class ListTransaction extends StatelessWidget {
  const ListTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "LAST TRANSACTION",
              style: tsHeading,
            ),
            Text(
              "See All",
              style: tsPrimaryMedium,
            )
          ],
        ),

        Container(
          margin: EdgeInsets.only(top: 16),
          padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CommonHeading(text: "Today"),

              TransactionLayout(),
              TransactionLayout(),

              CommonHeading(text: "Today"),

              TransactionLayout(),

              CommonHeading(text: "Today"),
              TransactionLayout(),
              TransactionLayout(),
              TransactionLayout(),

            ],
          ),
        ),


      ],
    );
  }
}





class TransactionLayout extends StatelessWidget {
  const TransactionLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,

      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image.asset("assets/icon_gopay.png", width: 50, height: 50,),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle
                    ),
                  ),

                  SizedBox(
                    width: 6,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("GOPAY", style: tsCommonHeadingList),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text("•", style: tsCommonHeadingList),
                          ),
                          Text("+62895639090806", style: tsCommonSubheadingList),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text("PIZZA HUT PEPPERONI LARGE" ,style: tsCommonHeadingCard.copyWith(fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),

                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("10:00 AM", style: tsCommonSubheadingList),
                  SizedBox(height: 5,),
                  Text("- IDR 150.000", style: tsCommonHeadingList.copyWith(color: errorColor)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Divider(
            color: lineColor,
            height: 1, // Adjust the height of the line
            thickness: 1, // Adjust the thickness of the line
          )
        ],
      ),
    );
  }
}
