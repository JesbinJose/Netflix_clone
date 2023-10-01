import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/new_and_hot_image.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/widgets/icon_text_widget.dart';

class EveryOneWatchingSingleTile extends StatelessWidget {
  const EveryOneWatchingSingleTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://www.designmantic.com/blog/wp-content/uploads/2016/07/Netflix-Logo.png',
              ),
            ),
          ),
        ),
        const Text(
          'Friends',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        kHeight,
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: const Text(
            'Tall Girl 2 is a 2022 American teen romantic comedy film directed by Emily Ting from a screenplay by Sam Wolfson. ',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        kHeight,
        const ImageCommingSoonPart(
          isEveryOneWatching: true,
        ),
        kHeight,
        kHeight,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Row(
              children: [
                IconTextWidget(
                  label: 'Share',
                  icon: CupertinoIcons.paperplane,
                ),
                IconTextWidget(
                  label: 'My List',
                  icon: CupertinoIcons.add,
                ),
                IconTextWidget(
                  label: 'Play',
                  icon: CupertinoIcons.play_arrow_solid,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
