// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sample_web_num_information/application/downloads/downloads_bloc.dart'
    as _i7;
import 'package:sample_web_num_information/application/fast_laugh/fast_laugh_bloc.dart'
    as _i8;
import 'package:sample_web_num_information/application/search/search_bloc.dart'
    as _i9;
import 'package:sample_web_num_information/domain/downloads/i_downloads_repo.dart'
    as _i3;
import 'package:sample_web_num_information/domain/search/i_search_repo.dart'
    as _i5;
import 'package:sample_web_num_information/infrastruture/downloads/downloads_repository.dart'
    as _i4;
import 'package:sample_web_num_information/infrastruture/search/search_impl.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
    gh.lazySingleton<_i5.SearchService>(() => _i6.SearchImpl());
    gh.factory<_i7.DownloadsBloc>(
        () => _i7.DownloadsBloc(gh<_i3.IDownloadsRepo>()));
    gh.factory<_i8.FastLaughBloc>(
        () => _i8.FastLaughBloc(gh<_i3.IDownloadsRepo>()));
    gh.factory<_i9.SearchBloc>(() => _i9.SearchBloc(
          gh<_i3.IDownloadsRepo>(),
          gh<_i5.SearchService>(),
        ));
    return this;
  }
}
