import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_web_num_information/application/search/search_bloc.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/domain/core/debounce/debounce.dart';
import 'package:sample_web_num_information/presentations/search/widgets/search_idle.dart';
import 'package:sample_web_num_information/presentations/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});
  final _debouncer = Debouncer(milliseconds: 1000);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.2),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                onChanged: (value) {
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(context).add(
                      SearchMovies(
                        movieQuery: value,
                      ),
                    );
                  });
                },
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white.withOpacity(0.4),
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  size: 30,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
              kHeight,
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResultList.isEmpty) {
                    return const SearchIdleState();
                  } else {
                    return const SearchResultState();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
