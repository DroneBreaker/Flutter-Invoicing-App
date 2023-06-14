import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topLeft, children: [
        Positioned(
          top: 60,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Center(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Create an invoice',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Received from',
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'The sum of',
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'In respect of',
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
    ;
  }
}
