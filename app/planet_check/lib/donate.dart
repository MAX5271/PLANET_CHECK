import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart' as launcher;

class Donate extends StatelessWidget {
  const Donate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
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
          'Donate',
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          children: [
            Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              color: Color.fromARGB(255, 32, 67, 60),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Support our Climate Action project by making a meaningful contribution. Your donation fuels our efforts to reduce carbon footprints and create a sustainable future.',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/donate.jpeg',
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(3, 34, 29, 1),
                          ),
                        ),
                        onPressed: () async {
                          launcher.launchUrl(
                              Uri.parse('https://www.greenpeace.org/india/en/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: const Text(
                          'GreenPeace.',
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(91, 196, 136, 1)),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(83, 110, 94, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(3, 34, 29, 1),
                          ),
                        ),
                        onPressed: () async {
                          launcher.launchUrl(
                              Uri.parse('https://www.worldwildlife.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: const Text(
                          'World Wildlife',
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(91, 196, 136, 1)),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(83, 110, 94, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(3, 34, 29, 1),
                          ),
                        ),
                        onPressed: () async {
                          launcher.launchUrl(
                              Uri.parse(
                                  'https://www.climaterealityproject.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: const Text(
                          'Climate Reality Project',
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(91, 196, 136, 1)),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(83, 110, 94, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(3, 34, 29, 1),
                          ),
                        ),
                        onPressed: () async {
                          launcher.launchUrl(Uri.parse('https://350.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: const Text(
                          '350.org',
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(91, 196, 136, 1)),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(83, 110, 94, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(3, 34, 29, 1),
                          ),
                        ),
                        onPressed: () async {
                          launcher.launchUrl(
                              Uri.parse('https://earthjustice.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: const Text(
                          'Earth Justice',
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(91, 196, 136, 1)),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(83, 110, 94, 1),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
