import 'package:flutter/material.dart';
import 'package:initiate/screens/home.dart';
import 'package:initiate/screens/invoice.dart';
import 'package:initiate/screens/login.dart';
import 'package:initiate/screens/returns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/invoice': (context) => const InvoicePage(),
        '/returns': (context) => const ReturnsPage()
      },
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoginPage(),
    );
  }
}
