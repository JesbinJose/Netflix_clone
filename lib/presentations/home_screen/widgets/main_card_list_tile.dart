import 'package:flutter/material.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
