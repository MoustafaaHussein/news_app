import 'package:flutter/material.dart';
import 'package:news_app/models/ArticleModel.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 200,
                  )
                : Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/A_black_image.jpg/640px-A_black_image.jpg')),
        Center(
          child: Text(
            articleModel.title ?? " ",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          articleModel.subTitle ?? " ",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
