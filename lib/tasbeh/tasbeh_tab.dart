import 'package:flutter/material.dart';
import 'package:islamic_project/my_theme_data.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  List<String> Tasbeh = [
    'سبحان الله',
    ' الله أكبر',
    'الحمد لله',
    'لا اله إلا الله',
  ];
  int index = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Image.asset('assets/images/headd.png'),
            GestureDetector(
              onTap: () {
                onTasbehTab();
              },
              child: Transform.rotate(
                angle: angle,
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height * .08),
                  child: Image.asset('assets/images/sebha.png'),
                ),
              ),
            ),
          ]),
          Text(
            'عدد التسبيحات ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: MyTheme.goldColor,
                borderRadius: BorderRadius.circular(26)),
            child: Text(
              '$counter ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: MyTheme.goldColor,
                borderRadius: BorderRadius.circular(26)),
            child: Text(
              '${Tasbeh[index]} ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  void onTasbehTab() {
    counter++;
    if (counter % 33 == 0) {
      index++;
    }
    if (index == Tasbeh.length) {
      index = 0;
    }
    angle += 100 / 33;
    setState(() {});
  }
}
