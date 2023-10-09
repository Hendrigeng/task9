import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class secondscreen extends StatefulWidget {
  var data;
  var pasd;
  secondscreen({this.data, this.pasd, super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("${widget.data}"),
            Text("${widget.data}"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.backpack),
            ),
          ],
        ),
      ),
    );
  }
}
