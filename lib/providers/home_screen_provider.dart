import 'package:flutter/material.dart';
import 'package:news/features/home/views/categories_view/categories_view.dart';
import 'package:news/features/home/views/sources_view/sources_view.dart';
import 'package:news/models/category_model.dart';

class HomeScreenProvider extends ChangeNotifier{
  Widget homeScreenView = CategoriesView();

  void goToSources(CategoryModel category){
    homeScreenView = SourcesView(category: category,);
    notifyListeners();
  }

  void goToCategories(){
    homeScreenView = CategoriesView();
    notifyListeners();
  }
}