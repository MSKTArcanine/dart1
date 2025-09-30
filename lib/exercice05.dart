import 'dart:ffi';
import 'dart:math';

enum Faction {
  jedi,
  sith,
  resistance,
  exmpire,
  mandalorian,
}

List<String> names = ['Luke Skywalker', 'Leia Organa', 'Han Solo', 'Obi-Wan Kenobi', 'Chewbacca', 'Yoda', 'Lando Calrissian', 'Palpatine', 'Mace Windu'];

class Character {
  final String name;
  final Faction faction;
  final int force;
  final int agility;
  final int intelligence;

  Character({required this.name, required this.faction, required this.force, required this.agility, required this.intelligence});

  int get power => (agility + force + intelligence);

  Map<String, double> capabilityRatios(){
    return {
      "force":force/power,
      "agility":agility/power,
      "intelligence":intelligence/power,
    };
  }

  @override
  String toString() {
    return "Character(name: $name, faction: ${faction.name}, force: $force, agility: $agility, intelligence: $intelligence, power: $power)";
  }
}

Character characterFactory(){
  String name = getRandomNameFromList(names);
  Faction faction = getRandomFaction();
  int force = getRandomStats();
  int agility = getRandomStats();
  int intelligence = getRandomStats();
  return Character(name: name, faction: faction, force: force, agility: agility, intelligence: intelligence);
}

String getRandomNameFromList(List<String> list){
  return list[Random().nextInt(list.length - 1)];
}

Faction getRandomFaction() {
  return Faction.values[Random().nextInt(Faction.values.length)];
}

int getRandomStats(){
  return Random().nextInt(100);
}