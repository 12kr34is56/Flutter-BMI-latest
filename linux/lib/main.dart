import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_own_bmi/Results.dart';
import 'Result.dart';
import 'package:my_own_bmi/constant.dart';
import 'icon.dart';
import 'calculatorBrain.dart';

void main() {
  runApp(MyApp());
}

enum Gender { male, female }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Gender GenderState = Gender.male;
  int height = 180;
  int weight = 60;
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: Color.fromRGBO(18, 21, 58, 1.0),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("BMI calculator"),
            backgroundColor: Color.fromRGBO(18, 21, 58, 1.0),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        GenderState = Gender.male;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: GenderState == Gender.male
                            ? kActiveColor
                            : kInActiveColor,
                      ),
                      child: icon(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        GenderState = Gender.female;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: GenderState == Gender.female
                            ? kActiveColor
                            : kInActiveColor,
                      ),
                      child: icon(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  )),
                ],
              )),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(39, 42, 78, 1.0),
                  ),
                  margin: EdgeInsets.all(5.0),
                  // color: Color.fromRGBO(39, 42, 78, 1.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kSliderText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kSliderHeight,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 12.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            }),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(39, 42, 78, 1.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kSliderText,
                          ),
                          Text(
                            weight.toString(),
                            style: kSliderHeight,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 15.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.circlePlus,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                                width: 20.0,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(
                                  FontAwesomeIcons.circleMinus,
                                  size: 50.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(39, 42, 78, 1.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kSliderText,
                          ),
                          Text(
                            age.toString(),
                            style: kSliderHeight,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 15.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.circlePlus,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                                width: 20.0,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icon(
                                  FontAwesomeIcons.circleMinus,
                                  size: 50.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      // child: Column(children: <Widget>[Text('AGE')],),
                    ),
                  ),
                ],
              )),
              Builder(
                builder: (context) => SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEB1555)),
                    onPressed: () {
                      setState(() {
                        CalculatorBrain calc = CalculatorBrain(height, weight);
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => Results(
                                    calc.getResult(),
                                    calc.calculateBMI(),
                                    calc.getInterpretation())));
                      });
                    },
                    child: Text(
                      'Calculate BMI',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
