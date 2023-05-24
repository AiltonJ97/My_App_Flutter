// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:meu_app/timer_ex.dart';

  List<Timers> list = [];

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ponto'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 8,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Timers newTimer = Timers(
                    hours: DateTime.now().toString(),
                  );
                  list.add(newTimer);
                  print(list);
                });
              },
              child: Text("+"),
            ),
            SizedBox(
              width: 8,
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text('Horarios: '),
                    subtitle: Text('Data'),
                    leading: Icon(Icons.lock_clock),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
