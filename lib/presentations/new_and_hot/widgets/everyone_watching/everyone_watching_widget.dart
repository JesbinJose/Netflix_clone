import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/widgets/everyone_watching/everyone_watching_single_widget.dart';

class NewAndHotEveryOneWatching extends StatelessWidget {
  const NewAndHotEveryOneWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const EveryOneWatchingSingleTile(),
      separatorBuilder: (context, index) => kHeight,
      itemCount: 10,
    );
  }
}
