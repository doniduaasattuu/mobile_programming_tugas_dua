import 'package:tugas_dua/data/cars.dart';
import 'package:tugas_dua/models/car.dart';

class RecommededService {
  List<Car> index({Car? car}) {
    if (car != null) {
      return cars.where((mobil) => mobil != car).toList();
    }
    return cars;
  }
}
