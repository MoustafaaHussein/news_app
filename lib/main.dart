import 'package:flutter/material.dart';
import 'package:news_app/services/NewsServices.dart';
import 'package:news_app/views/HomeView.dart';

void main() {
  runApp(const NewsApp());
  NewsServices;
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Homeview(),
    );
  }
}
