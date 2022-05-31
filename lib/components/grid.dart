import 'package:flutter/material.dart';
import 'package:frontle/components/tile.dart';

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 30,
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6, mainAxisSpacing: 15, crossAxisSpacing: 15),
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(color: Color(0xffEFF8FF)),
            // color: Color.fromARGB(255, 179, 87, 81)),
            child: Tile(
              index: index,
            ),
          );
        });
  }
}
