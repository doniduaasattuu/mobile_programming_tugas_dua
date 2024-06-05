import 'package:flutter/material.dart';
import 'package:tugas_dua/data/cars_data.dart';
import 'package:tugas_dua/ui/cars/car_details.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/models/car.dart';

class CarsList extends StatefulWidget {
  const CarsList({super.key, required this.carsData});

  final List<Car> carsData;

  @override
  State<CarsList> createState() => _CarsListState();
}

class _CarsListState extends State<CarsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: widget.carsData.length,
        itemBuilder: (ctx, index) => Card(
              surfaceTintColor: Colors.grey.shade500,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              shadowColor: MyColors().secondary,
              color: Colors.white,
              elevation: 8,
              margin: const EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              carsData[index].brand,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(carsData[index].name),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) =>
                                    CarDetails(car: carsData[index]),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            // shape: const RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.all(
                            //     Radius.circular(50),
                            //   ),
                            // ),
                            backgroundColor: carsData[index].electric
                                ? MyColors().twitter
                                : MyColors().teal,
                          ),
                          child: Row(
                            // children: [
                            //   const Icon(
                            //     Icons.energy_savings_leaf,
                            //     color: Colors.lightGreen,
                            //   ),
                            //   const SizedBox(width: 10),
                            //   Text(
                            //     carsData[index].dailyRent,
                            //     style: TextStyle(
                            //       color: MyColors().light,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ],

                            children: carsData[index].electric
                                ? [
                                    const Icon(
                                      Icons.energy_savings_leaf,
                                      color: Color.fromARGB(255, 163, 223, 95),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      carsData[index].dailyRent,
                                      style: TextStyle(
                                        color: MyColors().light,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]
                                : [
                                    Text(
                                      carsData[index].dailyRent,
                                      style: TextStyle(
                                        color: MyColors().light,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      carsData[index].image,
                      width: 150,
                    ),
                  ],
                ),
              ),
            ));

    // return ListView(
    //   children: [
    //     Card(
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.all(
    //           Radius.circular(16),
    //         ),
    //       ),
    //       color: Colors.white,
    //       child: Padding(
    //         padding: EdgeInsets.all(24),
    //         child: Row(
    //           children: [
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       'Toyota',
    //                       style: TextStyle(
    //                           fontWeight: FontWeight.bold, fontSize: 18),
    //                     ),
    //                     Text('Avanza 1.5'),
    //                   ],
    //                 ),
    //                 const SizedBox(height: 20),
    //                 ElevatedButton(
    //                   onPressed: () {},
    //                   child: Text(
    //                     '298rb/day',
    //                     style: TextStyle(color: MyColors().light),
    //                   ),
    //                   style: ElevatedButton.styleFrom(
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.all(
    //                         Radius.circular(12),
    //                       ),
    //                     ),
    //                     backgroundColor: MyColors().success,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Spacer(),
    //             Image.asset('assets/images/veloz.png'),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    // END
  }
}
