import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class PortfolioTradeMark extends StatelessWidget {
  const PortfolioTradeMark({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Text(
          'Tim',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: whiteColor,
            letterSpacing: 1.5,
          ),
        ),
        XBox(2),
        Padding(
          padding: EdgeInsets.only(bottom: 4),
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
