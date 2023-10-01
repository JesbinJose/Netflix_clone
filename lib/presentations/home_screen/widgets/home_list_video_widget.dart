import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/home_screen/widgets/main_card_list_tile.dart';
import 'package:sample_web_num_information/presentations/widgets/main_title.dart';

class HomeScreenListVideoWidget extends StatelessWidget {
  const HomeScreenListVideoWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const MainCardWidget(),
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: 10,
          ),
        ),
        kHeight,
      ],
    );
  }
}
