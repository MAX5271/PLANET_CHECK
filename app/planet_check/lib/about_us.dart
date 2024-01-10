import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'About Us',
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 43, 42, 42),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          children: [
            Text(
              'Welcome to Planet Check, where our passion for a sustainable future drives us to make meaningful contributions to the fight against climate change. Our dedicated team of four members is united by a common goal: to empower individuals like you to take actionable steps towards a greener, healthier planet.',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              '\nOur Mission\n',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            ),
            Text(
              'At Planet Check, we believe that every small action has the power to make a significant impact on the environment. Our mission is to simplify and personalize the journey towards a sustainable lifestyle. By calculating and understanding your carbon footprint, we aim to inspire positive change and raise awareness about the collective power of individual choices.',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              '\nOur Team\n',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            ),
            Text(
              'Nitigya Chandel: App Development department.\n',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Gyan Prakash Singh Jaruhar: Backend.\n',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Rishabh Yadav: Web Development department.\n',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Rishit Bajaj: Web Development department.',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
