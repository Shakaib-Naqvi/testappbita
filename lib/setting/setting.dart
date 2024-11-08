import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 50,
              width: 500,
              child: Text("Dashboard Item Opacity"),
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
