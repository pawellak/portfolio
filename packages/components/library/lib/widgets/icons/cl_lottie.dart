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
  });

  final String path;
  final Color? color;
  final double? width;
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
    final repeatTimeInMs = widget.repeatTimeInMs;
    if (repeatTimeInMs != null) {
      _controller = AnimationController(
        duration: Duration(milliseconds: repeatTimeInMs),
        vsync: this, // the SingleTickerProviderStateMixin
      )..repeat();
    }
  }

  @override
  Widget build(BuildContext context) => ColorFiltered(
        colorFilter: ColorFilter.mode(
          widget.color ?? Colors.transparent,
          //set dst to turn off blend mode
          widget.blendMode ?? BlendMode.srcIn,
        ),
        child: Lottie.asset(
          repeat: _controller != null,
          widget.path,
          width: widget.width ?? Dimens.dimen200,
          height: widget.height ?? Dimens.dimen200,
          fit: widget.boxFit ?? BoxFit.contain,
          controller: _controller,
        ),
      );

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
