import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/core/strings.dart';
import 'package:sample_web_num_information/presentations/fast_laugh/fast_laugh_screen.dart';
import 'package:sample_web_num_information/presentations/fast_laugh/widgets/fast_laugh_operations_item.dart';

class FastLaughSideOperation extends StatelessWidget {
  const FastLaughSideOperation({super.key});

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: posterPath == null
              ? null
              : NetworkImage(
                  '$kImageAppendUrl$posterPath',
                ),
        ),
        kHeight,
        const FastLaughOperationItem(
          icon: Icons.emoji_emotions,
          label: 'LOL',
        ),
        const FastLaughOperationItem(
          icon: Icons.add,
          label: 'My List',
        ),
        const FastLaughOperationItem(
          icon: CupertinoIcons.paperplane,
          label: 'Share',
        ),
        const FastLaughOperationItem(
          icon: Icons.play_arrow,
          label: 'Play',
        ),
      ],
    );
  }
}
