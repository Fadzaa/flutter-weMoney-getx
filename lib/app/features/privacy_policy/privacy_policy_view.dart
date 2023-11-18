import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';
import 'package:we_money_getx/common/helper/colors.dart';
import 'package:we_money_getx/common/helper/index.dart';
import 'package:we_money_getx/common/routes/app_pages.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 25, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonAppBar(
                text: "PRIVACY POLICY",
                showIcon: false,
              ),
              SizedBox(
                height: 25,
              ),
              Text("1. Types data we collect", style: tsHeadingPP),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.",
                  style: tsTextPP),
              SizedBox(
                height: 20,
              ),
              Text("2. Use of your personal data", style: tsHeadingPP),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                style: tsTextPP,
              ),
              SizedBox(
                height: 20,
              ),
              Text("3. Disclosure of your personal data", style: tsHeadingPP),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                style: tsTextPP,
              )
            ],
          ),
        ),
      ),
    );
  }
}
