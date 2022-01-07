import 'package:http/http.dart';

import 'package:bestream/feeds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'main.dart';
import 'package:flutter_login/theme.dart';
import 'package:http/http.dart';
import 'dart:convert';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'vineeth.yellur@gmail.com': 'vineeth',
  '12345@gmail.com': '12345'
};

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser (LoginData data) async{
    debugPrint('Name: ${data.name}, Password: ${data.password}');
      var uri = Uri.parse("http://192.168.1.6:5500/users/login");
      Map body = {
        'email': data.name,
        'password': data.password,
      };
      var jsonBody = json.encode(body);
      Response response = await post(uri, headers: {"Content-Type": "application/json"}, body: jsonBody);
      var response_map = json.decode(response.body) as Map;

       

    return Future.delayed(loginTime).then((_) {
      if (!response_map['isAllowed']) {
        return 'User not exists or Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: null,
      logo: AssetImage(
        'assets/images/transparent.png',
      ),
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
