import 'package:flutter/material.dart';
import 'package:frontle/components/infotile.dart';
import 'package:frontle/constants/colors.dart';

class WrongtResult extends StatelessWidget {
  const WrongtResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: const Color(0xFF123563).withOpacity(0.95),
      content: Container(
        width: 343,
        height: 458,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(''),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/Subtract.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
            Text(
              'OH NO! ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Try again tomorrow :)',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'TODAY’S  WORD',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 53.0),
              child: Row(
                children: [
                  Infotile(
                    alphabet: 'C',
                    color: correctGreen,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Infotile(
                    alphabet: 'A',
                    color: correctGreen,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Infotile(
                    alphabet: 'R',
                    color: correctGreen,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Infotile(
                    alphabet: 'E',
                    color: correctGreen,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Infotile(
                    alphabet: 'E',
                    color: correctGreen,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Infotile(
                    alphabet: 'R',
                    color: correctGreen,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'MEANING',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'A course of professional life or employment, which affords opportunity for progress or advancement in the world.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 13),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              children: [
                Text(
                  'USAGE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'She has a promising career ahead of her.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Row(
              children: [
                Text(
                  'PRONUNCIATION',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Speaker.png',
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '/kəˈrɪə/',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
