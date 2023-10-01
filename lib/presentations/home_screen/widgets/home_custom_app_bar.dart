import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://duet-cdn.vox-cdn.com/thumbor/0x0:3151x2048/750x500/filters:focal(1575x1024:1576x1025):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png',
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: Colors.white,
                ),
                kWidth,
                kWidth,
                Container(
                  color: Colors.blue,
                  height: 30,
                  width: 30,
                ),
                kWidth,
              ],
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'TV Shows',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Movies',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
