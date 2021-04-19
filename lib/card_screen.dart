import 'package:bezier_chart/bezier_chart.dart';
import 'package:trading_point/common/color_constants.dart';
import 'package:trading_point/common/constants.dart';
import 'package:trading_point/custom_widgets/card_widget.dart';
import 'package:trading_point/custom_widgets/live_watchlist_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: ColorConstants.kwhiteColor,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: ColorConstants.kwhiteColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Live Market',
                  style: GoogleFonts.spartan(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.kwhiteColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Only Available Between 11:00 AM to 3:00 PM',
                  style: GoogleFonts.spartan(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.kgreyColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 3,
              right: 15,
              top: 30,
            ),
            child: Container(
              height: 220,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  child: BezierChart(
                    bezierChartScale: BezierChartScale.CUSTOM,
                    selectedValue: 1,
                    xAxisCustomValues: [1, 5, 10, 15, 20, 25, 30],
                    series: const [
                      BezierLine(
                        label: "june",
                        lineColor: ColorConstants.korangeColor,
                        dataPointStrokeColor: ColorConstants.kwhiteColor,
                        dataPointFillColor: ColorConstants.korangeColor,
                        lineStrokeWidth: 3,
                        data: const [
                          DataPoint<double>(value: 100, xAxis: 1),
                          DataPoint<double>(value: 130, xAxis: 5),
                          DataPoint<double>(value: 300, xAxis: 10),
                          DataPoint<double>(value: 150, xAxis: 15),
                          DataPoint<double>(value: 75, xAxis: 20),
                          DataPoint<double>(value: 100, xAxis: 25),
                          DataPoint<double>(value: 250, xAxis: 30),
                        ],
                      ),
                    ],
                    config: BezierChartConfig(
                      startYAxisFromNonZeroValue: true,
                      verticalIndicatorFixedPosition: false,
                      bubbleIndicatorColor: ColorConstants.gblackColor,
                      bubbleIndicatorLabelStyle:
                      TextStyle(color: ColorConstants.kwhiteColor),
                      bubbleIndicatorTitleStyle:
                      TextStyle(color: ColorConstants.kwhiteColor),
                      bubbleIndicatorValueStyle:
                      TextStyle(color: ColorConstants.kwhiteColor),
                      footerHeight: 40,
                      displayYAxis: false,
                      stepsYAxis: 15,
                      displayLinesXAxis: false,
                      xAxisTextStyle: TextStyle(
                        color: ColorConstants.kblackColor,
                      ),
                      backgroundGradient: LinearGradient(
                        colors: [
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      snap: false,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Watch List",
                  style: GoogleFonts.spartan(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.kwhiteColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                    Constants.titleList.length,
                        (index) {
                      return LiveWatchListWidget(
                        icon: Constants.iconList[index],
                        titleTxt: Constants.titleList[index],
                        subtitleTxt: Constants.subtitleList[index],
                        amount: Constants.amountList[index],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}