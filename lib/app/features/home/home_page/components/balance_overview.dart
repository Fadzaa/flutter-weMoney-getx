import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../common/helper/index.dart';


class BalanceOverview extends StatelessWidget {
  const BalanceOverview({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return  Container(
      width: width,
      height: height * 0.071,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BALANCE USED",
                    style: tsCommonHeadingCard,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Text(
                          "IDR",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              color: successColor,
                              fontSize: 10),
                        ),
                      ),
                      Text(
                        "1.200.000",
                        style: tsSmallBalance,
                      )
                    ],
                  )
                ],
              )),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LIMIT BALANCE",
                    style: tsCommonHeadingCard,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Text(
                          "IDR",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              color: errorColor,
                              fontSize: 10),
                        ),
                      ),
                      Text(
                        "3.000.000",
                        style: tsSmallBalance.copyWith(color: errorColor),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
