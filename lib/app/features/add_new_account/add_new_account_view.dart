import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';

import '../../../common/helper/index.dart';

class AddNewAccountView extends StatelessWidget {
  const AddNewAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 20, 18, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonAppBar(text: "ADD NEW ACCOUNT", showIcon: false),

              SizedBox(height: 25,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: primaryColor,
                    height: 1,
                    width: width * 0.23,
                    margin: EdgeInsets.only(bottom: 10),
                  ),

                  Text(
                    "CONNECTED ACCOUNT",
                    style: tsCommonHeadingCard,
                  ),

                  SizedBox(height: 10,),

                  SvgPicture.asset("assets/icon/icon_nothing.svg"),

                  SizedBox(height: 5,),

                  Text("NO ACCOUNT NOTHING", style: tsPrimaryMedium.copyWith(
                    fontWeight: FontWeight.w600
                  ),),

                  SizedBox(height: 7,),

                  Text("Please add manual balance or connect into online payment", style: tsCommonSubheadingList),
                ],
              ),

              SizedBox(height: 44,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: primaryColor,
                    height: 1,
                    width: width * 0.23,
                    margin: EdgeInsets.only(bottom: 10),
                  ),

                  Text(
                    "MOBILE BANKING",
                    style: tsCommonHeadingCard,
                  ),

                  SizedBox(height: 10,),

                  Column(
                    children: [
                      Row(
                        children: [
                          Container(width: 30, height: 30, color: Colors.blue,),

                          SizedBox(width: 8,),

                          Text("BANK BCA", style: tsCommonHeadingList,)


                        ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(width: 30, height: 30, color: Colors.blue,),

                          SizedBox(width: 8,),

                          Text("BANK BCA", style: tsCommonHeadingList,)


                        ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(width: 30, height: 30, color: Colors.blue,),

                          SizedBox(width: 8,),

                          Text("BANK BCA", style: tsCommonHeadingList,)


                        ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),

                ],
              ),

              SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: primaryColor,
                    height: 1,
                    width: width * 0.23,
                    margin: EdgeInsets.only(bottom: 10),
                  ),

                  Text(
                    "E-WALLET",
                    style: tsCommonHeadingCard,
                  ),

                  SizedBox(height: 10,),

                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Container(width: 30, height: 30, color: Colors.blue,),

                            SizedBox(width: 8,),

                            Text("BANK BCA", style: tsCommonHeadingList,)


                          ]
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        color: lineColor,
                        thickness: 1,
                        height: 1,
                      ),

                      SizedBox(height: 10,),


                    ],
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
