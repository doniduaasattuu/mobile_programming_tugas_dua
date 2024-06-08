import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_dua/ui/homepage.dart';
import 'package:tugas_dua/ui/registration.dart';
import 'package:tugas_dua/utility/helper_text.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Premium Car Rent',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Image.asset('assets/images/electric_car.png', width: 300),
            TextFormField(
              controller:
                  TextEditingController(text: 'doni.duaasattuu@gmail.com'),
              decoration: const InputDecoration(
                label: Text('Email'),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: TextEditingController(text: 'rahasia'),
              obscureText: secure,
              decoration: InputDecoration(
                label: const Text('Password'),
                // suffixIcon: Icon(CupertinoIcons.eye_slash_fill),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        secure = !secure;
                      });
                    },
                    icon: const Icon(CupertinoIcons.eye_slash_fill)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors().info,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: MyColors().light,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                HelperText(
                  mainText: 'Dont\'t have an account ?',
                  actionLink: const Registration(),
                  linkText: 'Sign Up here.',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
