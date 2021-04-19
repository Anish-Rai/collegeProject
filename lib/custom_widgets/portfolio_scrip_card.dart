import 'package:trading_point/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioScripCard extends StatelessWidget {
  final int index;

  PortfolioScripCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 5,
      ),
      child: Container(
        height: 175,
        width: MediaQuery
            .of(context)
            .size
            .width - 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.cblackColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 35, top: 50, bottom: 10, right: 10),
                  child: Text(
                    'Scrip Name: Rs 210000',
                    style: GoogleFonts.spartan(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.kwhiteColor,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 0,
                    top: 10,
                    bottom: 15,
                  ),
                  child: Text(
                    'Total Units: 1500',
                    style: GoogleFonts.spartan(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.kwhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}