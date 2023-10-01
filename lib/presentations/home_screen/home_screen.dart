import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/home_screen/widgets/back_ground_card.dart';
import 'package:sample_web_num_information/presentations/home_screen/widgets/custom_home_list_video.dart';
import 'package:sample_web_num_information/presentations/home_screen/widgets/home_custom_app_bar.dart';
import 'package:sample_web_num_information/presentations/home_screen/widgets/home_list_video_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    HomeBackGroundCaed(),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          HomeScreenListVideoWidget(
                            title: 'Released in the Past Year',
                          ),
                          kHeight,
                          HomeScreenListVideoWidget(
                            title: 'Trending Now',
                          ),
                          kHeight,
                          HomeCustomVideoList(
                            title: 'Top 10 TV Shows in India Today',
                          ),
                          kHeight,
                          HomeScreenListVideoWidget(
                            title: 'Tense Dramas',
                          ),
                          kHeight,
                          HomeScreenListVideoWidget(
                            title: 'South Indian Cinema',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                scrollNotifier.value
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.4),
                        child: const HomeCustomAppBar(),
                      )
                    : const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
