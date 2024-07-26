import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Image.asset('assets/images/radio_image.png'),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'إذاعة القرآن الكريم',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.skip_previous,
                  color: Color(0xffB7935F),
                  size: 40,
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.play_arrow_rounded,
                  size: 80,
                  color: Color(0xffB7935F),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.skip_next,
                  color: Color(0xffB7935F),
                  size: 40,
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
