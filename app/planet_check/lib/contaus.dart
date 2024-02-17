import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart' as launcher;

class ConUs extends StatelessWidget {
  const ConUs({super.key});

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
          'Contact Us',
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/conback.jpeg'),
                    fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.3),
                  ],
                ),
              ),
            ),
          ),
          Wrap(
            children: [
              const Text(
                'Welcome to Planet Check – your go-to app for climate action! We\'re thrilled to have you join our community of eco-conscious individuals working towards a sustainable future. If you have any questions, feedback, or just want to connect with us, our dedicated team is here to assist you.\n\n',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Contact us on our gmail: help.planetcheck@gmail.com\n\n Response may take 1-2 business days.\n",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ElevatedButton(
                onPressed: () {
                  Uri uri =
                      Uri(scheme: 'mailto', path: 'help.planetcheck@gmail.com');
                  launcher.launchUrl(uri);
                },
                child: const Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
