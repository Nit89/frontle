import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  int currentTile = 0, currentRow = 0;

  setkeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (currentTile == 6 * (currentRow + 1)) {
        currentRow++;
        print('check words');
      }
    } else if (value == 'BACK') {
      if (currentTile > 6 * (currentRow + 1) - 6) {
        currentTile--;
      }
    } else {
      if (currentTile < 6 * (currentRow + 1)) {
        currentTile++;
      }
    }
    print('current tile $currentTile and current row $currentRow');
  }
}
