import 'dart:async';

import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_lottie.dart';
import 'package:components_library/utils/extensions/theme_extensions.dart';
import 'package:components_library/widgets/icons/cl_lottie.dart';
import 'package:flutter/material.dart';

const _defaultLottieRoundTimeInMs = 1000;

class LoadingOverlay extends StatefulWidget {
  const LoadingOverlay({super.key, required Widget child, required bool initialLoading})
    : _child = child,
      _initialLoading = initialLoading;

  final Widget _child;
  final bool _initialLoading;

  static _LoadingOverlayState? of(BuildContext context) => context.findAncestorStateOfType<_LoadingOverlayState>();

  @override
  State<LoadingOverlay> createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<LoadingOverlay> {
  bool _isLoading = false;
  bool _isBlockedUI = false;

  Timer? _timer;

  @override
  void initState() {
    _isLoading = widget._initialLoading;
    super.initState();
  }

  void blockUI() {
    if (_isBlockedUI == false) {
      setState(() {
        _isBlockedUI = true;
      });
    }
  }

  void unBlockUI() {
    if (_isBlockedUI == true) {
      setState(() {
        _isBlockedUI = false;
      });
    }
  }

  void show() {
    if (_isLoading == false) {
      blockUI();
      _timer = Timer(const Duration(milliseconds: 400), () {
        setState(() {
          _isBlockedUI = false;
          _isLoading = true;
        });
      });
    }
  }

  void hide() {
    _timer?.cancel();
    if (_isLoading || _isBlockedUI) {
      setState(() {
        _isLoading = false;
        _isBlockedUI = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      widget._child,
      if (_isBlockedUI) const ModalBarrier(dismissible: false),
      if (_isLoading) ModalBarrier(dismissible: false, color: context.colorTokens.overlayDarkBackgroundColor),
      if (_isLoading)
        Center(
          child: ClLottie(
            height: Dimens.dimen300,
            width: Dimens.dimen300,
            path: AppLottie.example,
            color: context.colorTokens.textWhite,
            repeatTimeInMs: _defaultLottieRoundTimeInMs,
          ),
        ),
    ],
  );
}
