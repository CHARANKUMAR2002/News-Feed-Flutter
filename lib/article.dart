class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String urltoimage;
  String content;

  ArticleModel(
      {
        required this.author,
        required this.title,
        required this.url,
        required this.description,
        required this.content,
        required this.urltoimage
      }
      );
}
