import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppName6(title: 'speak'),
    ),
  );
}

class MyAppName6 extends StatefulWidget {
  String title;

  MyAppName6({super.key, required this.title});

  @override
  State<MyAppName6> createState() => _MyAppName6State();
}

class _MyAppName6State extends State<MyAppName6> {
 SpeechToText speech = SpeechToText();
 bool available = false;
 bool listening = false;
 initSpeech()async{
   available = await speech.initialize();

 }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSpeech();
  }
 void startListening()async{
   setState(() {
     listening = true;
   });
   await speech.listen(onResult: (result){

      setState(() {
        text=result.recognizedWords;
      });

   });
 }
 void stopListening()async{
   setState(() {
     listening = false;
   });
   await speech.stop();
 }
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,title: Text("TextToSpeech",style: TextStyle(color: Colors.white),),backgroundColor: Colors.indigo,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(widget.title,style: TextStyle(color: Colors.red),), SizedBox(height: 10), Text(text,style: TextStyle(color: Colors.red),)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(listening){
            stopListening();
          }
          else
            {
              startListening();
            }
        },
        child: Icon(listening? Icons.close:Icons.mic),
      ),
    );
  }
}

//
// class MyAppName6 extends StatefulWidget {
//   String title;
//
//   MyAppName6({super.key, required this.title});
//
//   @override
//   State<MyAppName6> createState() => _MyAppName6State();
// }
//
// class _MyAppName6State extends State<MyAppName6> {
//   SpeechToText speech = SpeechToText();
//   bool available = false;
//   bool listening = false;
//
//   initSpeech() async {
//     available = await speech.initialize();
//   }
//
//   void startListening() async {
//     setState(() {
//       listening = true;
//     });
//
//     await speech.listen(
//       onResult: (result) {
//         setState(() {
//           text = result.recognizedWords;
//         });
//       },
//     );
//   }
//
//   void stopListening() async {
//     setState(() {
//       listening = false;
//     });
//     speech.stop();
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initSpeech();
//   }
//
//   String text = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text(widget.title,style: TextStyle(color: Colors.black,fontSize: 25),), SizedBox(height: 10), Text(text,style: TextStyle(color: Colors.black,fontSize: 15),)],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if(listening){
//            stopListening();
//           }
//           else
//             {
//           startListening();
//             }
//         },
//         child: listening?Icon(Icons.close) :Icon(Icons.mic),
//       ),
//     );
//   }
// }
