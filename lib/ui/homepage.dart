import 'package:flutter/material.dart';
import 'package:tugas_dua/data/cars_class_data.dart';
import 'package:tugas_dua/data/cars_data.dart';
import 'package:tugas_dua/ui/cars/cars_list.dart';
import 'package:tugas_dua/ui/cars_class.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Doni',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                label: const Text('Search'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors().secondary),
                  borderRadius: BorderRadius.circular(50),
                ),
                suffixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Most Rented Car',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Container(
            //   height: 30,
            //   child: Expanded(
            //     child: ListView(
            //       scrollDirection: Axis.horizontal,
            //       children: [
            //         Text('All'),
            //         const SizedBox(width: 25),
            //         Text('SUV'),
            //         const SizedBox(width: 25),
            //         Text('MPV'),
            //         const SizedBox(width: 25),
            //         Text('EV'),
            //         const SizedBox(width: 25),
            //         Text('Hatchback'),
            //         const SizedBox(width: 25),
            //         Text('City car'),
            //         const SizedBox(width: 25),
            //         Text('LCGC'),
            //       ],
            //     ),
            //   ),
            // ),

            Expanded(child: CarsClass(carsClassData: carClassData)),

            // Expanded(
            //   child: ListView(
            //     padding: EdgeInsets.zero,
            //     scrollDirection: Axis.horizontal,
            //     children: <Widget>[
            //       ElevatedButton(
            //         onPressed: () {},
            //         style: ElevatedButton.styleFrom(
            //           surfaceTintColor: Colors.deepPurple,
            //         ),
            //         child: const Text('All'),
            //       ),
            //       const SizedBox(width: 15),
            //       TextButton(
            //         onPressed: () {},
            //         style: TextButton.styleFrom(
            //           backgroundColor: Colors.deepPurple.shade100,
            //         ),
            //         child: const Text('EV'),
            //       ),
            //       const SizedBox(width: 15),
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text('SUV'),
            //       ),
            //       const SizedBox(width: 15),
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text('MPV'),
            //       ),
            //       const SizedBox(width: 15),
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text('Hatchback'),
            //       ),
            //       const SizedBox(width: 15),
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text('Citycar'),
            //       ),
            //       const SizedBox(width: 15),
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text('LCGC'),
            //       ),
            //       const SizedBox(width: 15),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 20),
            Expanded(
              flex: 14,
              child: CarsList(carsData: carsData),
            ),
            // Expanded(
            //   child: CarsList(carsData: carsData),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.car_rental), label: 'Rent'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
