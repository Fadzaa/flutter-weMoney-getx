import 'package:flutter/material.dart';

import '../../common/helper/index.dart';

class CommonHeading extends StatelessWidget {
   const CommonHeading({
    required this.text,
    super.key
  });

   final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: primaryColor,
          height: 1,
          width: MediaQuery.of(context).size.width * 0.23,
          margin: EdgeInsets.only(bottom: 10),
        ),
        Text(
          text.toUpperCase(),
          style: tsCommonHeadingCard,
        ),
      ],
    );
  }
}
