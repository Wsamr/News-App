import 'package:dio/dio.dart';
import 'package:my_news_app/models/News_Model.dart';

class NewsServices {
  final dio = Dio();
  Future<List<NewsModel>> getNews() async {
    var response = await dio.get(
        "https://newsapi.org/v2/everything?apiKey=597cae44e0694e7baafd945ef5537f8e&language=en&q=general");
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];
    List<NewsModel> articleList = [];
    for (var article in articles) {
      NewsModel newsModel = NewsModel(
          image: article["urlToImage"],
          tittle: article["title"],
          description: article["description"]);

      articleList.add(newsModel);
    }
    return articleList;
  }
}
