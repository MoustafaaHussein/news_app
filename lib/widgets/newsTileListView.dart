// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:news_app/models/ArticleModel.dart';
import 'package:news_app/widgets/newstile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> articleModelList;

  const NewsTileListView({super.key, required this.articleModelList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articleModelList.length, (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Newstile(
          articleModel: articleModelList[index],
        ),
      );
    }));
  }
}
