import 'package:flutter/material.dart';

import 'modals/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc ListelenecekBurc;
  const BurcItem({required this.ListelenecekBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyTextStyle = Theme.of(context).textTheme;
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Image.asset(
                "assets/images/" + ListelenecekBurc.burcSmallImage,
                width: 64,
                height: 64,
              ),
              title: Text(
                ListelenecekBurc.burcName,
                style: MyTextStyle.headline5,
              ),
              subtitle: Text(ListelenecekBurc.burcDate,
                  style: MyTextStyle.subtitle1)),
        ));
  }
}
