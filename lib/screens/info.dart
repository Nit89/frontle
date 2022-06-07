import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontle/components/infotile.dart';
import 'package:frontle/constants/colors.dart';

class infoscreen extends StatelessWidget {
  infoscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: const Color(0xFF123563).withOpacity(0.95),
      content: Container(
        width: 343,
        height: 457,
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
              'HOW TO PLAY',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Frontle is a daily word game where all the \nwords in the game are \n frontline-related.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You get 5 chances to guess the word.\n After each try, the tiles change colour indicating \nhow close or far your guess is from the word.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 13),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Row(
                children: [
                  Infotile(
                    alphabet: 'S',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'T',
                    color: correctGreen,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'O',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'C',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'K',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'The letter ',
                    ),
                    TextSpan(
                      text: 'T ',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'is in the word and in the right spot.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Row(
                children: [
                  Infotile(
                    alphabet: 'B',
                    color: containsYellow,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'I',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'L',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'L',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'S',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'The letter ',
                    ),
                    TextSpan(
                      text: 'B ',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'is in the word and in the wrong spot.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Row(
                children: [
                  Infotile(
                    alphabet: 'S',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'A',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'L',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'E',
                    color: wronggrey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Infotile(
                    alphabet: 'S',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'The letter ',
                    ),
                    TextSpan(
                      text: 'E ',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'is not anywhere in the word.         ',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
