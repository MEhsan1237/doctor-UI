import 'package:flutter/material.dart';
import 'package:practice/model/model.dart';
import 'package:practice/model/noteprovider.dart';
import 'package:provider/provider.dart';

class ProviderMain extends StatefulWidget {
  const ProviderMain({super.key});

  @override
  State<ProviderMain> createState() => _ProviderMainState();
}

class _ProviderMainState extends State<ProviderMain> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Form(
        key: _formKey,
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(hintText: "Enter name"),
            ),
            TextFormField(
              maxLines: 3,
              controller: _descController,
              decoration: InputDecoration(hintText: "Enter Description"),
            ),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){

                final note = NoteModel(
                  _nameController.text,
                  _descController.text,
                );

                Provider.of<NoteProvider>(context,listen: false).addNote(note);
                _nameController.clear();
                _descController.clear();
                Navigator.pop(context);


              }
            }, child: Text("Save"))
          ],
        ),
      ),),

    );
  }
}
