// ignore_for_file: avoid_print

import 'dart:io';
import 'game.dart';
/*
var myList = <int>[];
var len = myList.length;

void main() {
  while (true) {
    playGame();
    String? input;

    do {
      stdout.write('Play again? (Y/N): ');
      input = stdin.readLineSync();
    } while (input!.toLowerCase() != 'y' && input.toLowerCase() != 'n');

    if (input.toLowerCase() == 'n') break;
  }

  print('\n\nYou\'ve played ${Game.guessCountList.length} games');
  for (var i = 0; i < Game.guessCountList.length; i++) {
    print('🚀 Game #${i + 1}: ${Game.guessCountList[i]} guesses');
  }


  void playGame() {
    int? maxRandom;
    do {
      stdout.write('\nEnter a maximum number to random: ');
      var input = stdin.readLineSync();
      maxRandom = int.tryParse(input!);
    } while (maxRandom == null);

    var game = Game(maxRandom: maxRandom);
    var isCorrect = false;

    print('');
    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      var result = game.doGuess(guess);

      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else if (result == 0) {
        print('║ ➜ $guess is CORRECT ❤, total guesses: ${game.guessCount}');
        print('╟────────────────────────────────────────');
        isCorrect = true;
        //Game.guessCountList.add(game.guessCount);
        game.addCountList();
      }
    } while (!isCorrect);

    print('║                 THE END                ');
    print('╚════════════════════════════════════════');
  }*/
String playGame(var x,var game) {
  /*stdout.write('Enter a maximum number to random: ');
  dynamic max = stdin.readLineSync();
  dynamic test = int.tryParse(max);
  var game = Game(maxRandom:test);*/
  var isCorrect = false;
  var text = "";
  //var title = '';

  /*print("╔══════════════════════════════════════════════════════");
  print("║                ❄️ GUESS THE NUMBER ❄️                 ");
  print("║──────────────────────────────────────────────────────");*/

  //{Game.maxRandom}

  do {
    //stdout.write('║ Guess the number between 1 and ${game.max}: ');
    var input = x;
    var guess = int.tryParse(input!);
    if (guess == null) {
      text = 'กรอกข้อมูลไม่ถูกต้อง ให้กรอกเฉพาะตัวเลขเท่านั้น';
      return text;
      //continue;
    }
//game.guessCount
    var result = game.doGuess(guess);

    if (result == 1) {
      /*print('║ ➜ $guess is TOO HIGH! ▲');
      print("║──────────────────────────────────────────────────────");*/
      text = '$guess มากเกินไป กรุณาลองใหม่';
      return text;
    } else if (result == -1) {
      /*print('║ ➜ $guess is TOO LOW! ▼');
      print("║──────────────────────────────────────────────────────");*/
      text = '$guess น้อยเกินไป กรุณาลองใหม่';
      return text;
    } else if (result == 0) {
      /*print('║ ➜ $guess is CORRECT 🍸, total guesses: ${game.guessCount}');
      print("║──────────────────────────────────────────────────────");*/
      text = '$guess ถูกต้องค่ะ🍸, คุณทายทั้งหมด : ${game.guessCount} ครั้ง';
      isCorrect = true;
      return text;
      //myList.add(game.guessCount);

      //return text;
    }
  } while (!isCorrect);
  return text;
  /*print("║                     ✨ THE END ✨                     ");
  print("║                    HAPPY NEW YEAR!                   ");
  print("║            May you have a joyous New Year.           ");
  print("╚══════════════════════════════════════════════════════");*/
}