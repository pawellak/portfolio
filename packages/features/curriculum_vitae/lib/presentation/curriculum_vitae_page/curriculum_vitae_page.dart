import 'package:components_library/components_library_export.dart' show BasePage, BlocListener;
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/bloc/curriculum_vitae_cubit.dart';
import 'package:flutter/material.dart';

const _kPageName = 'curriculum-vitae';

class CurriculumVitaePage extends BasePage<CurriculumVitaeCubit> {
  const CurriculumVitaePage({super.key});

  static const String name = _kPageName;
  static const String path = '/$_kPageName';

  @override
  Widget buildPage(_) =>
      BlocListener<CurriculumVitaeCubit, CurriculumVitaeState>(listener: (context, state) async {}, child: Container());
}
