import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';

class AddNewAccountView extends StatelessWidget {
  const AddNewAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 20, 18, 0),
        child: Column(
          children: [
            CommonAppBar(text: "ADD NEW ACCOUNT", showIcon: false),

            SizedBox(height: 25,),


          ],
        ),
      ),
    );
  }
}
