// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app/models/CategoryModels.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModels data;
  const CategoryCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(data.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              data.text,
              style: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
