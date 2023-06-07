import 'package:flutter/material.dart';
import 'package:my_own_bmi/constant.dart';
import 'package:my_own_bmi/main.dart';
import 'main.dart';

class Results extends StatelessWidget {
  Results(this.interpretation, this.bmiResult, this.resultText);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(15, 25, 50, 1.0),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(18, 28, 56, 1.0),
          title: Text(
            'BMI CALCULATOR',
            style: kSliderText,
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(15, 25, 50, 1.0),
              ),
              margin: EdgeInsets.all(15.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 10.0),
                child: Text(
                  'YOUR RESULT',
                  style: kResultText,
                ),
              ),
            )),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromRGBO(39, 42, 78, 1.0),
                ),
                margin: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(interpretation,
                        textAlign: TextAlign.center, style: kResultDown),
                    Text(
                      bmiResult,
                      style: kResultMiddle,
                    ),
                    Text(resultText.toUpperCase(), style: kResultUp),
                  ],
                ),
              ),
            ),
            bottom(),
          ],
        ),
      ),
    );
  }
}

class bottom extends StatefulWidget {
  const bottom({
    super.key,
  });

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFEB1555)),
        onPressed: () {
          setState(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          });
        },
        child: Text(
          'Re-Calculate'.toUpperCase(),
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
