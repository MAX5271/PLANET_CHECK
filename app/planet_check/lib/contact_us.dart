import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
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
      body: Wrap(
        children: [
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
    );
  }
}
