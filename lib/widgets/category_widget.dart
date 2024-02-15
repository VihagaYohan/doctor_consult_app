import "package:doctor_consult_app/models/category_model.dart";
import "package:doctor_consult_app/theme.dart";
import "package:flutter/material.dart";

Widget CategoryCard(CategoryModel categoryModel) {
  return Container(
      height: 110,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 15),
                blurRadius: 15,
                spreadRadius: 0,
                color: const Color(0xffe1e0f2).withOpacity(0.5))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 38,
              height: 38,
              child: Image.asset(categoryModel.iconPath!)),
          const SizedBox(height: 12),
          Text(categoryModel.nameCategory!, style: regularFontStyle)
        ],
      ));
}
