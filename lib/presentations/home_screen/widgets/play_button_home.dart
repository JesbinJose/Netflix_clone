import 'package:flutter/material.dart';

class HomePlayButtonWithText extends StatelessWidget {
  const HomePlayButtonWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      width: 110,
      child: const Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 40,
          ),
          Text(
            ' Play  ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
