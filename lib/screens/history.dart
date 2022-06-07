import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      insetPadding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: const Color(0xFF123563).withOpacity(0.95),
      content: Container(
        width: 339,
        height: 500,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
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
                              physics: const NeverScrollableScrollPhysics(),
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
                                          barrierColor: Colors.transparent,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              backgroundColor:
                                                  const Color(0xFF2E8BF7)
                                                      .withOpacity(0.95),
                                              content: SizedBox(
                                                width: 292,
                                                height: 152,
                                                child: Column(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/bariny.png'),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    const Text(
                                                      "BRAINY",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 9,
                                                    ),
                                                    const Text(
                                                      "This badge is awarded when you get\n  the word right in your first guess! ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xffFFFFFF)),
                                                    )
                                                  ],
                                                ),
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
                              const EdgeInsets.only(right: 15.0, bottom: 23),
                          child: GestureDetector(
                            onTap: () async {
                              await Share.share('Hello , check my reward');
                            },
                            child: Container(
                                width: 74,
                                height: 27,
                                decoration: BoxDecoration(
                                    color: const Color(0xff9FE587),
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
    );
  }
}
