import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'modals/burc.dart';

class BurcDetail extends StatefulWidget {
  const BurcDetail({required this.SelectedBurc, Key? key}) : super(key: key);

  final Burc SelectedBurc;

  @override
  State<BurcDetail> createState() => _BurcDetailState();
}

class _BurcDetailState extends State<BurcDetail> {
  Color AppBarColor = Colors.green;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!
        .addPostFrameCallback((timeStamp) => DominantColorForAppBar());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: AppBarColor,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(widget.SelectedBurc.burcName),
            background: Image.asset(
              "assets/images/" + widget.SelectedBurc.burcLargeImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
              child: Text(
            widget.SelectedBurc.burcDetails,
            style: Theme.of(context).textTheme.bodyText1,
          )),
        )
      ]),
    );
  }

  void DominantColorForAppBar() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/" + widget.SelectedBurc.burcLargeImage));
    setState(() {
      AppBarColor = _generator.dominantColor!.color;
    });

    print(AppBarColor);
  }
}
