import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FastLaughVideoPlayerScreen extends StatefulWidget {
  const FastLaughVideoPlayerScreen({super.key, required this.url});
  final String url;
  @override
  State<FastLaughVideoPlayerScreen> createState() =>
      _FastLaughVideoPlayerScreenState();
}

class _FastLaughVideoPlayerScreenState
    extends State<FastLaughVideoPlayerScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    );
    _controller.initialize().then((value) {
      setState(() {
        _controller.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _controller.value.isInitialized
          ? VideoPlayer(_controller)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
