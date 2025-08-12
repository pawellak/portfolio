import 'package:another_flushbar/flushbar.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/icons/cl_icon.dart';
import 'package:components_library/widgets/label/label.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const _toastDurationInSec = 3;

//because Flushbar is not constant
// ignore: must_be_immutable
class ClSnackBarWidget extends Flushbar<void> {
  ClSnackBarWidget({
    super.key,
    required this.iconColor,
    required this.textStyle,
    required super.backgroundColor,
    required Color textColor,
    required String message,
    required this.widgetMargin,
  }) : super(
          messageText: Label(message, color: textColor, style: textStyle),
          duration: const Duration(seconds: _toastDurationInSec),
          margin: const EdgeInsets.all(Dimens.dimen16),
          shouldIconPulse: false,
          flushbarPosition: FlushbarPosition.TOP,
          borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen4)),
        );

  final Color iconColor;
  final TextStyle? textStyle;
  final double widgetMargin;

  @override
  EdgeInsets get margin => EdgeInsets.symmetric(horizontal: widgetMargin);

  @override
  Widget? get mainButton => IconButton(onPressed: dismiss, icon: ClIcon(path: FontAwesomeIcons.closedCaptioning, color: iconColor));
}
