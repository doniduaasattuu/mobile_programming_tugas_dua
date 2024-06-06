import 'package:flutter/material.dart';
import 'package:tugas_dua/models/class.dart';

class CarsClass extends StatelessWidget {
  const CarsClass({super.key, required this.classData});

  final List<Class> classData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: classData.length,
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor:
                classData[index].name == 'All' ? Colors.grey.shade300 : null,
          ),
          child: Text(classData[index].name),
        ),
      ),
      // SizedBox(width: 15),
    );
  }
}
