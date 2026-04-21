import 'Article.dart';

class ArticlesResponse {
  ArticlesResponse({
      this.status, 
      this.totalResults, 
      this.articles,});

  ArticlesResponse.fromJson(dynamic json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(Article.fromJson(v));
      });
    }
  }
  String? status;
  int? totalResults;
  List<Article>? articles;


}