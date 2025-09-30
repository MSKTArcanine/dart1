class Exercice03 {
  void r2loop(){
    for(int i = 1; i <= 5; i++){
      print("R2-D$i");
    }
  }

  List<String> getDroidsFromLoop(int nb){
    List<String> droids = [];
    for(int i = 1; i <= nb; i++){
      droids.add("R2-D$i");
    }
    return droids;
  }

  List<String> getEvenDroidsFromDroidList(List<String> droids){
    List<String> evens = droids.where((n) => int.parse(n[4])%2 == 0).toList();
    return evens;
  }

  List<String> reverseDroidListWithMap(List<String> droids){
    return List.generate(droids.length, (i) => droids[droids.length - 1 - i]);
  }
}