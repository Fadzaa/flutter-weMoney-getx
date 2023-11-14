import 'package:flutter/material.dart';

import '../../../../common/helper/index.dart';

class SetBalanceLimit extends StatelessWidget {
  const SetBalanceLimit({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: lineColor, width: 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: primaryColor,
                            height: 1,
                            width: width * 0.23,
                            margin: EdgeInsets.only(bottom: 10),
                          ),

                          Row(
                            children: [
                              Text(
                                "SET BALANCE LIMIT",
                                style: tsCommonHeadingCard,
                              ),

                              Text(
                                "(Per Month)",
                                style: tsCommonHeadingCard.copyWith(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text("SET", style: tsPrimaryMedium,),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "0",
                                hintStyle: tsPrimaryMedium.copyWith(
                                  fontSize: 30,
                                  color: primaryColor
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero
                              ),
                              style: tsPrimaryMedium.copyWith(
                                fontSize: 30,
                                color: primaryTextColor
                              ),
                            ),
                          ),

                        ],
                      )),
                ],
              )),

        ],
      ),
    );
  }
}
