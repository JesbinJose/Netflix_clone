import 'package:flutter/material.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/widgets/comming_soon/new_and_hot_comming_soon_single_widget.dart';

class NewAndHotCommingSoon extends StatelessWidget {
  const NewAndHotCommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CommingSoonSingleWidget(),
        CommingSoonSingleWidget(),
        CommingSoonSingleWidget(),
        CommingSoonSingleWidget(),
      ],
    );
  }
}
