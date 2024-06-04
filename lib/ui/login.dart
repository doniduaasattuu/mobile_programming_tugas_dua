import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Doni\'s Car Rent',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Image.asset('assets/images/electric_car.png', width: 300),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Email'),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                label: Text('Password'),
                suffixIcon: Icon(CupertinoIcons.eye_slash_fill),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors().success,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: MyColors().light,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
