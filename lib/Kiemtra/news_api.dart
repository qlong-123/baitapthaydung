import 'dart:convert';
import 'package:thaydungbt/Kiemtra/article.dart';
import 'package:http/http.dart' as http;

class NewsAPI {
  final String apiKey = "5d2425df40f44e55ac9b0429264c2ab8";

  Future<List<Article>> fetchNews() async {
    final url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List articles = data["articles"];

      return articles.map((e) => Article.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load news");
    }
  }
}
