import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/color_style.dart';

class FastLaughOperationItem extends StatelessWidget {
  const FastLaughOperationItem(
      {super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: kwhiteColor,
            size: 35,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(label),
        ],
      ),
    );
  }
}
