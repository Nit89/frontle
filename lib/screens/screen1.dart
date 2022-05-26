import 'package:flutter/material.dart';
import 'package:frontle/components/keyboard_row.dart';

class FrontleScreen extends StatefulWidget {
  FrontleScreen({Key? key}) : super(key: key);

  @override
  State<FrontleScreen> createState() => _FrontleScreenState();
}

class _FrontleScreenState extends State<FrontleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff123563),
        title: Text('FRONTLYNE'),
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
                    Text(
                      "80",
                      style: TextStyle(
                          fontSize: 14.9, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/coins.png',
                      width: 17,
                      height: 17,
                    ),
                  ],
                ),
                Text(
                  "FRONTLE",
                  style: TextStyle(
                      fontSize: 27,
                      color: Color(0xff123563),
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.info_outline_rounded,
                  color: Color(0xff707070),
                  size: 22,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                Column(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
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
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text("10"),
                        SizedBox(
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
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 30,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            // color: Color(0xffEFF8FF)
                            color: Color.fromARGB(255, 179, 87, 81)),
                        //child: Center(child: Text(index.toString())),
                      );
                    }),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
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
