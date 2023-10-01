import 'package:flutter/material.dart';
import 'package:sample_web_num_information/application/downloads/downloads_bloc.dart';
import 'package:sample_web_num_information/core/strings.dart';
import 'package:sample_web_num_information/presentations/downloads/widgets/downloads_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownloadsShowMovieThumbnail extends StatelessWidget {
  const DownloadsShowMovieThumbnail({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
        return SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.40,
                backgroundColor: const Color.fromARGB(255, 63, 63, 63),
              ),
              state.downloads.isNotEmpty
                  ? DownloadsImageWidget(
                      size: Size(
                        size.width * 0.4,
                        size.width * 0.58,
                      ),
                      imageUrl:
                          '$kImageAppendUrl${state.downloads[0].posterPath}',
                      angle: -22,
                      margin: const EdgeInsets.only(
                        right: 180,
                        bottom: 45,
                      ),
                    )
                  : const CircularProgressIndicator(),
              state.downloads.isNotEmpty
                  ? DownloadsImageWidget(
                      size: Size(
                        size.width * 0.4,
                        size.width * 0.58,
                      ),
                      imageUrl:
                          '$kImageAppendUrl${state.downloads[1].posterPath}',
                      margin: const EdgeInsets.only(
                        left: 180,
                        bottom: 45,
                      ),
                      angle: 22,
                    )
                  : const CircularProgressIndicator(),
              state.downloads.isNotEmpty
                  ? DownloadsImageWidget(
                      size: Size(
                        size.width * 0.47,
                        size.width * 0.65,
                      ),
                      imageUrl:
                          '$kImageAppendUrl${state.downloads[2].posterPath}',
                    )
                  : const CircularProgressIndicator(),
            ],
          ),
        );
      },
    );
  }
}
