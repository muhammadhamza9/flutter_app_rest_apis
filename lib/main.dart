import 'package:flutter/material.dart';
import 'package:flutter_app/screens/userScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenAllPost(),
    );
  }
}

// class NoteKeeper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Note Keeper App",
//       debugShowCheckedModeBanner: false,
//       home: NoteList(),
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//       ),
//     );
//   }
// }

// title: "Simple Interest Calculator",
//     home: MyApp(),
//     theme: ThemeData(
//       brightness: Brightness.dark,
//       primaryColor: Colors.indigo,
//       accentColor: Colors.indigoAccent,
//     ),
//   )
// class HomePage extends StatelessWidget {
//   final ButtonStyle style =
//       ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('testing'),
//         ),
//         body: Center(
//           child: Container(
//             height: 200,
//             width: 400,
//             color: Colors.red,
//             child: Wrap(
//               direction: Axis.horizontal,
//               runAlignment: WrapAlignment.center,
//               alignment: WrapAlignment.spaceAround,
//               children: <Widget>[
//                 ElevatedButton(onPressed: () {}, child: Text('submit')),
//                 ElevatedButton(onPressed: () {}, child: Text('submit')),
//                 ElevatedButton(onPressed: () {}, child: Text('submit')),
//                 ElevatedButton(onPressed: () {}, child: Text('submit')),
//                 ElevatedButton(onPressed: () {}, child: Text('submit')),
//                 ElevatedButton(onPressed: () {}, child: Text('submit')),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class Testing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('snackbar testing with floating button'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           showSnackBar(context);
//         },
//       ),
//     );
//   }

//   void showSnackBar(BuildContext context) {
//     var snackbar =
//         SnackBar(content: Text('You just tapped the floating butotn'));
//     ScaffoldMessenger.of(context).showSnackBar(snackbar);
//   }
// }