import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_web_num_information/domain/downloads/Models/downloads.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_web_num_information/domain/downloads/i_downloads_repo.dart';
part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final _videoUrls = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo _downloadsRepo,
  ) : super(FastLaughState.initial()) {
    on<Initialize>(
      (event, emit) async {
        emit(
          const FastLaughState(
            videoList: [],
            isloading: true,
            isError: true,
          ),
        );
        final result = await _downloadsRepo.getDownloadsImages();
        final _state = result.fold(
          (l) => const FastLaughState(
            videoList: [],
            isloading: false,
            isError: true,
          ),
          (r) => FastLaughState(
            videoList: r,
            isloading: false,
            isError: false,
          ),
        );
        emit(_state);
      },
    );
  }
}
