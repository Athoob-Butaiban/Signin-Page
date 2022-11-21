import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'signed_in.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController password =
      TextEditingController(); // make it editable to hold the username
  var username =
      TextEditingController(); // make it editable tp hold the password
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home Page",
          )),
      body: Column(
        children: [
          TextField(
              controller: username,
              decoration: InputDecoration(
                labelText: "Enter your username",
                hintText: "username",
              )),
          TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: "Enter your Password",
                hintText: "password",
              )),
          ElevatedButton(
            onPressed: () {
              // if condition for password check
              if (password.text == "12345") {
                print("logedin");
                context.push("/singIn", extra: username.text);
              } else {
                print("you can't log in");
              }
            },
            child: Text("Signin"),
          )
        ],
      ),
    );
  }
}
