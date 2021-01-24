import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class PortfolioTradeMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Tim',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: whiteColor,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        SizedBox(
          height: 8,
          width: 8,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: whiteColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
