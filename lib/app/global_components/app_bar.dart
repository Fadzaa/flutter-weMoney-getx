import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/helper/index.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    required this.text,
    required this.showIcon,
    // required this.route,
    this.image
  });

  final String text;
  final String? image;
  final bool showIcon;
  // final VoidCallback route;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          // onTap: route,
            child: SvgPicture.asset("assets/icon_arrow_back.svg")
        ),

        Text(text.toUpperCase(), style: tsHeading,),

        showIcon ? SvgPicture.asset(image!) : const SizedBox()

      ],
    );
  }
}
