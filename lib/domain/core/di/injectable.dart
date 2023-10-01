// import 'package:get_it/get_it.dart' as _i1;
// import 'package:injectable/injectable.dart' as _i2;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final getIt = GetIt.instance;
@InjectableInit(initializerName: 'initGetIt')
Future<void> configureInjuction() async {
  getIt.initGetIt(environment: Environment.prod);
}
