import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Hello'),
        //   backgroundColor: Colors.amberAccent,

        // ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 80,
            ),
            const Image(
              image: AssetImage('assets/initiate.png'),
              height: 200,
            ),
            const Text('The official invoicing app for everyone'),
            const Text('Please follow the instructions'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/invoice'),
                    child: const Text('Invoicing')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/returns'),
                    child: const Text('Monthly returns')),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
