import 'package:flutter/material.dart';

import '../../../../common/helper/index.dart';


class TotalBalance extends StatelessWidget {
  const TotalBalance({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
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
                            Text(
                              "TOTAL BALANCE",
                              style: tsCommonHeadingCard,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/details_balance.png",
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Details",
                              style:
                              tsPrimaryMedium.copyWith(fontSize: 8),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin:
                                EdgeInsets.only(bottom: 6, right: 5),
                                child: Text(
                                  "IDR",
                                  style: tsCurrency,
                                )),
                            Text(
                              "4.000.000",
                              style: tsBalance,
                            ),
                          ],
                        )),
                  ],
                )),
            Container(
              height: 1,
              width: width,
              color: lineColor,
            ),
            accountList(
                icon: "assets/icon_gopay.png",
                accountCard: "GOPAY",
                accountName: "+62 8956-3909-0806",
                accountBalance: "750.000"),
            Container(
              height: 1,
              width: width,
              color: lineColor,
            ),
            accountList(
                icon: "assets/icon_bri.png",
                accountCard: "BANK BRI",
                accountName: "FATTAH ANGGIT AL DZAKWAN",
                accountBalance: "3.250.000"),
          ],
        ),
      ),
    );
  }
}

Widget accountList(
    {required String icon,
      required String accountCard,
      required String accountName,
      required String accountBalance}) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(icon),
            SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(accountCard, style: tsCommonHeadingList),
                SizedBox(
                  height: 4,
                ),
                Text(accountName, style: tsCommonSubheadingList),
              ],
            ),
          ],
        ),
        Text(
          "IDR ${accountBalance}",
          style: tsCommonHeadingList,
        )
      ],
    ),
  );
}
