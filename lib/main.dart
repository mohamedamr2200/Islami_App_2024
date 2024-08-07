import 'package:flutter/material.dart';
import 'package:islamic_project/hadethh/hadeth_details.dart';
import 'package:islamic_project/my_theme_data.dart';
import 'package:islamic_project/quran/sura_name_details.dart';

import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraNameDetails.routeName: (context) => SuraNameDetails(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      //localizationsDelegates: AppLocalizations.localizationsDelegates,
      //  supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
