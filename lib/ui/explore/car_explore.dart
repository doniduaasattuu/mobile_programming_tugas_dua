import 'package:flutter/material.dart';
import 'package:tugas_dua/models/car.dart';
import 'package:tugas_dua/ui/cars/car_details.dart';

class CarExplore extends StatefulWidget {
  const CarExplore({super.key, required this.cars});

  final List<Car> cars;

  @override
  State<CarExplore> createState() => _CarExploreState();
}

class _CarExploreState extends State<CarExplore> {
  @override
  Widget build(BuildContext context) {
    final cars = widget.cars;
    cars.shuffle();

    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        cars.length,
        (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => CarDetails(
                    car: cars[index],
                  ),
                ),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                // padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 4),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                cars[index].dailyRent,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Image.asset(
                            cars[index].image,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cars[index].brand,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            Text(cars[index].name),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
