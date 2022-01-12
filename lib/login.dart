import 'package:http/http.dart';

import 'package:bestream/feeds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'main.dart';
import 'package:flutter_login/theme.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser (LoginData data) async{
    debugPrint('Name: ${data.name}, Password: ${data.password}');
      var uri = Uri.parse("https://bestream-backend.herokuapp.com/users/login");
      Map body = {
        'email': data.name,
        'password': data.password,
      };
      var jsonBody = json.encode(body);
      Response response = await post(uri, headers: {"Content-Type": "application/json"}, body: jsonBody);
      var responseMap = json.decode(response.body) as Map;
      debugPrint(response.body);

       

    return Future.delayed(loginTime).then((_) {
      if (!responseMap['isAllowed']) {
        return 'User does not exist or Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) async{
    debugPrint('Email: ${data.name}, Password: ${data.password}, Username: ${data.additionalSignupData!['Username']}');
    Map body = {
      'email': data.name,
      'username': data.additionalSignupData!['Username'],
    };
    var uri = Uri.parse("https://bestream-backend.herokuapp.com/users/check/duplicate");
    var jsonBody = json.encode(body);
    Response response = await post(uri, headers: {"Content-Type": "application/json"}, body: jsonBody);
    debugPrint(response.body);
    var responseMap = json.decode(response.body) as Map;

    return Future.delayed(loginTime).then((_) async{
      if(responseMap['done'] == 0){
          if(responseMap['email'] == 1) {
            return "Email already exists";
          }
          else {
            return "Username already exists";
          }
      }
      var uri = Uri.parse("https://bestream-backend.herokuapp.com/users/signup");
      Map body = {
        'email': data.name,
        'username': data.additionalSignupData!['Username'],
        'password': data.password,
        'firstName': data.additionalSignupData!['First Name'],
        'lastName': data.additionalSignupData!['Last Name'],
      };
      var jsonBody = json.encode(body);
      Response response = await post(uri, headers: {"Content-Type": "application/json"}, body: jsonBody);
      debugPrint(response.body);
      responseMap = json.decode(response.body) as Map;
      return Future.delayed(loginTime).then((_) async {
          if(responseMap['done'] == 0) {
            return "Connection error";
          }
          return null;
      });
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      return '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: null,
      loginAfterSignUp: false,
      logo: AssetImage(
        'assets/images/transparent.png',
      ),
      onLogin: _authUser,
      additionalSignupFields:[UserFormField(keyName: "Username"), UserFormField(keyName: "First Name"), UserFormField(keyName: "Last Name"),],
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
