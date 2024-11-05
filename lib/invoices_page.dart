import 'package:flutter/material.dart';
import 'package:invoice_app/details_page.dart';
import 'main.dart';

class InvoicesPage extends StatelessWidget {
  const InvoicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All customers'),
      ),
      body: ListView.builder(
        itemCount: invoices.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(customerIndex: index),
                    ));
              },
              tileColor: Colors.blue[100],
              leading: Text(
                invoices[index].cName,
                style: TextStyle(fontSize: 26),
              ),
            ),
          );
        },
      ),
    );
  }
}
