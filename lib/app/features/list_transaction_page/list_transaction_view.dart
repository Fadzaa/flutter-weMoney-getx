import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';
import 'package:we_money_getx/common/routes/app_pages.dart';

import '../../global_components/common_heading.dart';
import '../home_page/components/list_transaction.dart';

class ListTransactionView extends GetView {
  const ListTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.fromLTRB(16, 25, 16, 0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CommonAppBar(
                 text: "LAST 7 DAY TRANSACTION",
                 showIcon: true,
                 image: "assets/icon_filter.svg",),

              SizedBox(height: 25,),

              CommonHeading(text: "Today"),

              TransactionLayout(),
              TransactionLayout(),

              CommonHeading(text: "YESTERDAY"),

              TransactionLayout(),

              CommonHeading(text: "Today"),
              TransactionLayout(),

              CommonHeading(text: "Today"),
              TransactionLayout(),
              TransactionLayout(),
              TransactionLayout(),
              TransactionLayout(),

              CommonHeading(text: "Today"),
              TransactionLayout(),
              TransactionLayout(),
              TransactionLayout(),
            ],
          ),
        ),
      ),
    );
  }
}
