import 'package:flutter/material.dart';
import 'package:frontle/constants/colors.dart';

class Infotile extends StatelessWidget {
  const Infotile({Key? key, required this.alphabet, this.color = Colors.white})
      : super(key: key);
  final String alphabet;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.5),
        color: color,
      ),
      child: Center(
        child: Text(
          alphabet,
          style: TextStyle(
              color: textstylecolor, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
    );
  }
}
