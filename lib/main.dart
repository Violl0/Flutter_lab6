import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool onPressed1 = false;
  bool onPressed2 = false;
  bool onPressed3 = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Смена настроения'),
          
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          onPressed1 = true;
                          onPressed2 = false;
                          onPressed3 = false;
                        });
                      },
                      child: const Text('Счастливое настроение'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          onPressed1 = false;
                          onPressed2 = true;
                          onPressed3 = false;
                        });
                      },
                      child: const Text('Грустное настроение'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          onPressed1 = false;
                          onPressed2 = false;
                          onPressed3 = true;
                        });
                      },
                      child: const Text('Злое настроение'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          int v = Random().nextInt(3);
                          if (v == 0) {
                            onPressed1 = true;
                            onPressed2 = false;
                            onPressed3 = false;
                          } else if (v == 1) {
                            onPressed1 = false;
                            onPressed2 = true;
                            onPressed3 = false;
                          } else {
                            onPressed1 = false;
                            onPressed2 = false;
                            onPressed3 = true;
                          }
                        });
                      },
                      child: const Text('Случайное настроение'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (onPressed1)
                      Image.asset(
                        'assets/images/1.png',
                        width: 100,
                        height: 100,
                      ),
                    if (onPressed2)
                      Image.asset(
                        'assets/images/2.png',
                        width: 100,
                        height: 100,
                      ),
                    if (onPressed3)
                      Image.asset(
                        'assets/images/3.png',
                        width: 100,
                        height: 100,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
