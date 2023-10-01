import 'package:flutter/material.dart';
import 'package:sample_web_num_information/presentations/downloads/download_screen.dart';
import 'package:sample_web_num_information/presentations/fast_laugh/fast_laugh_screen.dart';
import 'package:sample_web_num_information/presentations/home_screen/home_screen.dart';
import 'package:sample_web_num_information/presentations/main_screen/widgets/bottom_navigation_bar.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/new_and_hot_screen.dart';
import 'package:sample_web_num_information/presentations/search/search_screen.dart';

class ScreenMain extends StatelessWidget {
   ScreenMain({super.key});
  final List<Widget> pages =  [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    ScreenSearch(),
    const ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) => SafeArea(
          child: pages[index],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
