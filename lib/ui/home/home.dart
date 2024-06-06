import 'package:flutter/material.dart';
import 'package:tugas_dua/data/cars_class_data.dart';
import 'package:tugas_dua/data/cars_data.dart';
import 'package:tugas_dua/ui/cars/cars_class.dart';
import 'package:tugas_dua/ui/cars/cars_list.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            SizedBox(
              height: 38,
              child: CarsClass(classData: carClassData),
            ),
            const SizedBox(height: 20),
            Expanded(
              // flex: 14,
              child: CarsList(carsData: carsData),
            ),
          ],
        ),
      ),
    );
  }
}
