import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/search/widgets/search_list_view.dart';
import 'package:sample_web_num_information/presentations/widgets/main_title.dart';

class SearchIdleState extends StatelessWidget {
  const SearchIdleState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: 'Top Searches'),
        kHeight,
        SearchListView(),
      ],
    );
  }
}
