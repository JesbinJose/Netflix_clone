// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_web_num_information/domain/core/failures/main_failures.dart';
import 'package:sample_web_num_information/domain/downloads/Models/downloads.dart';
import 'package:sample_web_num_information/domain/downloads/i_downloads_repo.dart';
import 'package:sample_web_num_information/domain/search/i_search_repo.dart';
import 'package:sample_web_num_information/domain/search/model/search_response/search_response.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsRepo;
  final SearchService _searchService;
  SearchBloc(this._downloadsRepo, this._searchService)
      : super(SearchState.initial()) {
    //idle

    on<Initialize>(
      (event, emit) async {
        emit(
          SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isLoading: true,
            isError: false,
          ),
        );
        final result = await _downloadsRepo.getDownloadsImages();
        result.fold(
          (MainFailure f) {
            emit(
              const SearchState(
                searchResultList: [],
                idleList: [],
                isLoading: false,
                isError: true,
              ),
            );
          },
          (List<Downloads> list) {
            emit(
              SearchState(
                searchResultList: [],
                idleList: list,
                isLoading: false,
                isError: false,
              ),
            );
          },
        );
      },
    );
    //result
    on<SearchMovies>(
      (event, emit) async {
        emit(
          const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: true,
            isError: false,
          ),
        );
        final result =
            await _searchService.searchMovies(movieQuery: event.movieQuery);
        final state = result.fold(
          // (MainFailure f) => const SearchState(
          //   searchResultList: [],
          //   idleList: [],
          //   isLoading: false,
          //   isError: true,
          // ),
          (MainFailure f) => const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          ),
          (final r) {
            return  SearchState(
              searchResultList: r.result,
              idleList: [],
              isLoading: false,
              isError: false,
            );
          },
        );
        emit(state);
      },
    );
  }
}
