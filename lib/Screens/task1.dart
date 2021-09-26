// import 'package:flutter/material.dart';
// import 'package:flutter_app/Screens/task1_2.dart';

// class Task extends StatefulWidget {
//   const Task({Key key}) : super(key: key);

//   @override
//   _TaskState createState() => _TaskState();
// }

// class _TaskState extends State<Task> {
//   GlobalKey<_TaskState> myKey = GlobalKey();
//   TextEditingController _titleController = TextEditingController();
//   TextEditingController _bodyController = TextEditingController();
//   String _display;

//   @override
//   Widget build(BuildContext context) {
//     TextStyle textStyle = Theme.of(context).textTheme.headline6;
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               child: this._display == null
//                   ? Text('no data found')
//                   : Text(this._display),
//             ),
//             TextField(
//               controller: _titleController,
//               decoration: InputDecoration(
//                 labelText: 'title',
//                 labelStyle: textStyle,
//                 hintText: 'Enter title text',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//             ),
//             Container(
//               width: 15.0,
//               height: 15.0,
//             ),
//             TextField(
//               controller: _bodyController,
//               decoration: InputDecoration(
//                 labelText: 'description',
//                 labelStyle: textStyle,
//                 hintText: 'Enter some text',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     this._display = myButton();
//                   });
//                 },
//                 child: Text('Show Result'))
//           ],
//         ),
//       ),
//     );
//   }

//   String myButton() {
//     String title = _titleController.text;
//     String body = _bodyController.text;

//     String result = 'Title: $title \nbody: $body';

//     return result;
//   }
// }
