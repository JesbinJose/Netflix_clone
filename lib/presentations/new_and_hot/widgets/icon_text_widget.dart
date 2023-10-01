import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/color_style.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: kwhiteColor,
            size: 28,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
