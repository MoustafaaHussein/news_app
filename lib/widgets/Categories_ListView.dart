// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app/models/CategoryModels.dart';
import 'package:news_app/widgets/CategoryCard.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(data: categoryList[index]);
          }),
    );
  }
}
