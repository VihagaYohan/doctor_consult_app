import 'package:doctor_consult_app/models/doctor_model.dart';
import 'package:doctor_consult_app/theme.dart';
import 'package:flutter/material.dart';

Widget DoctorCard(DoctorModel doctorModel) {
  return Row(
    children: [
      Container(
        height: 52,
        width: 52,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(doctorModel.picturePath!))),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(doctorModel.name!,
              style: regularFontStyle.copyWith(fontSize: 16)),
          Text(doctorModel.specialist!,
              style: lightFontStyle.copyWith(fontSize: 12, color: greyColor))
        ],
      )
    ],
  );
}
