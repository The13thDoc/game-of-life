import 'cell.dart';
import 'dart:math';
import 'globals.dart' as life;

/// Patterns tested against:
/// [http://www.bitstorm.org/gameoflife/]

/// Testing with an Exploder.
/// Successful.
void patternExploder(Cell cell) {
  var coordMap = {
    '34,19': 1,
    '34,20': 1,
    '34,21': 1,
    '34,22': 1,
    '34,23': 1,
    '36,19': 1,
    '36,23': 1,
    '38,19': 1,
    '38,20': 1,
    '38,21': 1,
    '38,22': 1,
    '38,23': 1
  };

  String coord = '${cell.coordX},${cell.coordY}';

  if (coordMap[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
}

/// Testing with a 10 cell row.
/// Successful.
void patternTenCellRow(Cell cell) {
  var coordMap = {
    '35,33': 1,
    '36,33': 1,
    '37,33': 1,
    '38,33': 1,
    '39,33': 1,
    '40,33': 1,
    '41,33': 1,
    '42,33': 1,
    '43,33': 1,
    '44,33': 1
  };

  String coord = '${cell.coordX},${cell.coordY}';

  if (coordMap[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
}

/// Testing with a Small Exploder.
/// Successful.
void patternSmallExploder(Cell cell) {
  var coordMap = {
    '22,10': 1,
    '22,11': 1,
    '23,10': 1,
    '23,12': 1,
    '23,9': 1,
    '24,10': 1,
    '24,11': 1
  };

  String coord = '${cell.coordX},${cell.coordY}';

  if (coordMap[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
}

/// Testing with a Glider.
/// Successful.
/// (The Ant).
void patternGlider(Cell cell) {
  var dict = {'20,20': 1, '21,20': 1, '22,20': 1, '22,19': 1, '21,18': 1};

  String coord = '${cell.coordX},${cell.coordY}';

  if (dict[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
  initCorners(cell);
}

/// Testing. 4x4 square.
void patternSquare(Cell cell) {
  var dict = {'20,20': 1, '21,21': 1, '21,20': 1, '20,21': 1};

  String coord = '${cell.coordX},${cell.coordY}';

  if (dict[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
  initCorners(cell);
}

/// Initialize a random pattern.
void patternRandom(Cell cell) {
  bool coin = new Random().nextBool();
  if (coin) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
  initCorners(cell);
}

/// Initialize a blank pattern.
void patternBlank(Cell cell) {
  initCorners(cell);
  var dict = {};

  String coord = '${cell.coordX},${cell.coordY}';

  if (dict[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
}

/// Initialize the corners of the canvas as alive.
void initCorners(Cell cell) {
  num x = cell.coordX;
  num y = cell.coordY;
  // Always initialize the corners as living.
  // So we can see them...
  if (x == 0 && y == 0) {
    cell.state = 1;
  }
  if (x == life.columns - 1 && y == 0) {
    cell.state = 1;
  }
  if (x == 0 && y == life.rows - 1) {
    cell.state = 1;
  }
  if (x == life.columns - 1 && y == life.rows - 1) {
    cell.state = 1;
  }
}

/**
 * Named for:
 * pattern
 * D - Dart
 * 4 - Derived from previous pattern 4
 * a - Begin new versioning with Dart code
 *
 * Ends with two nodes.
 * (Correction since bug fix) Ends as 4x4 square.
 */
void patternD4a(Cell cell) {
  var dict = {
    '20,21': 1,
    '21,20': 1,
    '21,24': 1,
    '21,25': 1,
    '21,22': 1,
    '21,21': 1,
    '22,20': 1,
    '23,20': 1, // new
    '23,24': 1,
    '24,21': 1,
    '24,22': 1,
    '24,24': 1,
    '24,23': 1,
    '25,21': 1,
  };

  String coord = '${cell.coordX},${cell.coordY}';

  if (dict[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
}

/**
 * Pattern4, increased by 20 on each axis. Things brings it more to the center.
 * Cool beans. 48x100. About 600 cycles.
 * Cake taken.
 *
 * Dart port: Due to bugs through the Python and JavaScript code, I don't
 * think this pattern worked as well as previously thought.
 *
 * Since fixes in Dart, this runs successfully until about 600 cycles.
 */
void pattern4b(Cell cell) {
  var dict = {
    '20,21': 1,
    '21,20': 1,
    '21,21': 1,
    '22,20': 1,
    '24,21': 1,
    '24,22': 1,
    '25,21': 1,
    '21,24': 1,
    '21,25': 1,
    '21,22': 1,
    '24,24': 1,
    '23,24': 1,
    '24,23': 1
  };

  String coord = '${cell.coordX},${cell.coordY}';

  if (dict[coord] == 1) {
    cell.state = 1;
  } else {
    cell.state = 0;
  }
}
