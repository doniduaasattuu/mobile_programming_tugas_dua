import 'package:flutter/material.dart';
import 'package:tugas_dua/models/car.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key, required this.car});

  final Car car;

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    final Car car = widget.car;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors().light,
        centerTitle: true,
        title: Text(
          '${car.brand} - ${car.name}',
          style: TextStyle(
            color: MyColors().tertiary,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: BackButton(
          color: MyColors().secondary,
        ),
      ),
      body: MyContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 350,
                child: Image.asset(
                  car.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const Divider(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // LEFT
                      Column(
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
                                    Text(car.capacity),
                                  ]
                                : [
                                    const Icon(
                                      Icons.local_gas_station_outlined,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(car.capacity),
                                  ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      // RIGHT
                      Column(
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
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Expanded(child: Column()),
            const Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec lacinia leo. Vestibulum varius, metus nec semper mollis, enim eros sagittis turpis, quis auctor lacus erat a lectus. Nunc dignissim auctor ligula eu rhoncus. In hac habitasse platea dictumst.'),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors().twitter),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Confirm Now',
                    style: TextStyle(
                      color: MyColors().light,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
