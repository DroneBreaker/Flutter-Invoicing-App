import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(30),
        child: const Center(
            child: Column(
          children: [
            SizedBox(height: 120),
            Image(image: AssetImage('assets/initiate.png'), height: 130),
            SizedBox(height: 20),
            Text(
              'Welcome to Initiate',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Create an Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Username',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock)),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'),
                // TextButton(
                //   onPressed: () {
                //     const hey = 'question'
                //   },
                //   child: const Text('Login.'),
                // )
              ],
            )
          ],
        )),
      ),
    );
  }
}
