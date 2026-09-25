import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ClLottie extends StatefulWidget {
  const ClLottie({
    super.key,
    required this.path,
    this.color,
    this.height,
    this.width,
    this.boxFit,
    this.repeatTimeInMs,
    this.blendMode,
    this.isStatic = false,
  });

  final String path;
  final Color? color;
  final double? width;
  final bool isStatic;
  final double? height;
  final BoxFit? boxFit;
  final int? repeatTimeInMs;
  final BlendMode? blendMode;

  @override
  State<ClLottie> createState() => _ClLottieState();
}

class _ClLottieState extends State<ClLottie> with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _setupController();
  }

  @override
  void didUpdateWidget(covariant ClLottie oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.repeatTimeInMs != oldWidget.repeatTimeInMs || widget.isStatic != oldWidget.isStatic) {
      _controller?.dispose();
      _setupController();
    }
  }

  void _setupController() {
    final repeatTimeInMs = widget.repeatTimeInMs;
    if (repeatTimeInMs != null && !widget.isStatic) {
      _controller = AnimationController(duration: Duration(milliseconds: repeatTimeInMs), vsync: this)..repeat();
    } else {
      _controller = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final lottieWidget = Lottie.asset(
      widget.path,
      animate: !widget.isStatic,
      repeat: _controller != null,
      controller: _controller,
      width: widget.width ?? Dimens.dimen200,
      height: widget.height ?? Dimens.dimen200,
      fit: widget.boxFit ?? BoxFit.contain,
    );

    final color = widget.color;
    if (color == null) {
      return lottieWidget;
    }

    return ColorFiltered(
      colorFilter: ColorFilter.mode(color, widget.blendMode ?? BlendMode.srcIn),
      child: lottieWidget,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
