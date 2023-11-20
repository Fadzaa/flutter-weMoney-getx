import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:we_money_getx/app/model/ChartLegend.dart';

import '../../../../common/helper/index.dart';
import '../../../model/Chart.dart';

class SpendingChart extends StatelessWidget {
  const SpendingChart({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final List<ChartData> chartData = [
      ChartData('Food', 30, Color(0xFFF65C6E)),
      ChartData('Healthcare', 10, Color(0xFF1593EF)),
      ChartData('Entertainment', 60, Color(0xFF32DEF5)),


    ];

    final List<ChartDataLegend> chartDataLegend = [
      ChartDataLegend(Color(0xFF32DEF5), "IDR 600.000", "Entertainment"),
      ChartDataLegend(Color(0xFFF65C6E), "IDR 360.000", "Food and Beverage"),
      ChartDataLegend(Color(0xFFFFBE5C), "IDR 180.000", "Healthcare"),
      ChartDataLegend(Color(0xFFFFBE5C), "IDR 180.000", "Healthcare"),
      ChartDataLegend(Color(0xFFFFBE5C), "IDR 180.000", "Healthcare"),
    ];

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: lineColor, width: 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          Text(
                            "GRAPH OF THE MONTH",
                            style: tsPrimaryMedium.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      SvgPicture.asset("assets/icon_filter.svg")

                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: height * 0.21,
                          width: width * 0.38,
                          child: SfCircularChart(
                              // legend: Legend(
                              //     isVisible: true,
                              //     position: LegendPosition.right,
                              //     textStyle: tsCommonHeadingList
                              // ),
                              annotations: <CircularChartAnnotation>[
                                CircularChartAnnotation(
                                  verticalAlignment: ChartAlignment.near,
                                  widget:
                                  Container(
                                    child: Text("IDR 1.200.000", style: tsCommonHeadingList,),
                                  ),
                                ),
                                CircularChartAnnotation(
                                  verticalAlignment: ChartAlignment.far,
                                  widget:
                                  Container(
                                    child: Text("Balance Used", style: tsCommonSubheadingList,),
                                  ),
                                ),

                              ],
                              series: <CircularSeries>[
                                // Renders doughnut chart
                                DoughnutSeries<ChartData, String>(
                                  radius: '120%',
                                  dataSource: chartData,
                                  dataLabelSettings: DataLabelSettings(
                                    isVisible:true,
                                    textStyle: tsCommonSubheadingList.copyWith(color: Colors.white),
                                  ),
                                  pointColorMapper:(ChartData data,  _) => data.color,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y,
                                  innerRadius: '75%',
                                )
                              ]
                          )
                      ),

                      Spacer(),

                      Container(
                        height: height * 0.21,
                        width: width * 0.38,
                        padding: EdgeInsets.only(top: 30),
                        child: ListView.builder(
                          itemCount: chartDataLegend.length,
                          itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              width: 10,
                                              height: 10,
                                              margin: EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                  color: chartDataLegend[index].color,
                                                  shape: BoxShape.circle
                                              ),
                                            ),

                                            Container(
                                              width: 5,
                                              height: 5,
                                              margin: EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle
                                              ),
                                            )
                                          ],
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(chartDataLegend[index].category,
                                              style: GoogleFonts.montserrat(
                                                  color: chartDataLegend[index].color,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10
                                              ),
                                            ),

                                            Text(chartDataLegend[index].nominal,
                                              style: GoogleFonts.montserrat(
                                                  color: secondaryTextColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),

                                    Spacer(),

                                    SvgPicture.asset("assets/icon/icon_arrow_right.svg")

                                  ],
                                ),
                              );
                            }
                        ),
                      )
                    ],
                  )


                ],
              )),

        ],
      ),
    );
  }
}
