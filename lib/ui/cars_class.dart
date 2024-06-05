import 'package:flutter/material.dart';
import 'package:tugas_dua/data/cars_class_data.dart';
import 'package:tugas_dua/models/class.dart';

class CarsClass extends StatelessWidget {
  const CarsClass({super.key, required this.carsClassData});

  final List<Class> carsClassData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: carsClassData.length,
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor:
                carClassData[index].name == 'All' ? Colors.grey.shade300 : null,
          ),
          child: Text(carClassData[index].name),
        ),
      ),
      // SizedBox(width: 15),
    );
  }
}
