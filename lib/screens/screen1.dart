import 'package:flutter/material.dart';
import 'package:frontle/components/grid.dart';
import 'package:frontle/components/keyboard_row.dart';
import 'package:frontle/screens/cluescreen.dart';
import 'package:frontle/screens/historyscreen.dart';
import 'package:frontle/screens/info.dart';

class FrontleScreen extends StatefulWidget {
  const FrontleScreen({Key? key}) : super(key: key);

  @override
  State<FrontleScreen> createState() => _FrontleScreenState();
}

class _FrontleScreenState extends State<FrontleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff123563),
        title: const Text('FRONTLYNE'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "80",
                      style: TextStyle(
                          fontSize: 14.9, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/coins.png',
                      width: 17,
                      height: 17,
                    ),
                  ],
                ),
                const Text(
                  "FRONTLE",
                  style: TextStyle(
                      fontSize: 27,
                      color: Color(0xff123563),
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: (() {
                    showDialog(
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return infoscreen();
                        });
                  }),
                  child: const Icon(
                    Icons.info_outline_rounded,
                    color: Color(0xff707070),
                    size: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => History()),
                    );
                  },
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xff123563),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/bar.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return const ClueScreen();
                          },
                        );
                      },
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color(0xff123563),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/bulb.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text("10"),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/images/coins.png',
                          width: 10,
                          height: 10,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: const Grid(),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: const [
                  KeyboardRow(
                    min: 1,
                    max: 10,
                  ),
                  KeyboardRow(min: 11, max: 19),
                  KeyboardRow(
                    min: 20,
                    max: 29,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
