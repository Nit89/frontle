import 'package:flutter/material.dart';
import 'package:frontle/screens/screen1.dart';

class TEST extends StatefulWidget {
  TEST({Key? key}) : super(key: key);

  @override
  State<TEST> createState() => _TESTState();
}

class _TESTState extends State<TEST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FrontleScreen()),
              );
            },
            child: Text('nitesh')),
      ),
    );
  }
}
