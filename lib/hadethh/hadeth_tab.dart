import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_project/hadethh/item_hadeth_name.dart';

import '../my_theme_data.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethItem> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadHadethFile();
    }
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/hadeth_image.png'),
          ),
          Divider(
              color: MyTheme.goldColor,
              // height: 2,
              thickness: 4),
          Text(
            'الأحاديث',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: MyTheme.goldColor, //  height: 2,
            thickness: 4,
          ),
          Expanded(
            flex: 3,
            child: allHadeth.length == 0
                ? Center(
                    child: CircularProgressIndicator(
                      color: MyTheme.goldColor,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return ItemHadethName(
                        hadethitem: allHadeth[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                          color: MyTheme.goldColor,
                          // height: 2,
                          thickness: 2);
                    },
                    itemCount: allHadeth.length),
          )
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String allAhadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethContent = allAhadeth.split('#\r\n');
    for (int i = 0; i < allHadethContent.length; i++) {
      List<String> hadethContent = allHadethContent[i].split('\n');
      String title = hadethContent[0];
      allHadethContent.removeAt(0);
      HadethItem hadethItem = HadethItem(content: hadethContent, title: title);
      allHadeth.add(hadethItem);
    }
    setState(() {});
  }
}

class HadethItem {
  String title;
  List<String> content;

  HadethItem({required this.content, required this.title});
}
