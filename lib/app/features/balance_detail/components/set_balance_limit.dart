import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'package:syncfusion_flutter_core/theme.dart';

import '../../../../common/helper/index.dart';
import '../../../../common/helper/text_formatting.dart';

class SetBalanceLimit extends StatefulWidget {
  const SetBalanceLimit({super.key});

  @override
  State<SetBalanceLimit> createState() => _SetBalanceLimitState();
}

class _SetBalanceLimitState extends State<SetBalanceLimit> {
  double value = 40.0;
  TextEditingController textEditingController = TextEditingController();
  NumberFormat numberFormat = NumberFormat.currency(locale: 'id_ID', symbol: '', decimalDigits: 0);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        width: width,
        padding: const EdgeInsets.only(
          top: 15,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: lineColor, width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: primaryColor,
                              height: 1,
                              width: width * 0.23,
                              margin: EdgeInsets.only(bottom: 10),
                            ),
                            Row(
                              children: [
                                Text(
                                  "SET BALANCE LIMIT",
                                  style: tsCommonHeadingCard,
                                ),

                                SizedBox(width: 5,),

                                Text(
                                  "(Per Month)",
                                  style: tsCommonHeadingCard.copyWith(
                                      fontSize: 8, fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "SET",
                          style: tsPrimaryMedium,
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: width * 0.8,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 34),
                                          child: TextField(
                                            controller: textEditingController,
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
                                ),
                              ],
                            ),

                            SfSliderTheme(
                              data:  SfSliderThemeData(
                                activeLabelStyle: tsCommonSubheadingList.copyWith(fontSize: 12),
                                inactiveLabelStyle: tsCommonSubheadingList.copyWith(fontSize: 12),
                              ),
                              child: SfSlider(
                                min: 0,
                                stepSize: 50000,
                                // interval: 50000,
                                max: 5000000,
                                value: value,
                                activeColor: primaryColor,
                                numberFormat: numberFormat,
                                showLabels: true,
                                labelPlacement: LabelPlacement.onTicks,
                                onChanged: (dynamic newValue) {
                                  setState(() {
                                    value = newValue;


                                    textEditingController.text = numberFormat.format(value);

                                  });
                                },
                              ),
                            )
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
