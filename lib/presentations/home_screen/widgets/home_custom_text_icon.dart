import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/color_style.dart';

class HomeIconAndTextMain extends StatelessWidget {
  const HomeIconAndTextMain({
    super.key,
    required this.icon,
    required this.label,
    required this.isRigth,
  });
  final IconData icon;
  final String label;
  final bool isRigth;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: !isRigth ? 30 : null,
      right: isRigth ? 30 : null,
      child: SizedBox(
        height: 60,
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
            Text(
              label,
            ),
          ],
        ),
      ),
    );
  }
}
