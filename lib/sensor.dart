import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() {
  runApp(const Sensor());
}

class Sensor extends StatelessWidget {
  const Sensor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Tilt right to exit the app.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  double posX = 180, posY = 350;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.title),
      ),
      body:
      StreamBuilder<GyroscopeEvent>(
          stream: SensorsPlatform.instance.gyroscopeEvents,
          builder: (context, snapshot) {
            // print("");
            if (snapshot.hasData) {
              posX = posX + (snapshot.data!.y*10);
              if(posX>240){exit(0);}
              posY = posY + (snapshot.data!.x*10);
            }
            return Transform.translate(
              offset: Offset(posX, posY),
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.red,
              ),
            );
          }),
    );
  }
}