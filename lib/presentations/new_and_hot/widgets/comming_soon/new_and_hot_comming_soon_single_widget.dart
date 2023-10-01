import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/widgets/comming_soon/date_of_comming_soon.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/widgets/icon_text_widget.dart';
import 'package:sample_web_num_information/presentations/new_and_hot/new_and_hot_image.dart';

class CommingSoonSingleWidget extends StatelessWidget {
  const CommingSoonSingleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DateOfCommingSoon(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageCommingSoonPart(),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .9,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TALL GIRL 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        IconTextWidget(
                          label: 'Remind Me',
                          icon: Icons.notifications_none_outlined,
                        ),
                        IconTextWidget(
                          label: 'Info',
                          icon: Icons.info_outline,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
                'Comming on Friday',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              kHeight,
              Container(
                width: 50,
                height: 20,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://www.designmantic.com/blog/wp-content/uploads/2016/07/Netflix-Logo.png',
                    ),
                  ),
                ),
              ),
              const Text(
                'TALL GIRL 2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              kHeight,
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.88,
                child: const Text(
                  'Tall Girl 2 is a 2022 American teen romantic comedy film directed by Emily Ting from a screenplay by Sam Wolfson. The film stars Ava Michelle, Sabrina Carpenter, Griffin Gluck, and Steve Zahn. It is the sequel to the 2019 film Tall Girl.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
