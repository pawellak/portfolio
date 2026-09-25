import 'package:components_library/components_library_export.dart'
    show BasePage, BlocBuilder, ClLoadingIndicator, ThemeExtensions;
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/bloc/curriculum_vitae_cubit.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

const _kPageName = 'curriculum-vitae';

class CurriculumVitaePage extends BasePage<CurriculumVitaeCubit> {
  const CurriculumVitaePage({super.key});

  static const String name = _kPageName;
  static const String path = '/$_kPageName';

  @override
  Widget buildPage(BuildContext context) => BlocBuilder<CurriculumVitaeCubit, CurriculumVitaeState>(
    builder: (context, state) {
      if (state is CurriculumVitaeUpdateView) {
        return PdfPreview(
          build: (format) => state.pdfData,
          canChangePageFormat: false,
          canChangeOrientation: false,
          pdfFileName: 'pawellak_cv',
          canDebug: false,
          loadingWidget: const ClLoadingIndicator(),
          actionBarTheme: PdfActionBarTheme(
            backgroundColor: context.colorTokens.topNavigationSecondaryBackgroundColor,
            iconColor: context.colorTokens.topNavigationPrimaryBackgroundColor,
          ),
        );
      } else {
        return const ClLoadingIndicator(isStatic: true);
      }
    },
  );
}
