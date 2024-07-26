import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';

class SoraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details-screen';
  SoraDetailsScreen({super.key});
  List<String> ayat = [
    'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ',
    'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
    ' الرَّحْمَنِ الرَّحِيمِ',
    ' مَالِكِ يَوْمِ الدِّينِ',
    ' إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
    ' اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ'
        ' صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين'
  ];
  @override
  Widget build(BuildContext context) {
    SouraArgs args = ModalRoute.of(context)!.settings.arguments as SouraArgs;
    return Container(
        child: Scaffold(
            body: Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05,
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppTheme.white),
              child: ListView.builder(
                itemBuilder: (context, index) => Text(
                  ayat[index],
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                itemCount: ayat.length,
              ),
            ),
            appBar: AppBar(
              title: Text(
                args.souraName,
              ),
              centerTitle: true,
            )),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg5.png"),
                fit: BoxFit.cover)));
  }
}
