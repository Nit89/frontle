import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                    child: Column(
                      children: [
                        const Text('history'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("15"),
                            Text("100"),
                            Text("4"),
                            Text("8")
                          ],
                        ),
                        const Text("BADGES"),
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: GridView.builder(
                                  itemCount: 9,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    // mainAxisSpacing: 4,
                                    // crossAxisSpacing: 5
                                  ),
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff2E8BF7),
                                        ),
                                        child: const Icon(
                                          Icons.question_mark,
                                          size: 50,
                                          color: Color(0xff123563),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
