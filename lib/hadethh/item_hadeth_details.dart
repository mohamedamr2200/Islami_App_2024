import 'package:flutter/material.dart';

class ItemHadethDetailsScreen extends StatelessWidget {
  String content;

  ItemHadethDetailsScreen({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Text(
        "$content ",
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
