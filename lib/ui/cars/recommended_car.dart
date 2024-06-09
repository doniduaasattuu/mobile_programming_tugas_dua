import 'package:flutter/material.dart';
import 'package:tugas_dua/models/car.dart';
import 'package:tugas_dua/ui/cars/car_details.dart';

class RecommendedCar extends StatefulWidget {
  const RecommendedCar({super.key, required this.recommendedCar});

  final List<Car> recommendedCar;

  @override
  State<RecommendedCar> createState() => _RecommendedCar();
}

class _RecommendedCar extends State<RecommendedCar> {
  @override
  Widget build(BuildContext context) {
    List<Car> recommendedCar = widget.recommendedCar;
    recommendedCar.shuffle();

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: recommendedCar.length,
      itemBuilder: (ctx, index) => Card(
        surfaceTintColor: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => CarDetails(
                    car: recommendedCar[index],
                  ),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  recommendedCar[index].image,
                  height: 60,
                ),
                // const SizedBox(height: 4),
                Text(recommendedCar[index].name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
