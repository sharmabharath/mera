import 'package:flutter/material.dart';
import 'package:flutterapp/page.dart';

import './page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String currentProfilePic = "https://avatars3.githubusercontent.com/u/16825392?s=460&v=4";
  String otherProfilePic = "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*child: Container(
          //color: Colors.tealAccent,
          height: 200,
          child: PageView(
            controller: PageController(viewportFraction: 0.8),
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(1.0, 1.0, 0.0, 0.0),
                child: Text('Hello There',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green )),
              ),
              *//*Container(
                          padding: EdgeInsets.fromLTRB(1.0, 1.0, 0.0, 0.0),
                          child: Text('There',
                              style: TextStyle(
                                  fontSize: 80.0, fontWeight: FontWeight.bold)),
                        ),*//*

            ],
          ),
        ),*/

        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountEmail: new Text("bramvbilsen@gmail.com"),
                accountName: new Text("Bramvbilsen"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(currentProfilePic),
                  ),
                  onTap: () => print("This is your current account."),
                ),
                otherAccountsPictures: <Widget>[
                  new GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(otherProfilePic),
                    ),
                    onTap: () => switchAccounts(),
                  ),
                ],
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage("https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              new ListTile(
                  title: new Text("Alarm"),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("alarm")));
                  }
              ),
              new ListTile(
                  title: new Text("Group Alarm"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page2("group wala bc")));
                  }
              ),
              new Divider(),
              new ListTile(
                title: new Text("Cancel"),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        body: new Center(
          child: new Text("Drawer Tutorial", style: new TextStyle(fontSize: 35.0)),
        )
    );
  }
}