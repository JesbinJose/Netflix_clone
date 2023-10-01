import 'package:flutter/material.dart';
import 'package:sample_web_num_information/application/search/search_bloc.dart';
import 'package:sample_web_num_information/core/strings.dart';
import 'package:sample_web_num_information/domain/downloads/Models/downloads.dart';
import 'package:sample_web_num_information/presentations/search/widgets/single_list_tile_search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height - 245,
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state.idleList.isNotEmpty) {
            return ListView.separated(
              itemBuilder: (context, index) {
                final Downloads movie = state.idleList[index];
                return SearchSingleListTile(
                  imagePath: '$kImageAppendUrl${movie.backdropPath}',
                  movieName: movie.title??movie.name??'Not found',
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: state.idleList.length-1,
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
