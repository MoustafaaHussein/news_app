// ignore_for_file: file_names

// ignore: camel_case_types
class CategoryModels {
  final String text;
  final String image;
  CategoryModels({required this.image, required this.text});
}

List<CategoryModels> categoryList = [
  CategoryModels(image: 'assets/business.jpeg', text: ''),
  CategoryModels(image: 'assets/entertainment.jpeg', text: ''),
  CategoryModels(image: 'assets/general.jpeg', text: ''),
  CategoryModels(image: 'assets/health.avif', text: ''),
  CategoryModels(image: 'assets/science.avif', text: ''),
  CategoryModels(image: 'assets/sports.jpeg', text: ''),
  CategoryModels(image: 'assets/technology.jpeg', text: ''),
];
