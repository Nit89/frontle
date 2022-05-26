import 'package:flutter/material.dart';
import 'package:frontle/controller.dart';
import 'package:frontle/data/keys_map.dart';
import 'package:provider/provider.dart';

class KeyboardRow extends StatelessWidget {
  const KeyboardRow({Key? key, required this.min, required this.max})
      : super(key: key);
  final int min, max;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int index = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: keysMap.entries.map((e) {
        index++;
        if (index >= min && index <= max) {
          return Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2E8BF7),
                //color: Color.fromARGB(255, 65, 4, 43),

                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              width: e.key == 'ENTER' || e.key == 'BACK' ? 50 : 28,
              height: 41.25,
              child: InkWell(
                onTap: (() {
                  Provider.of<Controller>(context, listen: false)
                      .setkeyTapped(value: e.key);
                }),
                child: Center(
                  child: e.key == 'BACK'
                      ? Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/cross.png',
                            fit: BoxFit.scaleDown,
                          ),
                        )
                      : Text(
                          e.key,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                ),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      }).toList(),
    );
  }
}
