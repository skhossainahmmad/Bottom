import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            ElevatedButton(
              onPressed: () {},
              child: Text("ElevatedButton"),
            ),
            Tab(
              text: 'One',
            ),
            Tab(
              text: "Two",
            ),
          ]),
          backgroundColor: Colors.pinkAccent,
          elevation: 0,
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.green,
          )
        ]),
      ),
    );
  }
}
