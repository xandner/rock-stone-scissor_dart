import "dart:io";
import "dart:math";

enum Move {
  rock,
  paper,
  scissor,
}
void main() {
  final rng = Random();
  while (true) {
    stdout.write(" r / p / s ?  ");
    final input = stdin.readLineSync();
    if (input == "r" || input == "p" || input == "s") {
      print('selected $input');
      var playerMove;
      if (input == "r") {
        playerMove = Move.rock;
      } else if (input == "p") {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissor;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      if (playerMove == aiMove) {
        print('It\'s equal');
      } else if (playerMove == Move.rock && aiMove == Move.scissor ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissor && aiMove == Move.paper) {
        print("you win");
      } else {
        print("you lose");
      }
    } else {
      print('invalid input');
      break;
    }
  }
}
