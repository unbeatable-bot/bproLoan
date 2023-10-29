import 'package:flutter/material.dart';
class GraphArea extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  GraphArea({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView with 10 Items'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}