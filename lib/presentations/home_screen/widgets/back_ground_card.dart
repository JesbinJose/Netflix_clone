import 'package:flutter/material.dart';
import 'package:sample_web_num_information/presentations/home_screen/widgets/home_custom_text_icon.dart';
import 'package:sample_web_num_information/presentations/home_screen/widgets/play_button_home.dart';

class HomeBackGroundCaed extends StatelessWidget {
  const HomeBackGroundCaed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1XS1oqL89opfnbLl8WnZY1O1uJx.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: (MediaQuery.sizeOf(context).width / 2) - 50,
          child: const HomePlayButtonWithText(),
        ),
        const HomeIconAndTextMain(
          icon: Icons.add,
          label: 'My List',
          isRigth: false,
        ),
        const HomeIconAndTextMain(
          icon: Icons.info_outline,
          label: 'Info',
          isRigth: true,
        ),
      ],
    );
  }
}
