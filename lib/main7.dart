import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyAppName5()));
}
//
// class MyAppName5 extends StatefulWidget {
//   const MyAppName5({super.key});
//
//   @override
//   State<MyAppName5> createState() => _MyAppName5State();
// }
//
// class _MyAppName5State extends State<MyAppName5> {
//   TimeOfDay? _selectedTime;
//   Future<void> _pickedTime() async {
//     TimeOfDay? time = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );
//     if(time != null)
//     {
//       setState(() {
//         _selectedTime = time; // ✅ save picked time
//       });
//     }
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     String timeText = _selectedTime == null
//         ? "No time selected"
//         : _selectedTime!.format(context);
//     return Scaffold(
//       body: Column(
//         children: [
//
//           Text(" $timeText"),
//           ElevatedButton(onPressed: _pickedTime, child: Text("Pick Time"))
//         ],
//       ),
//     );
//   }
// }
//
//
// class MyAppName5 extends StatefulWidget {
//   const MyAppName5({super.key});
//
//   @override
//   State<MyAppName5> createState() => _MyAppName5State();
// }
//
// class _MyAppName5State extends State<MyAppName5> {
//   DateTime? _showDateTime;
//   Future<void> _pickedDate() async{
//   DateTime? date = await showDatePicker(
//   context: context,
//   firstDate: DateTime(2000),
//   initialDate: DateTime.now(),
//   lastDate: DateTime.now(),
//   );
//
//   if (date != null) {
//   setState(() {
//   _showDateTime = date; // ✅ save picked date
//   });
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("DAtePicker")),
//       body: Column(
//
//         children: [
//           Text( _showDateTime == null ?"no date picked":"${_showDateTime!.day}-${_showDateTime!.month}-${_showDateTime!.year}"),
//           SizedBox(height: 20,),
//           ElevatedButton(onPressed: _pickedDate, child: Text("pickdate"))
//
//         ],
//       ),
//     );
//   }
// }

class MyAppName5 extends StatefulWidget {
  const MyAppName5({super.key});

  @override
  State<MyAppName5> createState() => _MyAppName5State();
}

class _MyAppName5State extends State<MyAppName5> {
  TimeOfDay? _selectedTime;

  Future<void> _pickedtime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) {
      setState(() {
        _selectedTime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String timeDay =
        _selectedTime == null
            ? "Please select the time"
            : _selectedTime!.format(context);
    return Scaffold(
      body: Column(
        children: [
          Text("$timeDay"),
          SizedBox(height: 20),
          ElevatedButton(onPressed: _pickedtime, child: Text("select time")),
        ],
      ),
    );
  }
}
