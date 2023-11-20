import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/features/home/home_page/components/total_balance.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';
import 'package:we_money_getx/common/routes/app_pages.dart';

import '../../../../common/helper/index.dart';
import '../../../../common/helper/text_formatting.dart';

class AddCashBalanceView extends StatelessWidget {
  const AddCashBalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 15, 18, 15),
        child: Column(
          children: [
            CommonAppBar(text: "ADD CASH BALANCE", showIcon: false),

            SizedBox(height: 20,),

            Container(
              width: width,
              padding: const EdgeInsets.only(
                top: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: lineColor, width: 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: primaryColor,
                                      height: 1,
                                      width: width * 0.48,
                                      margin: EdgeInsets.only(bottom: 10),
                                    ),
                                    Text(
                                      "FILL AMOUNT OF MONEY",
                                      style: tsPrimaryMedium.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 34),
                                    child: TextField(
                                      // focusNode: focusNode,
                                      inputFormatters: [maskFormatter],
                                      showCursor: false,
                                      decoration: InputDecoration(
                                        hintText: "0",
                                        hintStyle: tsBalance.copyWith(
                                            color: hintColor
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: tsBalance,
                                      onChanged: (value) {
                                        if (value.length == 3 || value.length == 7) {
                                          // Add a period after the third digit
                                          maskFormatter.updateMask(mask: '#.###.###');
                                          print(value);
                                        } else if (value.length == 5 || value.length == 9){
                                          // Allow only three digits before the period
                                          maskFormatter.updateMask(mask: "##.###.###");
                                        } else if (value.length == 0) {
                                          maskFormatter.updateMask(mask: "#");
                                        }else {
                                          maskFormatter.updateMask(mask: "###.###.###");
                                        }
                                        // Get the current cursor position
                                        // final cursorPosition = _controller.selection.start;
                                        //
                                        // // Set the cursor position after updating the mask
                                        // _controller.selection = TextSelection.fromPosition(
                                        //   TextPosition(offset: cursorPosition + 2),
                                        // );
                                      },
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 14,
                                      child: Text("IDR",
                                          style: tsHint.copyWith(
                                              fontSize: 16,
                                              color:
                                              // controller.focusNode.hasFocus ? primaryTextColor :
                                              hintColor
                                          ))
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: lineColor,
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),

                  accountList(
                      icon: "assets/icon_cash.png",
                      accountCard: "TOTAL BALANCE",
                      accountName: "FATTAH ANGGIT AL DZAKWAN",
                      accountBalance: "0"
                  )

                ],
              ),
            ),

            Expanded(child: Container()),

            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width, 40),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Text("Confirm", style: tsButton,)
            )

          ],
        ),
      )
    );
  }
}
