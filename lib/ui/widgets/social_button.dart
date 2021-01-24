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
  double _radius = 40;
  Color _buttonColor = blackColor;
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.social.name,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        onHover: (bool value) {
          setState(() {
            _isHovering = value;
            _radius = _isHovering ? 40 : 35;
            _buttonColor = _isHovering ? whiteColor : blackColor;
          });
        },
        onTap: () {},
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: _radius * 2,
          width: _radius * 2,
          decoration: BoxDecoration(
            color: _buttonColor,
            border: Border.all(
              color: whiteColor,
              width: 1.5,
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              widget.social.assetSrc,
              height: _radius,
              width: _radius,
              fit: BoxFit.cover,
              color: _isHovering ? blackColor : whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
