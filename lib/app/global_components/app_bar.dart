import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../common/helper/index.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    required this.text,
    required this.showIcon,
    this.image
  });

  final String text;
  final String? image;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Get.back(),
            child: SvgPicture.asset("assets/icon_arrow_back.svg")
        ),

        Text(text.toUpperCase(), style: tsHeading,),

        showIcon ? SvgPicture.asset(image!) : const SizedBox()

      ],
    );
  }
}
