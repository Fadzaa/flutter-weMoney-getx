import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/helper/index.dart';

class ConnectAccount extends StatelessWidget {
  const ConnectAccount({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        "CONNECT TO OUR COOPERATION PARTNERS",
                        style: tsCommonHeadingCard,
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      height: 1,
                      color: lineColor,
                      thickness: 1
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/icon_add_card.svg"),
                          Text("Add New Account", style: tsPrimaryMedium.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w600
                          ),),

                        ],
                      ),
                    ),
                  )
                ],
              )),

        ],
      ),
    );
  }
}
