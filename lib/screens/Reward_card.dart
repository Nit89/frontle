import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class Reward extends StatelessWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff123563),
        title: const Text('FRONTLYNE'),
        leading: const Icon(Icons.keyboard_arrow_left_outlined),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
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
                  const Icon(
                    Icons.info_outline_rounded,
                    color: Color(0xff707070),
                    size: 22,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
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
                  Column(
                    children: [
                      Container(
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
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                width: 342,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff123563)),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(''),
                                const Text(
                                  'HISTORY',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset(
                                  'assets/images/Subtract.png',
                                  fit: BoxFit.contain,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                accuracy: ScratchAccuracy.low,
                                brushSize: 50,
                                image: Image.asset(
                                    'assets/images/scratchcard.png'),
                                child: Container(
                                  height: 243,
                                  width: 251,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    height: 260,
                                    width: 255,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                              'assets/images/brainy.png'),
                                        ),
                                        const Text(
                                          'BRAINY',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: Color(0xff2E8BF7)),
                                        ),
                                        const Text(
                                            'You got the word right in your \n             first guess!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Color(0xff123563))),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
