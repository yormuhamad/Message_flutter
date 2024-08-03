
import 'package:flutter/material.dart';

import 'package:message/pagess/chorkunja.dart';
import 'package:message/pagess/girdak.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> sveti = [
    Colors.amber,
    Colors.green,
    Colors.blue,
    Colors.teal,
    Colors.red,
  ];
  List<String> postho = [
    'posti 1',
    'posti 2',
    'posti 3',
    'posti 4',
    'posti 5',
  ];
  List<String> istoriyaho = [
    'istoriya 1',
    'istoriya 2',
    'istoriya 3',
    'istoriya 4',
    'istoriya 5',
    'istoriya 6',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ListView and ListView.builder"),
            actions: const [
              Icon(
                Icons.notifications_outlined,
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: istoriyaho.length,
                      itemBuilder: (context, index) {
                        return Girdak(
                          istoriya: istoriyaho[index],
                        );
                      })),
              Expanded(
                flex: 3,
                child: ListView.builder(
                  itemCount: postho.length,
                  itemBuilder: (context, index) {
                    return Chorkunja(
                      post: postho[index],
                      rang: sveti[index],
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}