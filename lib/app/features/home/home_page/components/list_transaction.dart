import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/global_components/common_heading.dart';
import 'package:we_money_getx/common/helper/index.dart';

import '../../../../../common/routes/app_pages.dart';
import '../../../../model/transaction.dart';

class ListTransaction extends StatelessWidget {
  const ListTransaction({super.key});

  @override
  Widget build(BuildContext context) {

    List<Transaction> transactions = [
      Transaction(
        paymentMethod: 'GOPAY',
        phoneNumber: '+62895639090806',
        description: 'PIZZA HUT PEPPERONI LARGE',
        time: '10:00 AM',
        amount: -150000,
      ),
      Transaction(
        paymentMethod: 'GOPAY',
        phoneNumber: '+62895639090806',
        description: 'Some Transaction',
        time: '11:30 AM',
        amount: -50000,
      ),
      Transaction(
        paymentMethod: 'OVO',
        phoneNumber: '+62895639090806',
        description: 'Coffee Shop',
        time: '01:15 PM',
        amount: -25000,
      ),
      // Add more transactions as needed
    ];

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
            InkWell(
              onTap: () {Get.toNamed(Routes.LIST_TRANSACTION);},
              child: Text(
                "See All",
                style: tsPrimaryMedium,
              ),
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
