import 'dart:ui';

import 'package:doctor_consult_app/models/category_model.dart';
import 'package:doctor_consult_app/models/doctor_model.dart';
import 'package:doctor_consult_app/theme.dart';
import 'package:doctor_consult_app/widgets/category_widget.dart';
import 'package:doctor_consult_app/widgets/doctor_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(defaultMagin, 24, defaultMagin, 30),
                    child: Row(
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          margin: const EdgeInsets.only(right: 12),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/user_pic.png"))),
                        ),
                        const Text("Howdy, Tamara!",
                            style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(defaultMagin, 0, defaultMagin, 30),
                    child: Column(
                      children: [
                        Text(
                            "Find the professional doctor, \nqucikly and promising",
                            style: mediumFontStyle.copyWith(
                                fontSize: 20, color: blackColor)),
                        Container(
                          height: 40,
                          margin: const EdgeInsets.only(top: 12),
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultMagin),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: TextField(
                            style: regularFontStyle.copyWith(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                      height: 15,
                                      width: 15,
                                      child:
                                          Image.asset("assets/ic_search.png")),
                                ),
                                hintText: "Search by specialist",
                                hintStyle: regularFontStyle.copyWith(
                                    fontSize: 12, color: greyColor)),
                          ),
                        )
                      ],
                    ),
                  ),
                  // category
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(horizontal: defaultMagin),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Browse by Category", style: regularFontStyle),
                          const SizedBox(height: 14),
                          SizedBox(
                              height: 250,
                              width: double.infinity,
                              child: GridView.builder(
                                  itemCount: listCategory.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20),
                                  itemBuilder: (_, i) {
                                    final x = listCategory[i];
                                    return CategoryCard(x);
                                  }))
                        ],
                      )),
                  // doctor
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: EdgeInsets.symmetric(horizontal: defaultMagin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Our top doctors", style: regularFontStyle),
                        SizedBox(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: ListView(
                                children: listDoctor
                                    .map((e) => Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: DoctorCard(e),
                                        ))
                                    .toList())),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
