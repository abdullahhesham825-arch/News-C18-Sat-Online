import 'package:flutter/cupertino.dart';

class BaseViewMode<T> extends ChangeNotifier{
  T? state;
  void emit(T newState){
    state = newState;
    notifyListeners();
  }
}