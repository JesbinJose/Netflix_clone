import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_web_num_information/domain/core/api_end_points.dart';
import 'package:sample_web_num_information/domain/core/failures/main_failures.dart';
import 'package:sample_web_num_information/domain/search/i_search_repo.dart';
import 'package:sample_web_num_information/domain/search/model/search_response/search_response.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchResponse>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        "${ApiEndPoints.search}$movieQuery#",
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
