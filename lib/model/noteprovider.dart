import 'package:flutter/material.dart';

import 'model.dart';

class NoteProvider  with ChangeNotifier {
   List<NoteModel> notes = [];
    void addNote(NoteModel note){
      notes.add(note);
     notifyListeners();
    }
   void deleteNote(NoteModel note){
     notes.remove(note);
     notifyListeners();
   }
}