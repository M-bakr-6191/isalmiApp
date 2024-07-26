import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sabha/sabha_tab.dart';
import 'package:islami/tabs/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int currentindex = 0;
List<Widget> tabs = [
  QuranTab(),
  HadethTab(),
  SabhaTab(),
  RadioTab(),
  SettingsTab()
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
          ),
          centerTitle: true,
        ),
        body: tabs[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {});
            currentindex = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: 'quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: 'hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
          ],
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg5.png"), fit: BoxFit.cover)),
    );
  }
}
