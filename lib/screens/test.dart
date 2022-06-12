import 'package:flutter/material.dart';
import 'package:frontle/screens/screen1.dart';
import 'package:frontle/utils/dimension.dart';

class TEST extends StatefulWidget {
  const TEST({Key? key}) : super(key: key);

  @override
  State<TEST> createState() => _TESTState();
}

class _TESTState extends State<TEST> {
  @override
  Widget build(BuildContext context) {
    print("current height ${MediaQuery.of(context).size.height}");
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_arrow_left_outlined,
          size: Dimension.height30,
        ),
        backgroundColor: const Color(0xff123563),
        title: const Text('FRONTLYNE'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(Dimension.height20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CONTENT',
                  style: TextStyle(
                      fontSize: Dimension.height18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2E8BF7)),
                ),
                const Icon(
                  Icons.info_outline_rounded,
                  color: Color(0xff707070),
                )
              ],
            ),
            SizedBox(
              height: Dimension.height35,
            ),
            Container(
              width: Dimension.Fyiconatinerwidth,
              height: Dimension.Fyiconatinerheight,
              decoration: BoxDecoration(
                color: const Color(0xff123563),
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimension.height16),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: Dimension.height20, left: Dimension.height15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "   FYI",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimension.height17,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Dimension.height3),
                      child: SizedBox(
                        height: Dimension.height50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xff2E8BF7),
                              radius: Dimension.radius30,
                              child: CircleAvatar(
                                radius: Dimension.radius22,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: Dimension.height30,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff2E8BF7),
                              radius: Dimension.radius30,
                              child: CircleAvatar(
                                radius: Dimension.radius22,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: Dimension.height30,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff2E8BF7),
                              radius: Dimension.radius30,
                              child: CircleAvatar(
                                radius: Dimension.radius22,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: Dimension.height30,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff2E8BF7),
                              radius: Dimension.radius30,
                              child: CircleAvatar(
                                radius: Dimension.radius22,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: Dimension.height30,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff2E8BF7),
                              radius: Dimension.radius30,
                              child: CircleAvatar(
                                radius: Dimension.radius22,
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
            SizedBox(
              height: Dimension.height23,
            ),
          ],
        ),
      ),
    );
  }
}
