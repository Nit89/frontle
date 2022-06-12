import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class Reward extends StatefulWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  bool text = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        elevation: 0,
        insetPadding: const EdgeInsets.all(12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: const Color(0xFF123563).withOpacity(0.95),
        content: Container(
          width: 342,
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff123563)),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(''),
                          GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                            }),
                            child: Image.asset(
                              'assets/images/Subtract.png',
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        'HISTORY',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "15",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'PLAYED',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "100%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'WIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "4",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                SizedBox(height: 4),
                                Text('CURRENT\n STREAK',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12))
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "8",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                SizedBox(height: 4),
                                Text('MAX',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12)),
                                Text('STREAK',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12)),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "HURRAY!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'You have earned a new badge!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Scratcher(
                        color: const Color(0xff123563),
                        accuracy: ScratchAccuracy.low,
                        brushSize: 50,
                        onScratchStart: () {
                          setState(() {
                            text = false;
                          });
                        },
                        image: Image.asset(
                          'assets/images/scratchcard.png',
                        ),
                        child: Container(
                          height: 245,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/brainy.png',
                                  fit: BoxFit.contain,
                                ),
                                const Text(
                                  'BRAINY',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color(0xff2E8BF7)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'You got the word right in your \n                first guess!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color(0xff123563),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      text
                          ? const Text(
                              'Scratch to know what you won!',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
