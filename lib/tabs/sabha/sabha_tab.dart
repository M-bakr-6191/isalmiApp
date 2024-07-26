import 'package:flutter/material.dart';

class SabhaTab extends StatefulWidget {
  SabhaTab({super.key});

  @override
  State<SabhaTab> createState() => _SabhaTabState();
}

class _SabhaTabState extends State<SabhaTab> {
  int count = 0;
  double angle = 1.0;
  String tasbeh = 'سبحان الله';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            Transform.translate(
              offset: Offset(98, -80),
              child: Image.asset('assets/images/head_sebha_logo.png'),
            ),
            InkWell(
              child: Transform.rotate(
                child: Image.asset('assets/images/body_sebha_logo.png'),
                angle: angle,
              ),
              onTap: () {
                setState(() {});
                count++;
                angle += 2;
                if (count == 33) {
                  tasbeh = 'الحمد الله';
                } else if (count == 66) {
                  tasbeh = " الله اكبر";
                } else if (count == 100) {
                  tasbeh = 'سبحان الله';
                  count = 0;
                }
              },
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Text(
            'عدد التسبيحات',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color(0xff242424)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 81,
            width: 69,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(201, 183, 146, 95)),
            child: Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text(
                count.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Text(
              tasbeh,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffB7935F)),
            width: 138,
            height: 51,
          )
        ],
      ),
    );
  }
}
