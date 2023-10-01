import 'package:flutter/material.dart';

class SearchResultItemTile extends StatelessWidget {
  const SearchResultItemTile({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return !imageUrl.contains('null')
        ? Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(7),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageUrl),
              ),
            ),
          )
        : const SizedBox();
  }
}
