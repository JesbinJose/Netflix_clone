// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_web_num_information/domain/core/failures/main_failures.dart';
import 'package:sample_web_num_information/domain/downloads/Models/downloads.dart';
import 'package:sample_web_num_information/domain/downloads/i_downloads_repo.dart';
import 'package:injectable/injectable.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inital()) {
    on<_GetDownloadsEvent>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          downloadsFailureOrSuccessOption: none(),
        ));
        final Either<MainFailure, List<Downloads>> downloadsOption =
            await _downloadsRepo.getDownloadsImages();
        emit(
          downloadsOption.fold(
            (l) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: Some(
                Left(l),
              ),
            ),
            (r) => state.copyWith(
              isLoading: false,
              downloads: r,
              downloadsFailureOrSuccessOption: Some(
                Right(r),
              ),
            ),
          ),
        );
      },
    );
  }
}
