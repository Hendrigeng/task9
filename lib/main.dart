import 'dart:html';

import 'package:flutter/material.dart';
import 'package:task9/secondscreen.dart';

void main() {
  runApp(
    firstscreen(),
  );
}

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myscf(),
    );
  }
}

class myscf extends StatefulWidget {
  const myscf({super.key});
  @override
  State<myscf> createState() => _myscfState();
}

class _myscfState extends State<myscf> {
  final use = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //alignment: Alignment.center,
      backgroundColor: Colors.purple[50],
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('images/R.png'),
                    ),
                    // height: 100,
                    // width: 800,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text("SHRINE"),
                  ),
                ],
              ),
            ), //PHOTO AND TEXT
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(color: Colors.purple[100]),
              child: TextField(
                controller: use,
                decoration:
                    InputDecoration(filled: true, labelText: 'USERNAME'),
              ),
            ), //USERNAME
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(color: Colors.purple[100]),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'PASSWORD',
                ),
              ),
            ),
            //PASSWORD
            // Spacer(),

            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: MaterialButton(
                      child: Text("NEXT"),
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => secondscreen(
                            // data: "welcome${use.text}",
                             // pasd: pass.text,
                            ),
                          ),
                        );
                      },
                      color: Colors.purple[100],
                      minWidth: 40,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: MaterialButton(
                        child: Text("CANCEL"),
                        onPressed: () {
                          pass.clear();
                          use.clear();
                        },
                        minWidth: 40,
                        color: Colors.purple[100],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
