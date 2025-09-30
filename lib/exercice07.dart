import 'package:dio/dio.dart';

final dio = Dio();

class Vehicle {
  String name;
  String model;
  String manufacturer;
  int costInCredits;
  double length;
  int maxAtmospheringSpeed;
  int passengers;
  int cargoCapacity;
  String starshipClass;
  String url;

  Vehicle({
    required this.name,
    required this.model,
    required this.manufacturer,
    required this.costInCredits,
    required this.length,
    required this.maxAtmospheringSpeed,
    required this.passengers,
    required this.cargoCapacity,
    required this.starshipClass,
    required this.url,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      name: json['name'] ?? 'Unknown',
      model: json['model'] ?? 'Unknown',
      manufacturer: json['manufacturer'] ?? 'Unknown',
      costInCredits: int.tryParse(json['cost_in_credits'] ?? '') ?? 0,
      length: double.tryParse(json['length'] ?? '') ?? 0.0,
      maxAtmospheringSpeed: int.tryParse(json['max_atmosphering_speed'] ?? '') ?? 0,
      passengers: int.tryParse(json['passengers'] ?? '') ?? 0,
      cargoCapacity: int.tryParse(json['cargo_capacity'] ?? '') ?? 0,
      starshipClass: json['starship_class'] ?? 'Unknown',
      url: json['url'] ?? '',
    );
  }

  @override
  String toString() {
  return 'Vehicle('
    'name: $name, '
    'model: $model, '
    'manufacturer: $manufacturer, '
    'costInCredits: $costInCredits, '
    'length: $length, '
    'maxAtmospheringSpeed: $maxAtmospheringSpeed, '
    'passengers: $passengers, '
    'cargoCapacity: $cargoCapacity, '
    'starshipClass: $starshipClass, '
    'url: $url'
    ') \n';
  }
}

class VehicleService {
  Future<List<Vehicle>> findAll() async{
    final res = await dio.get('https://swapi.info/api/vehicles/');
    final List<dynamic> data = res.data;
    final parsedResponse = data.map((v) => Vehicle.fromJson(v)).toList();
    return parsedResponse;
  }
}

Future<Map<String, dynamic>> fetch() async {
  final res = await dio.get('https://swapi.dev/api/vehicles/14');
  final data = res.data;
  return data;
}