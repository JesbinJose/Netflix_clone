import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_web_num_information/domain/core/api_end_points.dart';
import 'package:sample_web_num_information/domain/core/failures/main_failures.dart';
import 'package:sample_web_num_information/domain/downloads/Models/downloads.dart';
import 'package:sample_web_num_information/domain/downloads/i_downloads_repo.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.trending,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
