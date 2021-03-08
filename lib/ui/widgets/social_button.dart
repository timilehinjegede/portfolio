import 'package:flutter/material.dart';
import 'package:portfolio/core/models/models.dart';
import 'package:portfolio/utils/utils.dart';

class SocialButton extends StatefulWidget {
  final Social social;

  const SocialButton({Key key, @required this.social}) : super(key: key);

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  Color _buttonColor = blackColor;
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.social.name,
      child: InkWell(
        onHover: (bool value) {
          setState(() {
            _isHovering = value;
            _buttonColor = _isHovering ? whiteColor : blackColor;
          });
        },
        borderRadius: BorderRadius.circular(buttonRadius),
        onTap: () => launchUrl(url: widget.social.url),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: ResponsiveUtil.isMobile(context)
              ? mButtonRadius * 2
              : buttonRadius * 2,
          width: ResponsiveUtil.isMobile(context)
              ? mButtonRadius * 2
              : buttonRadius * 2,
          decoration: BoxDecoration(
            color: _buttonColor,
            border: Border.all(
              color: whiteColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(buttonRadius),
          ),
          child: Center(
            child: Image.asset(
              widget.social.assetSrc,
              height: ResponsiveUtil.isMobile(context)
                  ? mButtonRadius
                  : buttonRadius,
              width: ResponsiveUtil.isMobile(context)
                  ? mButtonRadius
                  : buttonRadius,
              fit: BoxFit.cover,
              color: _isHovering ? blackColor : whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
