import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class PortfolioTradeMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Tim',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: whiteColor,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: SizedBox(
            height: 8,
            width: 8,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
