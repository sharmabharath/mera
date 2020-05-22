/*import 'package:flutter/clock/clock.dart';*/
import 'package:flutterapp/clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/home.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  TimeOfDay _time = TimeOfDay.now();

  TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(context: context, initialTime: _time);

    setState(() {
      _time = picked;
      print(_time);
    });
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 85,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Clock(),
        ),
        SizedBox(
          height: 85,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "ALARM TIME",
                    style: TextStyle(
                      color: Color(0xff00FF00),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.3
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "06:12 PM",
                    style: TextStyle(
                      color: Color(0xff2d386b),
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "WAKE UP IN",
                    style: TextStyle(
                      color: Color(0xff00FF00),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.3
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "08:00 AM",
                    style: TextStyle(
                      color: Color(0xff2d386b),
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),



          ],
        )
      ],
    );
  }
}
