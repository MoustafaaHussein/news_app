// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:news_app/widgets/Categories_ListView.dart';
import 'package:news_app/widgets/NewsBuilder.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            NewsListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
