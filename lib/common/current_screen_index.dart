import 'package:trading_point/card_screen.dart';
import 'package:trading_point/home_page_sceen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_point/portfolio.dart';

class CurrentScreenIndex extends StatelessWidget {
  final int index;

  CurrentScreenIndex(
      this.index,
      );

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 1:
        {
          return PortfolioScreen();
        }
        break;
      case 2:
        {
          return CardScreen();
        }
        break;
      case 3:
        {
          return HomePageScreen();
        }
        break;
      default:
        {
          return HomePageScreen();
        }
        break;
    }
  }
}