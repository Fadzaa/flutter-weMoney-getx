import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/helper/index.dart';
import '../../../model/chart.dart';

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

                  Container(
                      width: width,
                      height: height * 0.25,
                      child: SfCircularChart(
                          legend: Legend(
                              isVisible: true,
                              position: LegendPosition.right,
                              textStyle: tsCommonHeadingList
                          ),
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
                              radius: '100%',
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
                  )


                ],
              )),

        ],
      ),
    );
  }
}
