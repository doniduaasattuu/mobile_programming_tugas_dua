import 'package:tugas_dua/data/cars.dart';
import 'package:tugas_dua/models/car.dart';

class CarService {
  List<Car> indexBrands({String? brand}) {
    if (brand != null && brand.isNotEmpty) {
      return cars.where((car) {
        return car.brand.toLowerCase() == brand.toLowerCase();
      }).toList();
    } else {
      return cars;
    }
  }

  List<Car> indexCategory({Category? category}) {
    if (category != null) {
      return cars.where((car) {
        return ((car.category == category) && car.recommended == true);
      }).toList();
    } else if (category != null && category == Category.all) {
      return cars.where((car) {
        return (car.recommended == true);
      }).toList();
    } else {
      return cars.where((car) {
        return (car.recommended == true);
      }).toList();
    }
  }
}
