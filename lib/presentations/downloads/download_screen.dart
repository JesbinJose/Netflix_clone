import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_web_num_information/application/downloads/downloads_bloc.dart';
import 'package:sample_web_num_information/core/color_style.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/downloads/widgets/download_movie_show_design.dart';
import 'package:sample_web_num_information/presentations/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context).add(
        const DownloadsEvent.getDownloadsImage(),
      );
    });
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SafeArea(
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
      ),
      body: ListView(
        children: [
          kHeight,
          const Row(
            children: [
              kWidth,
              Icon(
                Icons.settings,
                color: kwhiteColor,
                size: 30,
              ),
              kWidth,
              Text(
                "Smart Downloads",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Introducing Downloads for you",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "We will download a personalised selection of movies and shows for you, so there is always something to watch on your device",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                color: Colors.grey,
              ),
            ),
          ),
          const DownloadsShowMovieThumbnail(),
          kHeight,
          kHeight,
          kHeight,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              height: 50,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              color: kbuttonBlueColor,
              onPressed: () {},
              child: const Text(
                "Set up",
                style: TextStyle(
                  color: kwhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          kHeight,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: MaterialButton(
              height: 50,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              color: kwhiteColor,
              onPressed: () {},
              child: const Text(
                "See what you can download",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
