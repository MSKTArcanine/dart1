import 'package:cours1/exercice04.dart' as exo4;
import 'package:test/test.dart';

void main() {
  test('Should be flying', () {
    exo4.Starship starship = exo4.Starship.notFlying(null, "LeTesté", 3);
    expect(starship.fly(), true);
  });

  test('should be landing', (){
    exo4.Starship s = exo4.Starship(null, "LeVolant", 2, true);
    expect(s.land(), true);
  });

  test('should be exception', (){
    exo4.Starship s = exo4.Starship(null, "LeVolant", 2, true);
    expect(() => s.fly(), throwsA(isA<exo4.StarshipException>()));
  });

  test('should be exception', (){
    exo4.Starship s = exo4.Starship.notFlying(null, "LeNonVolant", 2);
    expect(() => s.land(), throwsA(isA<exo4.StarshipException>()));
  });
}
