// import 'package:flutter/material.dart';
// import 'package:my_own_bmi/constant.dart';
//
// class Result extends StatefulWidget {
//
//   Result(this.bmiResult, this.resultText, this.interpretation);
//   final String bmiResult;
//   final String resultText;
//   final String interpretation;
//   @override
//   State<Result> createState() => _ResultState();
// }
//
// class _ResultState extends State<Result> {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         scaffoldBackgroundColor: Color.fromRGBO(15, 25, 50, 1.0),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(18, 28, 56, 1.0),
//           title: Text(
//             'BMI CALCULATOR',
//             style: kSliderText,
//           ),
//           centerTitle: true,
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Expanded(
//                 child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 color: Color.fromRGBO(15, 25, 50, 1.0),
//               ),
//               margin: EdgeInsets.all(15.0),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 25.0, left: 10.0),
//                 child: Text(
//                   'YOUR RESULT',
//                   style: kResultText,
//                 ),
//               ),
//             )),
//             Expanded(
//               flex: 5,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   color: Color.fromRGBO(39, 42, 78, 1.0),
//                 ),
//                 margin: EdgeInsets.all(15.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Text('Normal'.toUpperCase(),
//                         style: kResultUp),
//                     Text(
//                       '26.5',
//                       style: kResultMiddle,
//                     ),
//                     Text(
//                       "You are well keep it up",
//                       style: kResultDown,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Builder(
//               builder: (context) => SizedBox(
//                 height: 60,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFFEB1555)),
//                   onPressed: () {
//                     setState(() {
//                       Navigator.pop(context);
//                     });
//                   },
//                   child: Text(
//                     'Re-Calculate'.toUpperCase(),
//                     style:
//                         TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
