import 'package:flutter/material.dart';
import 'package:tugas_dua/ui/login.dart';
import 'package:tugas_dua/utility/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Inventory App',
      home: const Login(),
      theme: ThemeData(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Colors.grey.shade50,
          colorScheme: ColorScheme.fromSeed(seedColor: MyColors().twitter)),
      // cardTheme: const CardTheme().copyWith(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(16),
      //     side: BorderSide(color: MyColors().danger),
      //   ),
      //   margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      // ),
    );
  }
}
