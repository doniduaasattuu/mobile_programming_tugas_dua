import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_dua/ui/login.dart';
import 'package:tugas_dua/utility/my_colors.dart';
import 'package:tugas_dua/utility/my_container.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Text(
              'Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    'assets/images/doni.png',
                    width: 120,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Doni Darmawan',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Active since - ',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    'April 2018',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    'Personal Information',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: MyColors().tertiary),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Icon(Icons.edit, size: 18),
                      SizedBox(width: 4),
                      Text('Edit'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8),
              const Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('Email'),
                            ],
                          ),
                          Text('doni.duaasattuu@gmail.com'),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.phone_android_rounded),
                              SizedBox(width: 8),
                              Text('Phone'),
                            ],
                          ),
                          Text('08983456945'),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.globe),
                              SizedBox(width: 8),
                              Text('Web'),
                            ],
                          ),
                          Text('https://ei-maintenance.fajarpaper.com'),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(width: 8),
                              Text('Location'),
                            ],
                          ),
                          Text('Cikarang - Jawa Barat'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // UTILITY
              Row(
                children: [
                  Text(
                    'Utility',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: MyColors().tertiary),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.show_chart_sharp),
                              SizedBox(width: 8),
                              Text('Usage Analytics'),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              SizedBox(width: 8),
                              Text('Our Dealer'),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.logout),
                              SizedBox(width: 8),
                              Text('Logout'),
                            ],
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ),
                                );
                              },
                              child: const Icon(Icons.chevron_right)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
