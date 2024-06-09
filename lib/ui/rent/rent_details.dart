import 'package:flutter/material.dart';
import 'package:tugas_dua/models/car.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';
import 'package:tugas_dua/utility/utility.dart';

class RentDetails extends StatefulWidget {
  const RentDetails({super.key, required this.car});

  final Car car;

  @override
  State<RentDetails> createState() => _RentDetailsState();
}

class _RentDetailsState extends State<RentDetails> {
  @override
  Widget build(BuildContext context) {
    final Car car = widget.car;

    return MyContainer(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: Column(
          children: [
            Image.asset(car.image),
            // const SizedBox(height: 20),
            TextField(
              enabled: false,
              controller: TextEditingController(
                  text: formatter.format(DateTime.now()).toString()),
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
              controller: TextEditingController(
                  text: formatter
                      .format(DateTime(DateTime.now().year,
                          DateTime.now().month, DateTime.now().day + 4))
                      .toString()),
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
            const SizedBox(height: 24),
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
                    'Update',
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
}
