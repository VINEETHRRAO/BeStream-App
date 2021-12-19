import 'dart:async';
import 'package:bestream/login.dart';
import 'package:bestream/main.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
  
	Timer(Duration(seconds: 3),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														LoginScreen()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return Container(
	color: Color(0xff290B37),
	child: Container(child: Image.asset('assets/images/splash.png' ),)
	);
}
}
