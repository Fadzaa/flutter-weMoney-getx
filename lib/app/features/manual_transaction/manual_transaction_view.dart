import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';

import '../../../common/helper/index.dart';

class ManualTransactionView extends GetView {
  const ManualTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 15, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("MANUAL TRANSACTION", style: tsHeading,)),

            Container(
              width: width,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: lineColor, width: 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: primaryColor,
                                      height: 1,
                                      width: width * 0.48,
                                      margin: EdgeInsets.only(bottom: 10),
                                    ),
                                    Text(
                                      "FILL AMOUNT OF MONEY",
                                      style: tsPrimaryMedium.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "0.00",
                                  hintStyle: tsPrimaryMedium.copyWith(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor),
                                  border: InputBorder.none,
                                ),
                                style: tsPrimaryMedium.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: lineColor,
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TRANSACTION NAME",
                            style: tsPrimaryMedium.copyWith(
                              fontWeight: FontWeight.w600,
                            )),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Fill Transaction Name",
                            hintStyle: tsHint,
                            border: InputBorder.none,
                          ),
                          style: tsPrimaryMedium.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),

                        ),
                      ],
                    ),
                  ),

                  const Divider(
                    color: lineColor,
                    height: 1,
                    thickness: 1,
                  ),



                    Container(
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("CATEGORY",
                                  style: tsPrimaryMedium.copyWith(
                                    fontWeight: FontWeight.w600,
                                  )),

                              SizedBox(
                                width: 100,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Select Category",
                                    hintStyle: tsHint,
                                    border: InputBorder.none,
                                  ),
                                  style: tsPrimaryMedium.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor),

                                ),
                              ),
                            ],
                          ),

                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
