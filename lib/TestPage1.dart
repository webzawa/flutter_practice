import 'package:flutter/material.dart';
import 'package:flutter_practice/TestPage2.dart';

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test1"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {
                      Navigator.of(context).pushNamed("/test2")
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return TestPage2();
                      // }))
                    },
                child: Text("進む", style: TextStyle(fontSize: 80)))));
  }
}
