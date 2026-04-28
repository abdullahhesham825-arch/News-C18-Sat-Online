import 'package:news/data/apis/result.dart';
import 'package:news/data/apis/sources_response/Source.dart';
import 'package:news/data/data_sources/articles_data_source.dart';
import 'package:news/data/repositories/articles_repository.dart';

class ArticlesRepositoryImpl implements ArticlesRepository{
  ArticlesDataSource articlesDataSource;
  ArticlesRepositoryImpl({required this.articlesDataSource});
  @override
  Future<Result> getArticles(Source source) {
  return articlesDataSource.getArticles(source);
  }

}