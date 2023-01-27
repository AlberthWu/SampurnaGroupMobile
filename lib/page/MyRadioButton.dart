import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/page/employ_form.dart';

enum InformasiTypeEnum { Aktif, Tidak }

// ignore: must_be_immutable
class MyRadioButton extends StatelessWidget {
  MyRadioButton({Key? key,
  required this.title,
  required this.value,
  required this.informasiTypeEnum,
  required this.onChanged,
  }) : super(key:  key);

  String title;
  InformasiTypeEnum value;
  InformasiTypeEnum? informasiTypeEnum;
  Function(InformasiTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<InformasiTypeEnum>(
        contentPadding: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        value: InformasiTypeEnum.Aktif, 
        groupValue: informasiTypeEnum,
        title: Text(InformasiTypeEnum.Aktif.name),
        onChanged: (val){
          setState(() {
            informasiTypeEnum = val;
          });
        },
      ),
    );
  }
}

void setState(Null Function() param0) {
}