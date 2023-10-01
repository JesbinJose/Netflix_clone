import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_web_num_information/application/search/search_bloc.dart';
import 'package:sample_web_num_information/core/constants.dart';
import 'package:sample_web_num_information/core/strings.dart';
import 'package:sample_web_num_information/domain/search/model/search_response/search_response.dart';
import 'package:sample_web_num_information/presentations/search/widgets/search_result_item_tile.dart';
import 'package:sample_web_num_information/presentations/widgets/main_title.dart';

class SearchResultState extends StatelessWidget {
  const SearchResultState({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Movies & TV'),
        kHeight,
        BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          if (state.searchResultList.isNotEmpty) {
            return SizedBox(
              height: MediaQuery.sizeOf(context).height - 245,
              child: GridView.count(
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 2 / 3,
                children: List.generate(
                  20,
                  (index) {
                    final SearchResultData moviePoster =
                        state.searchResultList[index];
                    return SearchResultItemTile(
                      imageUrl:
                          '$kImageAppendUrl${moviePoster.posterPath ?? 'null'}',
                    );
                  },
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        }),
      ],
    );
  }
}
