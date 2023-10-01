import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/color_style.dart';
import 'package:sample_web_num_information/core/constants.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/widgets/comming_soon/new_and_hot_comming_soon.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/widgets/everyone_watching/everyone_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: kwhiteColor,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast,
                size: 30,
                color: Colors.white,
              ),
              kWidth,
              Container(
                color: Colors.blue,
                height: 30,
                width: 30,
              ),
              kWidth,
            ],
            bottom: const TabBar(
              isScrollable: true,
              padding: EdgeInsets.symmetric(vertical: 10),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Colors.white,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              tabs: [
                Tab(
                  text: '🍿 Comming Soon',
                ),
                Tab(
                  text: '👀 Everyone\'s watching',
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            NewAndHotCommingSoon(),
            NewAndHotEveryOneWatching(),
          ],
        ),
      ),
    );
  }
}
