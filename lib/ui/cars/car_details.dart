import 'package:flutter/material.dart';
import 'package:tugas_dua/models/car.dart';
import 'package:tugas_dua/services/recommeded_service.dart';
import 'package:tugas_dua/ui/cars/recommended_car.dart';
import 'package:tugas_dua/ui/homepage.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key, required this.car});

  final Car car;

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  _openBookCarOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: Column(
          children: [
            // const Text('Book Car'),
            const Icon(Icons.drag_handle_rounded),
            TextField(
              keyboardType: TextInputType.none,
              onTap: () {
                DateTime now = DateTime.now();
                showDatePicker(
                    context: context,
                    firstDate: now,
                    lastDate: DateTime(now.year, now.month, now.day + 1));
              },
              decoration: const InputDecoration(
                label: Text('Pickup date'),
                suffixIcon: Icon(Icons.calendar_month),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.none,
              onTap: () {
                DateTime now = DateTime.now();
                showDatePicker(
                    context: context,
                    firstDate: now,
                    lastDate: DateTime(now.year, now.month + 1, now.day));
              },
              decoration: const InputDecoration(
                label: Text('Drop off date'),
                suffixIcon: Icon(Icons.calendar_month),
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              keyboardType: TextInputType.none,
              decoration: InputDecoration(
                label: Text('Payment method'),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors().twitter,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: MyColors().light,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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

  @override
  Widget build(BuildContext context) {
    final Car car = widget.car;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors().light,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ),
              );
            },
            icon: const Icon(Icons.home),
          ),
        ],
        title: Text(
          '${car.brand} - ${car.name}',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: const BackButton(),
      ),
      body: MyContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 300,
                child: Image.asset(
                  car.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // const Text('Specification'),
            const Divider(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LEFT
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.calendar_month),
                              const SizedBox(width: 10),
                              Text(car.year),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const Icon(Icons.align_vertical_center_rounded),
                              const SizedBox(width: 10),
                              Text(car.transmission.name.toUpperCase()),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: car.electric
                                ? [
                                    const Icon(
                                      Icons.battery_charging_full_sharp,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(car.engine),
                                  ]
                                : [
                                    const Icon(
                                      Icons.local_gas_station_outlined,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(car.engine),
                                  ],
                          ),
                        ],
                      ),
                    ),
                    // const Spacer(),
                    // RIGHT
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.speed_rounded),
                              const SizedBox(width: 10),
                              Text(car.speed),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const Icon(Icons.people),
                              const SizedBox(width: 10),
                              Text(car.seat),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const Icon(Icons.work_outline_rounded),
                              const SizedBox(width: 10),
                              Text(car.baggage),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec lacinia leo. Vestibulum varius, metus nec semper mollis, enim eros sagittis turpis, quis auctor lacus erat a lectus. Nunc dignissim auctor ligula eu rhoncus.',
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),
                  const Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: RecommendedCar(
                      recommendedCar: RecommededService().index(car: car),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _openBookCarOverlay();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors().twitter,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            color: MyColors().light,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
