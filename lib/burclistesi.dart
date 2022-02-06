import 'package:burc/data/strings.dart';
import 'package:burc/modals/burc.dart';
import 'package:flutter/material.dart';

import 'burc_item.dart';

class BurcListesi extends StatelessWidget {
  BurcListesi() {
    BurcList = PrepareDatabase();
  }

  late List<Burc> BurcList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Burc Listesi")),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) => BurcItem(
          ListelenecekBurc: BurcList[index],
        ),
        itemCount: BurcList.length,
      )),
    );
  }

  List<Burc> PrepareDatabase() {
    List<Burc> temp = [];

    for (int i = 0; i < 12; i++) {
      temp.add(Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png",
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png"));
    }
    return temp;
  }
}
