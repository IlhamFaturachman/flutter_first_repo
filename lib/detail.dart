import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/NavDrawer.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff161616),
        ),
        drawer: NavigationDrawerWidget(),
        body: SingleChildScrollView(
        ),
      );
}
