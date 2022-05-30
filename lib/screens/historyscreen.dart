import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff123563),
        title: Text('FRONTLYNE'),
        leading: Icon(Icons.keyboard_arrow_left_outlined),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
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
          ),
          SizedBox(
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
          ),
          SizedBox(
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
                              Text(''),
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
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
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
                                  children: [
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
                                  children: [
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
                                  children: [
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
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "BADGES",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: GridView.builder(
                                    itemCount: 9,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisSpacing: 4,
                                            crossAxisSpacing: 5),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                barrierColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    backgroundColor:
                                                        Color(0xFF2E8BF7)
                                                            .withOpacity(0.95),
                                                    content: Container(
                                                      width: 292,
                                                      height: 158,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25)),
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff2E8BF7),
                                            ),
                                            child: Image.asset(
                                              'assets/images/badge1.png',
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 15.0, bottom: 23),
                                child: Container(
                                    width: 74,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        color: Color(0xff9FE587),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.share,
                                          size: 13,
                                          color: Color(0xff123563),
                                        ),
                                        Text(
                                          'SHARE',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: Color(0xff123563)),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          )
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
    );
  }
}
