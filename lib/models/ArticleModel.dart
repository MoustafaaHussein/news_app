class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;
// they declared as final as we won't change them in the future or modify the value stored in these variables
  ArticleModel(
      {required this.image, required this.title, required this.subTitle});
}
