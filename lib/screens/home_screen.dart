import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 3,
            flexibleSpace: DecoratedBox(
                decoration: BoxDecoration(gradient: Gradients.hotLinear),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width / 25,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width / 25,
                        )),
                  ],
                )),
            stretch: true),
      ],
    ));
  }
}
