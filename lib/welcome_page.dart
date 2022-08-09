import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0xFF, 0x00, 0x2b, 0x5b),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Zens Aquatic',
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Qicksand',
                  color: Color.fromARGB(0xFF, 0x8F, 0xE3, 0xCF)),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/zens_aquatic.png',
                  width: 250,
                  height: 250,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              'Hobbies and Seller Fish',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(0xFF, 0x8F, 0xE3, 0xCF)),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.whatsapp_outlined,
                  size: 32,
                  color: Colors.green,
                ),
                Text(
                  ': 088802675025',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(0xFF, 0x8F, 0xE3, 0xCF)),
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontFamily: 'Qiucksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
