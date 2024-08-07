import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_project/my_theme_data.dart';
import 'package:islamic_project/quran/item_sura_details.dart';

class SuraNameDetails extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraNameDetails> createState() => _SuraNameDetailsState();
}

class _SuraNameDetailsState extends State<SuraNameDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    loadFile(args.index);

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
          title: Text(
            '  ${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: MyTheme.blackColor,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: verses.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return ItemSuraDetailsScreen(
                      name: verses[index],
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                        color: MyTheme.goldColor,
                        // height: 2,
                        thickness: 2);
                  },
                  itemCount: verses.length),
        ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraNameDetailsArgs {
  String name;
  int index;

  SuraNameDetailsArgs({required this.name, required this.index});
}
