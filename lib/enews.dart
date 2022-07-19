import 'dart:convert';
import 'article.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url =
        "https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=267d924fa07d4ac8abaa9564fc9d2369";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urltoimage: element['urlToImage'],
            content: element["content"],
            url: element["url"],
          );
          news.add(article);
        }
      });
    }
  }
}
