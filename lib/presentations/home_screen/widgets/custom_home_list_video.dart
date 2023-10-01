import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/presentations/widgets/main_title.dart';
// ignore: depend_on_referenced_packages
import 'package:bordered_text/bordered_text.dart';

class HomeCustomVideoList extends StatelessWidget {
  const HomeCustomVideoList({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 140,
                      height: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: -50,
                  left: 0,
                  child: BorderedText(
                    strokeWidth: 5,
                    strokeColor: Colors.white,
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: 10,
          ),
        ),
        kHeight,
      ],
    );
  }
}
