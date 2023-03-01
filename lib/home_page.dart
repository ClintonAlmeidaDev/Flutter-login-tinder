import 'dart:js';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Widget _body() {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          child: Image.asset('assets/images/logobranca.png'),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Location Changer',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        SizedBox(
          height: 10,
        ),
        Text('Plugin app for Tinder',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Login with Facebook',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          style: TextButton.styleFrom(
              minimumSize: Size(230, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              primary: Colors.red,
              backgroundColor: Colors.white),
        )
      ],
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:
                Image.asset('assets/images/background.png', fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170, left: 140),
            child: _body(),
          ),
        ],
      ),
    );
  }
}
