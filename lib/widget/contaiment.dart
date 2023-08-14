import 'package:flutter/material.dart';

class Contaiment extends StatefulWidget {
  const Contaiment({super.key});

  @override
  State<Contaiment> createState() => _ContaimentState();
}

class _ContaimentState extends State<Contaiment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.amber, useMaterial3: true),
      home: Scaffold(
        body: Center(
          child: FilledButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 500,
                      width: 500,
                      child: Center(
                          child: FilledButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Back'))),
                    );
                  },
                );
              },
              child: Icon(Icons.menu_sharp)),
        ),
      ),
    );
  }
}
