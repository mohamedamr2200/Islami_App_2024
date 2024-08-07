import 'package:flutter/material.dart';

class ItemSuraDetailsScreen extends StatelessWidget {
  String name;
  int index;

  ItemSuraDetailsScreen({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Text(
        "$name (${index + 1})",
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
