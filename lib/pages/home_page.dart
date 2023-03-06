import 'package:assetlysis/pages/calender.dart';
import 'package:assetlysis/pages/mainhome.dart';
import 'package:assetlysis/pages/more.dart';
import 'package:assetlysis/pages/news.dart';
import 'package:assetlysis/pages/portfolio.dart';
import 'package:flutter/material.dart';

class hme extends StatefulWidget {
  const hme({Key? key}) : super(key: key);

  @override
  State<hme> createState() => _hmeState();
}

class _hmeState extends State<hme> {
  int currentIndex3 = 0;

  final example3 = [
    const MainHomePage(),
    const news(),
    const calender(),
    const portfolio(),
    const more(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            example3.elementAt(currentIndex3),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            /*UL(
              children: [
                Text('This example consists of only icons and label but only the selected item shows the label.', style: primaryTextStyle()),
                Text('This example consists of only icons and label but only the selected item shows the label.', style: primaryTextStyle()),
                Text('Bottom Navigation type is shifting.', style: primaryTextStyle()),
                Text('Use when there are less than five items.', style: primaryTextStyle()),
              ],
            ),*/
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentIndex3 = index;
            });
          },
          currentIndex: currentIndex3,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.blueGrey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            //1
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            //2
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              activeIcon: Icon(Icons.newspaper_rounded),
              label: 'News',
            ),
            //3
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              activeIcon: Icon(Icons.calendar_month_rounded),
              label: 'Calender',
            ),
            //4
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              activeIcon: Icon(Icons.work),
              label: 'Portfolio',
            ),
            //5
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              activeIcon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ]),
    ));
  }
}
