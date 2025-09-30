import "package:cours1/exercice01.dart" as exercice1;
import "package:cours1/exercice02.dart" as exercice02;
import "package:cours1/exercice03.dart" as exercice03;
import "package:cours1/exercice04.dart" as exercice04;
import "package:cours1/exercice05.dart" as exercice05;

exercice1.Exercice1 c3po = exercice1.Exercice1();
exercice02.Exercice02 exo2 = exercice02.Exercice02();
exercice03.Exercice03 exo3 = exercice03.Exercice03();
void main(List<String> arguments) {
  print("${c3po.name} is a droid born in ${c3po.birthYear}, he is ${c3po.height} cm tall and weighs ${c3po.mass} kg");
  print("${c3po.name} has ${c3po.friends.length} friends");
  print("${c3po.name} friends are ${c3po.friends.join(', ')}.");

  // exo2.sideSelection();

  exo3.r2loop();
  final droids = exo3.getDroidsFromLoop(5);
  final evenDroids = exo3.getEvenDroidsFromDroidList(droids);
  print(evenDroids);
  final rDroids = exo3.reverseDroidListWithMap(droids);
  print(rDroids);

  // exo 4
  final starship = exercice04.Starship("sdf35f4", "Original", 1, true);
  print(starship.toString());
  final starshipSansId = exercice04.Starship(null, "LeCodeBarré", 1, true);
  print(starshipSansId.toString());
  final starshipNonVolant = exercice04.Starship.notFlying(null, "LeSansAiles", 34);
  print(starshipNonVolant.toString());

  try {
    print('Essai : Fly => Land');
    starship.land();
    print('Essai : land => land');
    starship.land();
  }catch(e){
    print(e.toString());
  }

  print('2e essai !');

  try {
    print('Essai : Land => Fly');
    starshipNonVolant.fly();
    print('Essai : Fly => Fly');
    starshipNonVolant.fly();
  }catch(e){
    print(e.toString());
  }

  // exo 5

  final List<exercice05.Character> characters = List.generate(5, (i) => exercice05.characterFactory());
  for(exercice05.Character char in characters){
    print(char);
    print('force: ${char.capabilityRatios()['force']!}%');
    print('agility: ${char.capabilityRatios()['agility']!}%');
    print('intelligence: ${char.capabilityRatios()['intelligence']!}%');
  }
}
