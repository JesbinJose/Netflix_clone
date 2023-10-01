import 'package:flutter/material.dart';
import 'package:sample_web_num_information/core/constants.dart';

class SearchSingleListTile extends StatelessWidget {
  const SearchSingleListTile({
    super.key,
    required this.imagePath,
    required this.movieName,
  });
  final String imagePath;
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.33,
          height: MediaQuery.of(context).size.width * 0.21,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                imagePath,
              ),
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            movieName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Icon(
          Icons.play_circle_outline,
          size: 40,
          color: Color.fromARGB(255, 131, 129, 129),
        ),
      ],
    );
  }
}
