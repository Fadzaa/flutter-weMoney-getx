import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/features/manual_transaction/manual_transaction_controller.dart';
import 'package:we_money_getx/app/global_components/app_bar.dart';
import 'package:we_money_getx/common/helper/text_formatting.dart';

import '../../../common/helper/index.dart';

class ManualTransactionView extends GetView<ManualTransactionController> {
  const ManualTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController _controller = TextEditingController();
    final FocusNode focusNode = FocusNode();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 15, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("MANUAL TRANSACTION", style: tsHeading,)),

            Container(
              width: width,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
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
                                      focusNode: focusNode,
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
                                            color: controller.focusNode.hasFocus ? primaryTextColor : hintColor
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

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TRANSACTION NAME",
                            style: tsPrimaryMedium.copyWith(
                              fontWeight: FontWeight.w600,
                            )),

                        TextField(
                          textCapitalization: TextCapitalization.characters,
                          decoration: InputDecoration(
                            hintText: "Fill Transaction Name",
                            hintStyle: tsHint,
                            border: InputBorder.none,
                          ),

                          style: tsCommonHeadingList,

                        ),
                      ],
                    ),
                  ),

                  const Divider(
                    color: lineColor,
                    height: 1,
                    thickness: 1,
                  ),



                    Container(
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("CATEGORY",
                                  style: tsPrimaryMedium.copyWith(
                                    fontWeight: FontWeight.w600,
                                  )),

                              SizedBox(
                                width: 100,
                                child: TextField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: "Select Category",
                                    hintStyle: tsHint,
                                    border: InputBorder.none,
                                  ),


                                ),
                              ),
                            ],
                          ),

                          InkWell(
                              child: SvgPicture.asset("assets/icon/icon_arrow_down.svg")
                          )
                        ],
                      ),
                    ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
