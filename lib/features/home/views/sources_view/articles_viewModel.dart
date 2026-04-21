import 'package:flutter/material.dart';
import 'package:news/apis/api_service.dart';
import 'package:news/apis/articlesResponse/Article.dart';
import 'package:news/apis/sources_response/Source.dart';

class ArticlesViewModel extends ChangeNotifier{


  List<Article> articles =[];
  bool isLoading = false;
  String errorMessage = '';

  void loadArticles(Source source, [String? searchKey])async{
    isLoading = true;
    notifyListeners();
   articles = await APIService.getArticles(source) ?? [];
    isLoading = false;
    notifyListeners();
  }
}