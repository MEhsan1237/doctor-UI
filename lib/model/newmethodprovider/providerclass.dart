import 'package:flutter/foundation.dart';

class NewProviderMethod extends ChangeNotifier{
  int number;
  NewProviderMethod({
   this.number = 0,

});

  void incrementNumber(){
    number++;
    notifyListeners();
  }


void decrementNumber(){
  number--;
  notifyListeners();
}
}