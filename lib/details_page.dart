import 'package:flutter/material.dart';
import 'main.dart';

class DetailsPage extends StatelessWidget {
  final int customerIndex;
  const DetailsPage({required this.customerIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(invoices[customerIndex].cName),
      ),
      body: Column(children: [
        Text(
          'Products: ',
          style: TextStyle(fontSize: 25),
        ),
        Text(invoices[customerIndex].toString()),
      ]),
    );
  }
}
