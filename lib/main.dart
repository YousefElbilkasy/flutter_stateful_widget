// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 40;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('App Bar')),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text('Flutter Layout Demo',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.w300)),
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                      'images/dino-reichmuth-5Rhl-kSRydQ-unsplash.jpg')),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(children: [
                      Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Location',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ]),
                    Row(
                      children: [
                        IconButton(
                            iconSize: 35,
                            color: Colors.yellowAccent[700],
                            onPressed: () {
                              setState(() {
                                if (!flag) {
                                  flag = true;
                                  i++;
                                } else {
                                  flag = false;
                                  i--;
                                }
                              });
                            },
                            icon: flag
                                ? const Icon(Icons.star)
                                : const Icon(Icons.star_border)),
                        Text(
                          '$i',
                          style: const TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: MaterialButton(
                          onPressed: () {},
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child:
                                    Icon(Icons.call, color: Colors.deepPurple),
                              ),
                              Text(
                                'CALL',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    ),
                    Container(
                      child: MaterialButton(
                          onPressed: () {},
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child:
                                    Icon(Icons.send, color: Colors.deepPurple),
                              ),
                              Text(
                                'ROUTE',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    ),
                    Container(
                      child: MaterialButton(
                          onPressed: () {},
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child:
                                    Icon(Icons.share, color: Colors.deepPurple),
                              ),
                              Text(
                                'SHARE',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: const Text(
                    'Consider how to position the components of your user interface. A layout consists of the total end result of these positionings. Consider planning your layout to speed up your coding. Using visual cues to know where something goes on screen can be a great help.',
                    style: TextStyle(fontSize: 15)),
              )
            ],
          )),
    );
  }
}
