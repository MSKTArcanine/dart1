import 'dart:io';

class Exercice02 {
  void sideSelection(){
    stdout.write('Select your side (1 - Rebels / 2 - Empire) : ');
    String? side = stdin.readLineSync();
    print(num.parse(side!) == 1 ? "Welcome to the Rebels ! May the Force be with you!" : "Welcome to the Dark Side of the Force!");
  }
}