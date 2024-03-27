import 'package:dio/dio.dart';
import 'package:news_app/data/modules/get_news_module.dart';

class GetNewsRepo {
  final dio = Dio();

  Future<NewsResponse?> getNews() async {
    Response response;
    response = await dio.get(
        "https://newsapi.org/v2/everything?q=tesla&from=2024-02-26&sortBy=publishedAt&apiKey=4bde0b7be33a49a9bc20adc2ee73841a");
    NewsResponse myNews = NewsResponse.fromJson(response.data);
    return myNews;
  }
}
