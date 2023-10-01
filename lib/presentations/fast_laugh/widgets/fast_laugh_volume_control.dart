import 'package:flutter/material.dart';

class FastLaughVolumeControlSwitch extends StatelessWidget {
  const FastLaughVolumeControlSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.volume_off,
          size: 30,
        ),
      ),
    );
  }
}
