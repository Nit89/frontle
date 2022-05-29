import 'package:flutter/material.dart';
import 'package:frontle/constants/answer_stage.dart';
import 'package:frontle/constants/colors.dart';
import 'package:frontle/controller.dart';
import 'package:provider/provider.dart';

class Tile extends StatefulWidget {
  const Tile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  Color _backgroundColor = Colors.transparent;
  late AnswerStage _answerStage;
  @override
  Widget build(BuildContext context) {
    return Consumer<Controller>(builder: (_, notifier, __) {
      String text = " ";
      if (widget.index < notifier.titlesEntered.length) {
        text = notifier.titlesEntered[widget.index].letter;
        _answerStage = notifier.titlesEntered[widget.index].answerStage;
        if (_answerStage == AnswerStage.correct) {
          _backgroundColor = correctGreen;
        } else if (_answerStage == AnswerStage.contains) {
          _backgroundColor = containsYellow;
        }
        return Container(
          color: _backgroundColor,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(text),
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    });
  }
}
