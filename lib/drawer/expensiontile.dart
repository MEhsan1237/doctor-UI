import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionItems extends StatefulWidget {
  String title;
   final VoidCallback onPress;

    ExpansionItems({super.key,required this.title,required this.onPress});

  @override
  State<ExpansionItems> createState() => _ExpansionItemsState();
}

class _ExpansionItemsState extends State<ExpansionItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Row(
        children: [
           TextButton(onPressed: widget.onPress, child: Text(widget.title,style: TextStyle(color: Colors.black),),)

        ],
      )],
    );
  }
}
