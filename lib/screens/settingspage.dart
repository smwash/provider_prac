import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/providers/inf0_provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Products: '),
            FilterChip(
              label: Text('Colgate'),
              selected: (info.products.contains('Colgate')) ? true : false,
              onSelected: (value) {
                if (value == true) {
                  info.addProduct('Colgate');
                } else {
                  info.removeProduct('Colgate');
                }
              },
            ),
            FilterChip(
              label: Text('Pepsodent'),
              selected: (info.products.contains('Pepsodent')) ? true : false,
              onSelected: (value) {
                if (value == true) {
                  info.addProduct('Pepsodent');
                } else {
                  info.removeProduct('Pepsodent');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
