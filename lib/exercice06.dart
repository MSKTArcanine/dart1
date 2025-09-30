import 'exercice04.dart' as exo4;

Map<exo4.Starship, int> starshipSelection = {
  exo4.Starship(null, "Star Destroyer", 150000000, false) : 3,
  exo4.Starship(null, "Sentinel-class landing craft", 240000, false) : 2,
  exo4.Starship(null, "Y-Wing", 134999, false) : 5,
  exo4.Starship(null, "X-Wing", 149999, false) : 8,
};

int calculateCost(Map<exo4.Starship, int> list){
  int total = 0;
  list.forEach((ship, qtty) => 
    total += ship.cost * qtty);
  return total;
}