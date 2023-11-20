import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/helper/index.dart';

class InsightAppBar extends StatelessWidget {
  const InsightAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.0875,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(16),
        //     bottomRight: Radius.circular(16)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icon/icon_insight_active.svg",
            width: 45,
            height: 45,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Insight",
                style: tsPrimaryMedium.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),

              Text(
                "Get more Insight about your Spending",
                style: tsCommonHeadingCard,
              ),

            ],
          )
        ],
      ),
    );
  }
}
