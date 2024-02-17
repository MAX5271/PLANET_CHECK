import 'dart:ui';

import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dona extends StatelessWidget {
  const Dona({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Donate',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(173, 0, 0, 0),
                  elevation: 25,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child:
                      //cliprrect,backdropfilter and imagefilter for that shadding and blending of the card to the background
                      ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(
                              'Support our Planet Check project by making a meaningful contribution. Your donation fuels our efforts to reduce carbon footprints and create a sustainable future.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Show your gratitude.',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(22),
                        ),
                      ),
                      elevation: 3,
                      child: GestureDetector(
                        onTap: () async {
                          launcher.launchUrl(
                              Uri.parse('https://www.greenpeace.org/india/en/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Text(
                                    'GreenPeace',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Greenpeace\'s goal is to ensure the ability of the Earth to nurture life in all its diversity.')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(22),
                        ),
                      ),
                      elevation: 3,
                      child: GestureDetector(
                        onTap: () async {
                          launcher.launchUrl(
                              Uri.parse('https://www.worldwildlife.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Text(
                                    'World Wildlife',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'The world\'s most iconic and endangered species are secured and recovering in the wild.')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(22),
                        ),
                      ),
                      elevation: 3,
                      child: GestureDetector(
                        onTap: () async {
                          launcher.launchUrl(
                              Uri.parse(
                                  'https://www.climaterealityproject.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Climate Reality Project.',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'We train and mobilize people worldwide with four global campaigns to accelerate climate action this decade and help us reach true net zero by 2050.')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(22),
                        ),
                      ),
                      elevation: 3,
                      child: GestureDetector(
                        onTap: () async {
                          launcher.launchUrl(Uri.parse('https://350.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Text(
                                    '350.org',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'We want to end the use of fossil fuels and transition to renewable energy by building a global, grassroots movement.')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(22),
                        ),
                      ),
                      elevation: 3,
                      child: GestureDetector(
                        onTap: () async {
                          launcher.launchUrl(
                              Uri.parse('https://earthjustice.org/'),
                              mode: launcher.LaunchMode.externalApplication);
                          if (!await launcher.launchUrl(Uri())) {
                            debugPrint('Could not launch the website');
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Earth Justice',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Our key objectives include: strengthening National Ambient Air Quality Standards and their enforcement.')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
