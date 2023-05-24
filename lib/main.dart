// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ponto'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)),
                labelText: 'Adicione o Horário',
                labelStyle: TextStyle(color: Colors.lightBlue),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text('Horarios: '),
                  subtitle: Text('Data'),
                  leading: Icon(Icons.lock_clock),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
