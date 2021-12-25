import 'package:flutter/material.dart';

class TelaHomeRestaurante extends StatefulWidget {
  @override
  _TelaHomeRestaurante createState() => _TelaHomeRestaurante();
}

class _TelaHomeRestaurante extends State<TelaHomeRestaurante> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                })
          ],
        ),
      ),
    );
  }
}
