import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/NavDrawer.dart';
import 'package:flutter_first/widgets/movieCard.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff161616),
        ),
        drawer: NavigationDrawerWidget(),
        body: SingleChildScrollView(
          child: Container(
            color: const Color(0xff161616) ,
            child: Column(
              children: <Widget>[
                Padding(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 30, 0, 30),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "All Movies",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              MovieCard()
              ],
            ),
          ),
        ),
      );
}
