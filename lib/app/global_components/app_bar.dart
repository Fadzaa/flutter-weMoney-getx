import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/helper/index.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/icon_arrow_back.svg"),

        Text(text.toUpperCase(), style: tsHeading,),

        const SizedBox()

      ],
    );
  }
}
