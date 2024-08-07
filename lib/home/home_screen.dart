import 'package:flutter/material.dart';
import 'package:islamic_project/hadethh/hadeth_tab.dart';
import 'package:islamic_project/home/radio_tab.dart';
import 'package:islamic_project/quran/quran_tab.dart';
import 'package:islamic_project/tasbeh/tasbeh_tab.dart';

import '../my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                'إسلامي',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              centerTitle: true,
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: MyTheme.goldColor,
              ),
              child: BottomNavigationBar(
                selectedItemColor: MyTheme.blackColor,
                unselectedItemColor: MyTheme.whiteColor,
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_quran.png'),
                      ),
                      label: 'قرأن'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_hades.png'),
                      ),
                      label: 'حديث'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_sebha.png'),
                      ),
                      label: 'تسبيح'),
                  /* BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_radio.png'),
                    ),
                    label: 'Radio'),*/
                ],
              ),
            ),
            body: tabs[selectedIndex])
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}
