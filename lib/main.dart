import 'package:flutter/material.dart'; // flutter
import 'package:flutter_signin_page/signed_in.dart';
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
      routerConfig: route, //
    );
  }
}

// defining a var as route (move between pages) for the pages
final route = GoRouter(routes: [
  GoRoute(
    path: "/", // creating a path
    builder: (context, state) => HomeScreen(),
  ), // HomeScreen is constructor
  GoRoute(
    path: "/singIn", // creating a path
    builder: (context, state) => SignIn(name: state.extra as String),
  )
]);
