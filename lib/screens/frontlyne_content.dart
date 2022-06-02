import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontle/controller.dart';
import 'package:frontle/data/words.dart';
import 'package:frontle/screens/screen1.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _word;
  @override
  void initState() {
    final r = Random().nextInt(words.length);
    _word = words[r];

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<Controller>(context, listen: false)
          .setCorrectWord(word: _word);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.keyboard_arrow_left_outlined,
          size: 30,
        ),
        backgroundColor: const Color(0xff123563),
        title: const Text('FRONTLYNE'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          //  physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'CONTENT',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2E8BF7)),
                  ),
                  Icon(
                    Icons.info_outline_rounded,
                    color: Color(0xff707070),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: 345,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color(0xff123563),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "   FYI",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SizedBox(
                          height: 50,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff2E8BF7),
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xff2E8BF7),
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xff2E8BF7),
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xff2E8BF7),
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xff2E8BF7),
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Container(
                width: 345,
                height: 440,
                decoration: BoxDecoration(
                  color: const Color(0xff123563),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(34.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Games",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 262,
                            height: 148,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FrontleScreen()),
                                      );
                                    },
                                    child: Image.asset(
                                        'assets/images/Frontlefronlyneimg1.png'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 262,
                            height: 148,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
