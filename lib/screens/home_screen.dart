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
            centerTitle: true,
            title: Text(
              'Home',
              style: GoogleFonts.notoSans(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height / 3,
            flexibleSpace: DecoratedBox(
                decoration: BoxDecoration(gradient: Gradients.hotLinear),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                )),
            stretch: true),
      ],
    ));
  }
}
