import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool authState = true;

  void toggleAuthMode() {
    setState(() {
      authState = !authState;
    });
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => const RegisterPage()));
  }

  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // print(_username);
      // Form is valid, perform login logic
      // You can replace this with your own login implementation

      if (_usernameController.text == 'admin' &&
          _passwordController.text == 'admin') {
        // Login successful, navigate to home screen or main part of the app
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        // Login failed, display an error message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login Failed'),
              content: const Text('Incorrect username or password.'),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: authState
          ?
          // authState
          //     ? login(_formKey, _username, _password, _submitForm, toggleAuthMode)
          //     : register(toggleAuthMode)

          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Center(
                  child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    const Image(
                        image: AssetImage('assets/initiate.png'), height: 130),
                    const SizedBox(height: 20),
                    const Text(
                      'Welcome to Initiate',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Sign in',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a username';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _username = value!;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Username',
                          contentPadding: EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          contentPadding: EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock)),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text('Login'),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: toggleAuthMode,
                          child: const Text('Signnnn up.'),
                        )
                      ],
                    ),
                  ],
                ),
              )),
            )
          : Container(
              margin: const EdgeInsets.all(30),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    const Image(
                        image: AssetImage('assets/initiate.png'), height: 130),
                    const SizedBox(height: 20),
                    const Text(
                      'Welcome to Initiate',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Create an Account',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Username',
                          contentPadding: EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
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
                        const Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: toggleAuthMode,
                          child: const Text('Login.'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
