import 'package:flutter/material.dart'; // flutter
import 'package:go_router/go_router.dart'; // goroute packages
import 'home_screen.dart'; // importing home_screen page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen,
    );
  }
}
