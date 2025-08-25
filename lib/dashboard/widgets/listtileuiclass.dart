import 'package:flutter/material.dart';

class ListTileUiClass extends StatefulWidget {
  final String title;
  final String subtitle;
  final Icon leadingIcon;
  final Icon trailingIcon;

  const ListTileUiClass({
    super.key,
    required this.subtitle,
    required this.title,
    required this.leadingIcon,
    this.trailingIcon = const Icon(Icons.arrow_forward_ios_rounded),
  });

  @override
  State<ListTileUiClass> createState() => _ListTileUiClassState();
}

class _ListTileUiClassState extends State<ListTileUiClass> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leadingIcon,
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
      trailing: widget.trailingIcon,
    );
  }
}
