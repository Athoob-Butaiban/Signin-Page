import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // goroute packages
import 'home_screen.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key, required this.name});
  String name;
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Signin Page"),
        ),
        body: Container(
          child: Text(
              "Welcome ${widget.name}"), // here we passed a widget.name BC of the statefulwidget
        ));
  }
}
