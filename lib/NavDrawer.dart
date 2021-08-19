import 'package:flutter/material.dart';
import 'package:flutter_first/CategoryPage.dart';
import 'package:flutter_first/moviesPage.dart';

class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff161616),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: ListTile(
                leading: Icon(
                  Icons.cancel,
                  size: 40.0,
                  color: Colors.white,
                ),
                onTap: () {
                  //bapak
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.movie,
                  size: 30.0,
                  color: Colors.white,
                ),
                title: Text(
                  'All Movies',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Movies(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.category,
                  size: 30.0,
                  color: Colors.white,
                ),
                title: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Category(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 30.0,
                  color: Colors.white,
                ),
                title: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  //Bapak
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget menuItem(
    {required String text, required IconData icon, VoidCallback? onClicked}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color, fontSize: 26)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Movies(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Movies(),
      ));
      break;
    default:
  }
}
