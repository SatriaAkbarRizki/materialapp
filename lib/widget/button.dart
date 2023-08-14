import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.orange, useMaterial3: true),
      home: Scaffold(
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {}, child: Text('Text Button no background')),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.amber),
                  onPressed: () {},
                  child: Text('Text Button')),
              FilledButton(onPressed: () {}, child: Text('Button Filled')),
              FilledButton.tonal(
                  onPressed: () {}, child: Text('Filled Tonal Button')),
              OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
              ElevatedButton(onPressed: () {}, child: Text('Elevated Button'))
            ],
          ),
        )),
      ),
    );
    
  }
}
