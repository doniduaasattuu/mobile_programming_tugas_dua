import 'package:flutter/material.dart';
import 'package:tugas_dua/models/class.dart';

class CarsClass extends StatefulWidget {
  const CarsClass(
      {super.key, required this.classData, required this.onPressed});

  final void Function(int index) onPressed;
  final List<Class> classData;

  @override
  State<StatefulWidget> createState() => _CarsClassState();
}

class _CarsClassState extends State<CarsClass> {
  final Color transparent = Colors.transparent;
  final Color greyShade300 = Colors.grey.shade300;
  String currentSelect = 'All';

  @override
  Widget build(BuildContext context) {
    final List<Class> classData = widget.classData;
    final Function(int index) pressed = widget.onPressed;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: classData.length,
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: GestureDetector(
          child: TextButton(
            onPressed: () {
              pressed(index);
              currentSelect = classData[index].name;
            },
            style: TextButton.styleFrom(
              backgroundColor: currentSelect == classData[index].name
                  ? greyShade300
                  : transparent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey.shade400),
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
            ),
            child: Text(classData[index].name),
          ),
        ),
      ),
      // SizedBox(width: 15),
    );
  }
}
