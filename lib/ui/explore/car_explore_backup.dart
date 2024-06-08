import 'package:flutter/material.dart';
import 'package:tugas_dua/models/car.dart';
import 'package:tugas_dua/ui/cars/car_details.dart';

class CarExplore extends StatefulWidget {
  const CarExplore({super.key, required this.cars});

  final List<List<Car>> cars;

  @override
  State<CarExplore> createState() => _CarExploreState();
}

class _CarExploreState extends State<CarExplore> {
  @override
  Widget build(BuildContext context) {
    final data = widget.cars;
    data.shuffle();
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (ctx, index) => Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => CarDetails(
                        car: data[index][0],
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    data[index][0].dailyRent,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Image.asset(
                                data[index][0].image,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index][0].brand,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(data[index][0].name),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => CarDetails(
                        car: data[index][1],
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Padding(
                    // padding: const EdgeInsets.all(16),
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    data[index][1].dailyRent,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Image.asset(
                                data[index][1].image,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index][1].brand,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(data[index][1].name),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
