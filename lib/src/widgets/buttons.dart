import 'package:flutter/material.dart';
import 'package:productivity/src/resources/r.dart';

abstract class _MyCustomButton extends StatelessWidget {
  const _MyCustomButton({
    this.child,
    this.roundRadius,
    this.buttonColor,
    this.buttonOverlayColor,
    this.buttonShadowColor,
    this.onPressed,
  });

  final Widget child;
  final double roundRadius;
  final Color buttonColor;
  final Color buttonOverlayColor;
  final Color buttonShadowColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(roundRadius ?? 16),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.all<Color>(buttonColor ?? primary),
        overlayColor:
            MaterialStateProperty.all<Color>(buttonOverlayColor ?? secondary),
        shadowColor:
            MaterialStateProperty.all<Color>(buttonShadowColor ?? primary),
        elevation: MaterialStateProperty.all<double>(4),
      ),
    );
  }
}

class RoundedButton extends _MyCustomButton {
  const RoundedButton({
    @required Widget child,
    @required void Function() onPressed,
    double roundRadius,
    Color buttonColor,
    Color buttonOverlayColor,
    Color buttonShadowColor,
  }) : super(
          child: child,
          roundRadius: roundRadius,
          buttonColor: buttonColor,
          buttonOverlayColor: buttonOverlayColor,
          buttonShadowColor: buttonShadowColor,
          onPressed: onPressed,
        );

  factory RoundedButton.icon({
    @required void Function() onPressed,
    @required Icon icon,
    @required Text label,
    double roundRadius,
    Color buttonColor,
    Color buttonOverlayColor,
    Color buttonShadowColor,
  }) = _RoundedButtonWithIcon;
}

class _RoundedButtonWithIcon extends RoundedButton {
  _RoundedButtonWithIcon({
    double roundRadius,
    Color buttonColor,
    Color buttonOverlayColor,
    Color buttonShadowColor,
    void Function() onPressed,
    Icon icon,
    Text label,
  }) : super(
          child: _RoundedButtonWithIconChild(
            icon: icon,
            label: label,
          ),
          roundRadius: roundRadius,
          buttonColor: buttonColor,
          buttonOverlayColor: buttonOverlayColor,
          buttonShadowColor: buttonShadowColor,
          onPressed: onPressed,
        );
}

class _RoundedButtonWithIconChild extends StatelessWidget {
  const _RoundedButtonWithIconChild({
    this.icon,
    this.label,
  });
  final Icon icon;
  final Text label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        icon,
        littleSpaceWidget,
        label,
      ],
    );
  }
}
