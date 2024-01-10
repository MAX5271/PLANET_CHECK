import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planet_check/about_us.dart';
import 'package:planet_check/contact_us.dart';
import 'package:planet_check/donate.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedindex = 0;

  void _navigate(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                }
              },
              icon: const Icon(Icons.exit_to_app))
        ],
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        title: const Text(
          'Planet Check',
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(8, 8, 8, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/background.jpg',
                  fit: BoxFit.cover,
                ),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'TOGETHER WE CAN MAKE A DIFFERENCE',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () async {
                        launcher.launchUrl(
                            Uri.parse('https://planet-check-f91cb.web.app/'),
                            mode: launcher.LaunchMode.externalApplication);
                        if (!await launcher.launchUrl(Uri())) {
                          debugPrint('Could not launch the website');
                        }
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10),
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 40, 164, 123),
                        ),
                      ),
                      child: const Text(
                        "Visit our website",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ClipRRect(
                borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Stack(
                      children: [
                        Wrap(
                          children: [
                            TextButton(
                              onPressed: () async {
                                launcher.launchUrl(
                                    Uri.parse(
                                        'https://www.statista.com/statistics/276629/global-co2-emissions/'),
                                    mode: launcher
                                        .LaunchMode.externalApplication);
                                if (!await launcher.launchUrl(Uri())) {
                                  debugPrint('Could not launch the website');
                                }
                              },
                              child: const Text(
                                'Check annual worldwide CO2 emissions.',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromRGBO(91, 196, 136, 1)),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Color.fromRGBO(0, 76, 33, 1),
                            ),
                            TextButton(
                              onPressed: () async {
                                launcher.launchUrl(
                                    Uri.parse(
                                        'https://www.un.org/en/global-issues/climate-change'),
                                    mode: launcher
                                        .LaunchMode.externalApplication);
                                if (!await launcher.launchUrl(Uri())) {
                                  debugPrint('Could not launch the website');
                                }
                              },
                              child: const Text(
                                'Learn about climate.',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromRGBO(91, 196, 136, 1)),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Color.fromRGBO(0, 76, 33, 1),
                            ),
                            TextButton(
                              onPressed: () async {
                                launcher.launchUrl(
                                    Uri.parse(
                                        'https://www.un.org/en/climatechange/science/causes-effects-climate-change'),
                                    mode: launcher
                                        .LaunchMode.externalApplication);
                                if (!await launcher.launchUrl(Uri())) {
                                  debugPrint('Could not launch the website');
                                }
                              },
                              child: const Text(
                                'Causes and effects of climate chage.',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromRGBO(91, 196, 136, 1)),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Color.fromRGBO(0, 76, 33, 1),
                            ),
                            TextButton(
                              onPressed: () async {
                                launcher.launchUrl(
                                    Uri.parse(
                                        'https://en.wikipedia.org/wiki/Carbon_footprint'),
                                    mode: launcher
                                        .LaunchMode.externalApplication);
                                if (!await launcher.launchUrl(Uri())) {
                                  debugPrint('Could not launch the website');
                                }
                              },
                              child: const Text(
                                'What is carbon footprint.',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromRGBO(91, 196, 136, 1)),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Color.fromRGBO(0, 76, 33, 1),
                            ),
                            TextButton(
                              onPressed: () async {
                                launcher.launchUrl(
                                    Uri.parse(
                                        'https://www.un.org/en/actnow/ten-actions'),
                                    mode: launcher
                                        .LaunchMode.externalApplication);
                                if (!await launcher.launchUrl(Uri())) {
                                  debugPrint('Could not launch the website');
                                }
                              },
                              child: const Text(
                                'What can you do for a healthy planet.',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromRGBO(91, 196, 136, 1)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  color: Color.fromARGB(255, 39, 38, 38),
                ),
              ),
            )
          ],
        ),
      ),
    ),
    const ContactUs(),
    const AboutUs(),
    const Donate()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GNav(
            selectedIndex: _selectedindex,
            onTabChange: _navigate,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            color: Colors.white,
            activeColor: Colors.white,
            gap: 12,
            tabBackgroundColor: const Color.fromARGB(255, 4, 31, 5),
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.phone,
                text: 'Contact',
              ),
              GButton(icon: Icons.book, text: 'About us'),
              GButton(
                icon: Icons.health_and_safety_rounded,
                text: 'Donate',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
