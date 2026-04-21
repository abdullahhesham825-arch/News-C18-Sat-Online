import 'package:flutter/material.dart';
import 'package:news/apis/api_service.dart';
import 'package:news/apis/sources_response/Source.dart';
import 'package:news/models/category_model.dart';

class SourcesViewModel extends ChangeNotifier {

  List<Source> sources = [];
  bool isLoading = false;
  String errorMessage = '';


  Future<void> loadSources(CategoryModel category)async{
    isLoading = true;
    notifyListeners();
    sources = await APIService.getSources(category) ?? [];
    isLoading = false;
    notifyListeners();
  }
}