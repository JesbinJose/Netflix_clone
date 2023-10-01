import 'dart:math';

import 'package:flutter/material.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.size,
    required this.imageUrl,
    this.angle = 0,
    this.margin = EdgeInsets.zero,
  });
  final Size size;
  final String imageUrl;
  final double angle;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        width: size.width,
        height: size.height,
        margin: margin,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageUrl,
            ),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
