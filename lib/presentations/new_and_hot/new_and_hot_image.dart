import 'package:flutter/material.dart';

class ImageCommingSoonPart extends StatelessWidget {
  const ImageCommingSoonPart({
    super.key,
    this.isEveryOneWatching = false,
  });
  final bool isEveryOneWatching;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width:
              MediaQuery.sizeOf(context).width * (isEveryOneWatching ? 1 : 0.9),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://www.themoviedb.org/t/p/w250_and_h141_face/5YZbUmjbMa3ClvSW1Wj3D6XGolb.jpg',
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
