import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/screens/home_screen.dart';

class bottomnav extends StatelessWidget {
  int index;
  bottomnav({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pinkAccent,
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Container(
            // padding: EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homescreen()));
              },
              icon: Icon(Icons.home),
              disabledColor: Colors.grey,
              focusColor: Colors.pinkAccent,
              hoverColor: Colors.pinkAccent,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "favorite",
          icon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homescreen()));
            },
            icon: Icon(Icons.favorite),
            focusColor: Color.fromARGB(1, 255, 58, 68),
            disabledColor: Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Container(
            // padding: EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homescreen()));
              },
              icon: Icon(Icons.person),
              focusColor: Color.fromARGB(1, 255, 58, 68),
              disabledColor: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}
