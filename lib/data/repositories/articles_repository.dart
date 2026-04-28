import 'package:news/data/apis/result.dart';
import 'package:news/data/apis/sources_response/Source.dart';

abstract class ArticlesRepository{
  Future<Result> getArticles(Source source);
}