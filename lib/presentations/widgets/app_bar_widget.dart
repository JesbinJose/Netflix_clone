import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style:
              GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
          color: Colors.white,
        ),
        kWidth,
        Container(
          color: Colors.blue,
          height: 30,
          width: 30,
        ),
        kWidth,
      ],
    );
  }
}
