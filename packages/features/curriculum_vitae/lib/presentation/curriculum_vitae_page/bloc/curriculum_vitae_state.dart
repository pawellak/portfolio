part of 'curriculum_vitae_cubit.dart';

sealed class CurriculumVitaeState extends BaseState {
  const CurriculumVitaeState();
}

class CurriculumVitaeInitial extends CurriculumVitaeState {
  const CurriculumVitaeInitial();
}

class CurriculumVitaeUpdateView extends CurriculumVitaeState {
  const CurriculumVitaeUpdateView(this.pdfData);

  final Uint8List pdfData;
}
