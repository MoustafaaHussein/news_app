// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:news_app/models/ArticleModel.dart';

class NewsServices {
  final Dio
      dio; // making object from dio package which can access all things from the package
  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=f1710513cb1847c883a45013b18f1436');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var element in articles) {
        ArticleModel articlemodel = ArticleModel(
            image: element['urlToImage'],
            title: element['title'],
            subTitle: element['description']);
        articlesList.add(articlemodel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
