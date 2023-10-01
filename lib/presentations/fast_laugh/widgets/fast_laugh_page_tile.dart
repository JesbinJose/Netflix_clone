import 'package:flutter/material.dart';
import 'package:sample_web_num_information/presentations/fast_laugh/widgets/fast_laugh_operations.dart';
import 'package:sample_web_num_information/presentations/fast_laugh/widgets/fast_laugh_volume_control.dart';
import 'package:sample_web_num_information/presentations/fast_laugh/widgets/video_play_screen.dart';

// import 'package:video_player/video_player.dart';
List<String> videoPaths = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
];

class FastLaughPageTile extends StatelessWidget {
  const FastLaughPageTile({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          // color: Colors.accents[index % Colors.accents.length],
          child: FastLaughVideoPlayerScreen(
            url: videoPaths[index % videoPaths.length],
          ),
        ),
        const Positioned(
          bottom: 15,
          left: 15,
          child: FastLaughVolumeControlSwitch(),
        ),
        const Positioned(
          bottom: 15,
          right: 15,
          child: FastLaughSideOperation(),
        ),
      ],
    );
  }
}
