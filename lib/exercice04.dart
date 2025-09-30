import 'package:uuid/uuid.dart';

class Starship {
  var uuid = Uuid();
  bool isFlying;
  String? id;
  String name;
  int cost;
  Starship(String? id, this.name, this.cost, this.isFlying) : id = id ?? Uuid().v4();
  Starship.notFlying(String? id, String name, int cost) : this(id, name, cost, false);

  @override
  String toString() {
    return "Starship(id: $id, name: $name, cost: $cost, isFlying: $isFlying)";
  }

  bool fly(){
    if(isFlying){
      throw StarshipException("Starship is already flying");
    }else{
      isFlying = true;
      return true;
    }
  }

  bool land(){
    if(!isFlying){
      throw StarshipException("Starship is not flying");
    }else{
      isFlying = false;
      return true;
    }
  }
}

class StarshipException implements Exception {
  final String message;

  StarshipException(this.message);
  
  @override
  String toString() {
    return 'StarshipException : $message';
  }
}