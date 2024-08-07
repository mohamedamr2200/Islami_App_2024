import 'package:flutter/material.dart';
import 'package:islamic_project/hadethh/hadeth_details.dart';

import 'hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
  HadethItem hadethitem;

  ItemHadethName({required this.hadethitem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadethitem);
      },
      child: Text(
        hadethitem.title,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
