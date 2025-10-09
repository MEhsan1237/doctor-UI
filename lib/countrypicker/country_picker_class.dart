import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerClass extends StatefulWidget {
  const CountryPickerClass({super.key});

  @override
  State<CountryPickerClass> createState() => _CountryPickerClassState();
}

class _CountryPickerClassState extends State<CountryPickerClass> {
  final pickerCountry = FlCountryCodePicker();
  final textController = TextEditingController();
  String? countryName = "Pakistan";
  String? countryCode = "+92";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country Picker"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(countryName.toString()),
                SizedBox(width: 3),
                Text(countryCode.toString()),
              ],
            ),
            SizedBox(height: 10,),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: InkWell(
                        onTap: ()async{
                          final picker = await pickerCountry.showPicker(context: context);
                          setState(() {
                            countryName = picker!.name.toString();
                            countryCode =  "(${picker.dialCode.toString()})";
                          });},
                      child: Container(
                        width: 45,
                        height: 45,

                        decoration: BoxDecoration(color: Colors.deepOrange),
                        child: Center(
                          child: Text(
                            countryCode.toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50.0,left: 10),
                      child: TextFormField(
                        controller: textController,
                        decoration: InputDecoration(

                          hintText: "search here the country",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  )
                ],
              ),

          ],
        ),
      ),
    );
  }
}
