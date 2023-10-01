import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_web_num_information/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:sample_web_num_information/domain/downloads/Models/downloads.dart';
import 'package:sample_web_num_information/presentations/fast_laugh/widgets/fast_laugh_page_tile.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(
          key: key,
          child: widget,
        );
  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
      },
    );
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isError) {
              return const Center(
                child: Text(
                  "Error while getting data",
                ),
              );
            }
            return !state.isloading
                ? PageView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) =>
                        VideoListItemInheritedWidget(
                      widget: FastLaughPageTile(index: index),
                      movieData: state.videoList[index],
                    ),
                    scrollDirection: Axis.vertical,
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
