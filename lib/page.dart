import 'package:flutter/material.dart';

class Page extends StatelessWidget {

  final String title;

  Page(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(title), backgroundColor: Colors.redAccent,),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}

class Page2 extends StatelessWidget {

  final String title;

  Page2(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(title), backgroundColor: Colors.blueAccent,),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}