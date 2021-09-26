// import 'package:flutter/material.dart';

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   var _currrencies = ['Rupees', 'Dollar', 'Pound'];
//   final _minimalPadding = 5.0;
//   var _currentItemSelected;
//   var _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     _currentItemSelected = _currrencies[0];
//   }

//   String _displayResult = '';

//   TextEditingController principalController = TextEditingController();
//   TextEditingController roiController = TextEditingController();
//   TextEditingController termController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     TextStyle textStyle = Theme.of(context).textTheme.headline6;
//     TextStyle errorStyle = TextStyle(
//       color: Colors.yellowAccent,
//       fontSize: 15.0,
//     );

//     return Scaffold(
//       appBar: AppBar(title: Text("Simple Interest Calculator")),
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           children: <Widget>[
//             getImage(),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 controller: principalController,
//                 keyboardType: TextInputType.number,
//                 // ignore: missing_return
//                 validator: (String value) {
//                   if (value.isEmpty) {
//                     return "Please enter the principal amount";
//                   }
//                 },
//                 decoration: InputDecoration(
//                     labelText: 'Princpal',
//                     labelStyle: textStyle,
//                     hintText: 'Enter the principal amount eg 120000',
//                     errorStyle: errorStyle,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5.0))),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 controller: roiController,
//                 keyboardType: TextInputType.number,
//                 validator: (String value) {
//                   if (value!.isEmpty) {
//                     return "Please enter the Rate of Interest";
//                   }
//                 },
//                 decoration: InputDecoration(
//                     labelText: 'Rate of Interest',
//                     labelStyle: textStyle,
//                     errorStyle: errorStyle,
//                     hintText: 'In Percent %',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5.0))),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: TextFormField(
//                       controller: termController,
//                       keyboardType: TextInputType.number,
//                       validator: (String? value) {
//                         if (value!.isEmpty) {
//                           return "Please enter number of years";
//                         }
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Term',
//                         hintText: 'Time in years',
//                         labelStyle: textStyle,
//                         errorStyle: errorStyle,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5.0),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 20,
//                   ),
//                   Expanded(
//                       child: DropdownButton<String>(
//                     items: _currrencies.map((String value) {
//                       return DropdownMenuItem(
//                         child: Text(value),
//                         value: value,
//                       );
//                     }).toList(),
//                     onChanged: (String? newValue) {
//                       _onDropDownItemSelected(newValue!);
//                     },
//                     value: _currentItemSelected,
//                   ))
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Theme.of(context).accentColor,
//                         onPrimary: Theme.of(context).primaryColorDark,
//                       ),
//                       child: Text(
//                         'Calculate',
//                         textScaleFactor: 1.5,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           if (_formKey.currentState!.validate()) {
//                             this._displayResult = _calculateTotalReturns();
//                           }
//                         });
//                       },
//                     ),
//                   ),
//                   Container(
//                     width: 5.0,
//                   ),
//                   Expanded(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Theme.of(context).primaryColorDark,
//                         onPrimary: Theme.of(context).primaryColorLight,
//                       ),
//                       child: Text(
//                         'Reset',
//                         textScaleFactor: 1.5,
//                       ),
//                       onPressed: () => reset(),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(_minimalPadding * 2),
//               child: Text(
//                 this._displayResult,
//                 style: textStyle,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget getImage() {
//     AssetImage img = AssetImage('images/money.jpg');

//     Image image = Image(
//       image: img,
//       width: 250,
//       height: 250,
//     );

//     return Container(
//       alignment: Alignment.center,
//       child: image,
//     );
//   }

//   void _onDropDownItemSelected(String newValue) {
//     setState(() {
//       this._currentItemSelected = newValue;
//     });
//   }

//   String _calculateTotalReturns() {
//     double principal = double.parse(principalController.text);
//     double roi = double.parse(roiController.text);
//     double term = double.parse(termController.text);

//     double totalAmount = principal + (principal * term * roi) / 100;

//     String result =
//         'After $term years, your investment will be $totalAmount $_currentItemSelected';

//     return result;
//   }

//   void reset() {
//     principalController.text = '';
//     roiController.text = '';
//     termController.text = '';
//     _displayResult = '';
//     _currentItemSelected = _currrencies[0];
//   }
// }
