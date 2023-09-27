import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
//import 'package:quiz_app/homeScreen/home.dart';

import 'home1.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff422bc7),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Lottie.asset(
                    'assets/images/new.json'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 20),
                child: Center(
                  child: CircularPercentIndicator(
                    radius: 75.0,
                    lineWidth: 20.0,
                    animation: true,
                    percent: score / 10,
                    center: new Text(
                      "${(score * 10).toString()}%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    footer: new Text(
                      "Your Score  is : $score out of 10",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Color(0xff1cafba),
                  ),
                ),
              ),
              Ink(
                child: InkWell(
                  onTap: (){
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context)=>Home1()));
                      
                  },
                  child: Container(
                      width: 318,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff1cafba),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Center(
                          child: Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ))),
                ),
              )
            ]),
        
      ),
    );
  }
}
