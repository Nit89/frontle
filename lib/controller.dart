import 'package:flutter/material.dart';
import 'package:frontle/constants/answer_stage.dart';
import 'package:frontle/data/keys_map.dart';
import 'package:frontle/model/tile_model.dart';

class Controller extends ChangeNotifier {
  int currentTile = 0, currentRow = 0;
  List<TileModel> titlesEntered = [];
  String correctWord = "";
  setCorrectWord({required String word}) => correctWord = word;

  setkeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (currentTile == 6 * (currentRow + 1)) {
        checkWord();
      }
    } else if (value == 'BACK') {
      if (currentTile > 6 * (currentRow + 1) - 6) {
        currentTile--;
        titlesEntered.removeLast();
      }
    } else {
      if (currentTile < 6 * (currentRow + 1)) {
        titlesEntered.add(
            TileModel(answerStage: AnswerStage.notAnswered, letter: value));
        currentTile++;
      }
    }
    notifyListeners();
  }

  checkWord() {
    List<String> guessed = [], remainingCorrect = [];
    String guessedWord = "";
    for (int i = currentRow * 6; i < (currentRow * 6) + 6; i++) {
      guessed.add(titlesEntered[i].letter);
    }
    guessedWord = guessed.join();
    remainingCorrect = correctWord.characters.toList();
    if (guessedWord == correctWord) {
      for (int i = currentRow * 6; i < (currentRow * 6) + 6; i++) {
        titlesEntered[i].answerStage = AnswerStage.correct;
        keysMap.update(titlesEntered[i].letter, (value) => AnswerStage.correct);
      }
    } else {
      for (int i = 0; i < 6; i++) {
        if (guessedWord[i] == correctWord[i]) {
          remainingCorrect.remove(guessedWord[i]);
          titlesEntered[i + (currentRow * 5)].answerStage = AnswerStage.correct;
          keysMap.update(guessedWord[i], (value) => AnswerStage.correct);
        }
      }
      for (int i = 0; i < remainingCorrect.length; i++) {
        for (int j = 0; j < 6; j++) {
          if (remainingCorrect[i] ==
              titlesEntered[j + (currentRow * 6)].letter) {
            if (titlesEntered[j + (currentRow * 6)].answerStage !=
                AnswerStage.correct) {
              titlesEntered[j + (currentRow * 6)].answerStage =
                  AnswerStage.contains;
            }
            final resultKey = keysMap.entries.where((element) =>
                element.key == titlesEntered[j + (currentRow)].letter);
            if (resultKey.single.value != AnswerStage.correct) {
              keysMap.update(
                  resultKey.single.key, (value) => AnswerStage.contains);
            }
          }
        }
      }
    }
    currentRow++;
    notifyListeners();
  }
}
