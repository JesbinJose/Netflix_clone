import 'package:flutter/material.dart';
import 'application/downloads/downloads_bloc.dart';
import 'application/fast_laugh/fast_laugh_bloc.dart';
import 'application/search/search_bloc.dart';
import 'core/color_style.dart';
import 'domain/core/di/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentations/main_screen/main_screen.dart';
class Hello{}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjuction();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FastLaughBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'NetFlix clone',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          scaffoldBackgroundColor: mybackgroundColor,
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodySmall: TextStyle(
              color: Colors.white,
            ),
            bodyMedium: TextStyle(
              color: Colors.white,
            ),
            bodyLarge: TextStyle(
              color: Colors.white,
            ),
          ),
          useMaterial3: true,
        ),
        home: ScreenMain(),
      ),
    );
  }
}
// MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => getIt<DownloadsBloc>,
//           child: Container(),
//         )
//       ],
// ),
