import 'package:dartz/dartz.dart';
import 'package:sample_web_num_information/domain/core/failures/main_failures.dart';
import 'package:sample_web_num_information/domain/downloads/Models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
