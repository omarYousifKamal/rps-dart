import 'dart:io';
import 'dart:math';

enum Move {
  Rock,
  Papper,
  Scissors,
}
void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, Papper, Scissors? (r/p/s)');
    final input = stdin.readLineSync();
    if (input == 'r' ||
        input == 'p' ||
        input == 's' ||
        input == 'R' ||
        input == 'P' ||
        input == 'S') {
      var playerMove;
      if (input == 'r' || input == 'R') {
        playerMove = Move.Rock;
      } else if (input == 'p' || input == 'P') {
        playerMove = Move.Papper;
      } else {
        playerMove = Move.Scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print("You PLayed: $playerMove");
      print('AI played $aiMove');

      if (playerMove == aiMove) {
        print('Draw');
      } else if (playerMove == Move.Rock && aiMove == Move.Scissors ||
          playerMove == Move.Scissors && aiMove == Move.Papper ||
          playerMove == Move.Papper && aiMove == Move.Rock) {
        print('You Win');
      } else {
        print('You Lost');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Input');
    }
  }
}
