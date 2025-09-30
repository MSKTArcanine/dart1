import 'package:cours1/exercice06.dart' as exo6;
import 'package:test/test.dart';

void main(){
  test('Calculate correctly', () {
    expect(exo6.calculateCost(exo6.starshipSelection), 452354987);
  });
}