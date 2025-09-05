import 'dart:async' show Timer;
import 'dart:convert';

import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_lottie.dart';
import 'package:flutter/material.dart'
    show
        BlendMode,
        BoxFit,
        BuildContext,
        Center,
        ColorFilter,
        ColorFiltered,
        ConnectionState,
        FutureBuilder,
        SizedBox,
        State,
        StatefulWidget,
        Widget;
import 'package:flutter/services.dart' show Uint8List, rootBundle;
import 'package:lottie/lottie.dart';

const _kAnimationDurationInMs = 200;

class ClLoadingIndicator extends StatefulWidget {
  const ClLoadingIndicator({super.key});

  @override
  State<ClLoadingIndicator> createState() => _ClLoadingIndicatorState();
}

class _ClLoadingIndicatorState extends State<ClLoadingIndicator> {
  Future<Uint8List>? _precacheFuture;
  bool _showLoader = false;
  Timer? _loaderTimer;

  @override
  void initState() {
    super.initState();
    _precacheFuture = _preloadLoadingAnimation();

    _loaderTimer = Timer(const Duration(milliseconds: _kAnimationDurationInMs), () {
      if (mounted) {
        setState(() {
          _showLoader = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _loaderTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<Uint8List?>(
    future: _precacheFuture,
    builder: (context, snapshot) {
      final data = snapshot.data;
      if (_showLoader && snapshot.connectionState == ConnectionState.done && !snapshot.hasError && data != null) {
        return Center(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(context.colorTokens.loadingBackgroundColor, BlendMode.srcIn),
            child: Lottie.memory(data, width: Dimens.dimen200, height: Dimens.dimen200, fit: BoxFit.contain),
          ),
        );
      } else {
        return const SizedBox();
      }
    },
  );

  Future<Uint8List> _preloadLoadingAnimation() async {
    try {
      final String jsonString = await rootBundle.loadString(AppLottie.loading);
      final Uint8List bytes = utf8.encode(jsonString);
      return bytes;
    } catch (e) {
      return Uint8List(0);
    }
  }
}
