import 'package:flutter/material.dart';
import 'package:islamic_project/hadethh/hadeth_tab.dart';
import 'package:islamic_project/hadethh/item_hadeth_details.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethItem;

    return Stack(children: [
      Image.asset(
        'assets/images/bk_light.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          /* title: Text(
            ' ${args.title}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: MyTheme.blackColor,
          ),*/
        ),
        body: Container(
            padding: EdgeInsets.all(12),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemHadethDetailsScreen(
                    content: args.content[index],
                  );
                },
                itemCount: args.content.length)
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(24),
            //   ),
            //   margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            //   child: verses.length == 0
            //       ? Center(
            //           child: CircularProgressIndicator(
            //           color: Theme.of(context).primaryColor,
            //         ))
            //       : ListView.separated(
            //           itemBuilder: (context, index) {
            //             return ItemSuraDetailsScreen(name:verses[index],index: index,);
            //           },
            //           separatorBuilder: (context, index) {
            //             return Divider(
            //                 color: MyTheme.goldColor,
            //                 // height: 2,
            //                 thickness: 2);
            //           },
            //           itemCount: verses.length),
            // ),
            ),
      ),
    ]);
  }
}
