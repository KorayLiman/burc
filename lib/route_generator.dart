import 'package:burc/burc_details_page.dart';
import 'package:burc/burclistesi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modals/burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: ((context) => BurcListesi()));
      case "/BurcDetay":
        return CupertinoPageRoute(
            builder: ((context) =>
                BurcDetail(SelectedBurc: settings.arguments as Burc)));
    }
  }
}
