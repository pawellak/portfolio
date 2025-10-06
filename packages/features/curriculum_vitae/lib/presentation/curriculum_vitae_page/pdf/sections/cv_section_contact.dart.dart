import 'package:components_library/components_library_export.dart' show FluentIcons, StringTranslateExtension;
import 'package:components_library/resources/dimens.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_column.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_container.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_icon.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_image_path_widget.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_label.dart';
import 'package:feature_curriculum_vitae/presentation/widgets/pf_row.dart' show PfRow;
import 'package:feature_curriculum_vitae/presentation/widgets/pf_sizebox.dart';
import 'package:flutter/material.dart' show IconData;
import 'package:pdf/pdf.dart' as pw;
import 'package:pdf/widgets.dart' as pw;

const _kMe = 'Paweł Łąk';
const _kPhoneContact = '+48 792-592-688';
const _kEmail = 'pawellak@gmail.com';

class CvSectionContact extends pw.StatelessWidget {
  CvSectionContact(this.profileImage);

  final pw.MemoryImage profileImage;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    height: Dimens.dimen126,
    child: PfRow(
      children: [
        PfImagePathWidget(
          image: profileImage,
          width: Dimens.dimen80,
        ),
        PfSizeBox(width: Dimens.dimen12),
        pw.Expanded(
          child: PfColumn(
            mainAxisSize: pw.MainAxisSize.min,
            children: [
              PfLabel(
                _kMe,
                translate: false,
                style: const pw.TextStyle(color: pw.PdfColors.black, fontSize: Dimens.dimen14),
                fontWeight: pw.FontWeight.bold,
              ),
              _AboutMeContactWidget(description: _kPhoneContact, icon: FluentIcons.phone_16_regular),
              _AboutMeContactWidget(description: _kEmail, icon: FluentIcons.mail_16_regular),
              _AboutMeContactWidget(
                description: 'label.about_me.office_place'.tr(),
                icon: FluentIcons.city_16_regular,
                translate: true,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _AboutMeContactWidget extends pw.StatelessWidget {
  _AboutMeContactWidget({required this.description, required this.icon, this.translate = false});

  final String description;
  final IconData icon;
  final bool translate;

  @override
  pw.Widget build(pw.Context context) => PfContainer(
    border: pw.Border.all(color: pw.PdfColors.grey300),
    backgroundColor: pw.PdfColors.white,
    padding: const pw.EdgeInsets.symmetric(vertical:  3,horizontal: Dimens.dimen8),
    margin: const pw.EdgeInsets.only(top: Dimens.dimen4, right: Dimens.dimen4, bottom: Dimens.dimen4),
    child: PfRow(
      children: [
        PfIcon(icon, color: pw.PdfColors.grey600),
        PfSizeBox(width: Dimens.dimen8),
        pw.Expanded(child: PfLabel(description, color: pw.PdfColors.grey800, translate: translate,style: const pw.TextStyle(fontSize: Dimens.dimen10))),
      ],
    ),
  );
}
