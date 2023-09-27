import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import 'package:quiz_app/homeScreen/home.dart';
import 'package:quiz_app/homeScreen/home1.dart';

class SplashSceen extends StatefulWidget {
  const SplashSceen({super.key});

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home1())));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Lottie.asset('assets/images/p2.json')
      ),
    ));
  }
}