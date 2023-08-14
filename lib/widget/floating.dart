import 'package:flutter/material.dart';

class FloatingWidget extends StatelessWidget {
  const FloatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Center(
        child: Badge(
            label: Text('12'),
            isLabelVisible: true,
            largeSize: 18,
            child: FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Add Note'),
                icon: Icon(Icons.add),
                elevation: 0)),
      )),
    );
  }
}
