import 'package:flutter/material.dart';
import 'package:tugas_dua/data/brands.dart';
import 'package:tugas_dua/models/car.dart';
import 'package:tugas_dua/services/car_service.dart';
import 'package:tugas_dua/ui/cars/cars_class.dart';
import 'package:tugas_dua/ui/explore/car_explore.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Car> data = CarService().indexBrands();

  String headerText = 'Most Popular Car';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(width: 4),
            Text(
              'Cikarang, Jawa Barat',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: MyContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                label: const Text('Search any car...'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors().secondary),
                  borderRadius: BorderRadius.circular(50),
                ),
                suffixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Brands',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 38,
              child: CarsClass(
                classData: brands,
                onPressed: (index) {
                  final String brand = brands[index].name;

                  if (brand != 'All') {
                    setState(() {
                      headerText = 'Available';
                      data = CarService().indexBrands(brand: brand);
                    });
                  } else {
                    setState(() {
                      headerText = 'Most Popular Car';
                      data = CarService().indexBrands();
                    });
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                Text(
                  headerText,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
              ],
            ),
            Expanded(
              child: CarExplore(cars: data),
            ),
          ],
        ),
      ),
    );
  }
}
