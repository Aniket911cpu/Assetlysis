import 'package:assetlysis/pages/calender.dart';
import 'package:assetlysis/pages/mainhome.dart';
import 'package:assetlysis/pages/more.dart';
import 'package:assetlysis/pages/news.dart';
import 'package:assetlysis/pages/portfolio.dart';
import 'package:flutter/material.dart';

class BtmBar extends StatefulWidget {
  const BtmBar({Key? key}) : super(key: key);

  @override
  State<BtmBar> createState() => _BtmBar();
}

class _BtmBar extends State<BtmBar> {
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
      body: example3[currentIndex3],
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
