import 'package:components_library/resources/dimens.dart';

import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:pdf/widgets.dart' as pw;

class CvSectionAgreements extends pw.StatelessWidget {
  CvSectionAgreements();

  @override
  pw.Widget build(pw.Context context) => PfLabel(
    'label.menu_item.agreement',
    textAlign: pw.TextAlign.center,
    style: const pw.TextStyle(fontSize: Dimens.dimen10),
  );
}
