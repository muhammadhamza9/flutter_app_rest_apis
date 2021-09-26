//import 'dart:html';

//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class MyClaims extends StatelessWidget {
  Color myColor = Colors.blue;
  Color myColor2 = Colors.orange;
  Color myColor3 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    '08/21/201',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
          myFunction(myColor),
          myFunction(myColor),
          myFunction(myColor),
          myFunction(myColor2),
          myFunction(myColor3),
        ],
      ),
    );
  }

  Widget myFunction(Color dividerColor) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5.0)),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Claim ID: 61728AB',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 8.0,
                  shadowColor: Colors.blueAccent,
                  child: Container(
                    height: 4.0,
                    color: dividerColor,
                  ),
                ),
              )
            ],
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        '173 Eggborn Drive\nJameston IL,60423\nJason Bourne',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 25.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '\nAssign Date:\n07/07/21 2:32 PM',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    width: 25.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '\nInspection Date:\n07/09/21 4:30 PM',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget myAppBar() {
    return AppBar(
      centerTitle: true,
      leading: Container(
        child: ElevatedButton(
          child: Icon(
            Icons.checklist_sharp,
            size: 30,
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 10.0,
            onPrimary: Colors.grey,
            primary: Colors.white,
          ),
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'MyClaims',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 30.0),
          ),
          Container(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Assigned',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Container(width: 70.0, height: 4.0, color: Colors.blue)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('In Progress',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    Container(width: 80.0, height: 4.0, color: Colors.orange)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('Cancelled',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    Container(width: 70.0, height: 4.0, color: Colors.grey)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      actions: <Widget>[
        Container(
            child: ElevatedButton(
          child: Icon(
            Icons.search,
            size: 30,
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 10.0,
            onPrimary: Colors.grey,
            primary: Colors.white,
          ),
        )),
      ],
    );
  }
}
