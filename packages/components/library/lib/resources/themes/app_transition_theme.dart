import 'package:flutter/material.dart';

class AppTransitionTheme {
  const AppTransitionTheme();

  static PageTransitionsTheme get transitionLightMode => const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          ///animation left to right and vice versa
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),

          ///Zoom with white frame
          //TargetPlatform.android: ZoomPageTransitionsBuilder(backgroundColor: AppColors.cGray[100]),

          ///Fade animation up and down
          //TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),

          ///Animation with white frame
          // TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
        },
      );

  static PageTransitionsTheme get transitionDarkMode => const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        },
      );
}
