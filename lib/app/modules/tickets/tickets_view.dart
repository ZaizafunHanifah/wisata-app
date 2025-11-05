import 'package:flutter/material.dart';

class TicketsView extends StatelessWidget {
  TicketsView({Key? key}) : super(key: key);

  final List<Map<String, String>> tickets = [
    {'type': 'Dewasa', 'price': 'Rp 25.000'},
    {'type': 'Anak-anak', 'price': 'Rp 10.000'},
    {'type': 'Parkir', 'price': 'Rp 5.000'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: tickets
          .map((t) => Card(
                child: ListTile(
                  leading: const Icon(Icons.confirmation_num, color: Colors.green),
                  title: Text(t['type']!),
                  trailing: Text(t['price']!),
                ),
              ))
          .toList(),
    );
  }
}
