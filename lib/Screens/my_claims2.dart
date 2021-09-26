import 'package:flutter/material.dart';

class MyClaim extends StatelessWidget {
  final TextStyle _style =
      TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);
  final TextStyle style2 =
      TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: myAppBar(),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '08/21/201',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          myClaims(Colors.blue),
          myClaims(Colors.blue),
          myClaims(Colors.blue),
          myClaims(Colors.orange),
          myClaims(Colors.grey),
        ],
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
          // Container(
          //   height: 1.0,
          // ),
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
                    Container(width: 70.0, height: 8.0, color: Colors.blue)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('In Progress',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    Container(width: 80.0, height: 8.0, color: Colors.orange)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('Cancelled',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    Container(width: 70.0, height: 8.0, color: Colors.grey)
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

  Widget myClaims(Color line) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0, left: 2.0, right: 2.0, top: 4),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(6.0)),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Claim ID: 61728AB',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Card(
              elevation: 4.0,
              color: Colors.blueAccent,
              child: Container(
                width: 120.0,
                height: 4.0,
                color: line,
              ),
            )
          ],
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\n173 Eggborn Drive',
              style: _style,
            ),
            Text(
              'Jameston IL,60423',
              style: _style,
              textAlign: TextAlign.start,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Jason Bourne', style: _style),
                Text(
                  'Assigned Date:\n07/07/21 2:32 PM',
                  style: style2,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Inspection Date:\n07/09/21 4:30 PM',
                  style: style2,
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
