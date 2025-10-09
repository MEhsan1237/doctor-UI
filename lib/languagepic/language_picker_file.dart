import 'package:flutter/material.dart';
import 'package:language_picker/language_picker.dart';
import 'package:language_picker/languages.dart';


class LanguagePickClass extends StatefulWidget {


  const LanguagePickClass({super.key});

  @override
  State<LanguagePickClass> createState() => _LanguagePickClassState();
}

class _LanguagePickClassState extends State<LanguagePickClass> {

  String? languageName = "English";
  String? languageCode = "(en)";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Language Picker",style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor:Colors.deepPurple,),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(languageName.toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                   SizedBox(width: 3,),
                   Text("(${languageCode.toString()})",style: TextStyle(color: Colors.black,fontSize: 20),),
                 ],
               ),
             ),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white
                ),
                onPressed: (){

              _functionDialogue();

            }, child: Text("Click me"))

          ],
        ),
      ),
    );
  }

  _functionDialogue(){
    return showDialog(context: context, builder: (context) {
      return LanguagePickerDialog(

        title: Center(child: Text("Select Your Language")),
      isSearchable: true,

        searchInputDecoration: InputDecoration(
          hintText: " Search here"
        ),
        onValuePicked: (Language language){
        setState(() {
          languageName = language.name;
          languageCode = language.isoCode;

        });
        },
        itemBuilder: (language) {
          return Row(
            children: [
              Text(language.name.toString() ),
              SizedBox(width: 5,),
              Text("(${language.isoCode.toString()})"),

            ],
          );
        },
      );
    },);
  }
}
