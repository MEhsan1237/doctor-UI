import 'package:flutter/cupertino.dart';

class ListProviderClass extends ChangeNotifier {
  final List<int> _listItems = [];
        List<int> get listItems => _listItems;
        void addList(val){
          _listItems.add(val);
          notifyListeners();
        }
  void delete(val){
    _listItems.remove(val);
    notifyListeners();
  }
}