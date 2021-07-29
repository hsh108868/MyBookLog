import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
            floating: false,
            pinned: true,
            title: Text(
              'Home',
              style: GoogleFonts.notoSans(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ],
            expandedHeight: MediaQuery.of(context).size.height / 2,
            flexibleSpace: FlexibleSpaceBar(
              background: DecoratedBox(
                decoration: BoxDecoration(gradient: Gradients.hotLinear),
              ),
            ),
            stretch: true),
        SliverFillRemaining(
          child: Row(children: [
            ListView(
              children: [Text('hello'), Text('hello, world')],
              reverse: true,
            )
          ]),
        )
      ],
    ));
  }
}
