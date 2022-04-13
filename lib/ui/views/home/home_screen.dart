// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio/core/models/models.dart';
import 'package:portfolio/ui/widgets/widgets.dart';
import 'package:portfolio/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveUtil.isMobile(context)
              ? hPaddingValue / 3
              : hPaddingValue,
          vertical: vPaddingValue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const PortfolioTradeMark(),
                FlatButton(
                  height: 40,
                  onPressed: () {
                    launchUrl(url: resumeUrlV3);
                  },
                  textColor: whiteColor,
                  color: yellowColor,
                  child: const Text(
                    viewResume,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            _AboutSection(),
            _SocialsSection(),
          ],
        ),
      ),
    );
  }
}

class _AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: ResponsiveUtil.isMobile(context) ? 120 : 150,
          width: ResponsiveUtil.isMobile(context) ? 120 : 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(avatar),
            ),
          ),
        ),
        const YBox(30),
        Text(
          name,
          style: Theme.of(context).textTheme.headline3.copyWith(
                color: whiteColor,
                fontWeight: FontWeight.w900,
              ),
          textAlign: TextAlign.center,
        ),
        const YBox(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 8,
              width: 8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const XBox(8),
            Text(
              roleOne,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: whiteColor,
                  ),
            ),
          ],
        ),
        const YBox(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 8,
              width: 8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const XBox(8),
            Text(
              roleTwo,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: whiteColor,
                  ),
            ),
          ],
        ),
        const YBox(30),
        FlatButton(
          height: 50,
          onPressed: () {
            launchUrl(url: projectsUrl);
          },
          textColor: whiteColor,
          color: yellowColor,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                viewMyWorks,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              XBox(10),
              Icon(
                Icons.arrow_forward_rounded,
                color: whiteColor,
                size: 18,
              ),
            ],
          ),
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
      spacing: 20,
      runSpacing: 10,
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
