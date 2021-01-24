import 'package:flutter/material.dart';
import 'package:portfolio/core/models/models.dart';
import 'package:portfolio/ui/widgets/widgets.dart';
import 'package:portfolio/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: hPaddingValue,
            vertical: vPaddingValue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PortfolioTradeMark(),
              Spacer(),
              _AboutSection(),
              SizedBox(
                height: 40,
              ),
              _SocialsSection(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.headline3.copyWith(
                color: whiteColor,
                fontWeight: FontWeight.w900,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 25,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 5.0,
          direction: Axis.vertical,
          children: [
            Row(
              children: [
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
                SizedBox(
                  width: 5,
                ),
                Text(
                  roleOne,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: whiteColor,
                      ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
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
                SizedBox(
                  width: 5,
                ),
                Text(
                  roleTwo,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: whiteColor,
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.0,
      runSpacing: 10.0,
      children: [
        ...List.generate(
          Social.socialsList.length,
          (index) => SocialButton(
            social: Social.socialsList[index],
          ),
        ),
      ],
    );
  }
}
