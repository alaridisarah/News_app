import 'package:flutter/material.dart';

Widget Nav_bar(var scareen) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 50, bottom: 12),
    child: Container(
      alignment: Alignment.bottomCenter,
      height: 80,
      width: scareen.width * 0.75,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Color.fromARGB(255, 161, 161, 161))],
        color: Colors.white,
        borderRadius: BorderRadius.circular(90),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: Image.asset(
                "assets/NavBar/home_icon.png",
                height: 40,
                width: 40,
              ),
              onPressed: () {},
            ),
            Text(
              "Home",
              style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 65, 47, 41),
                  fontFamily: "Nunito"),
            )
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: Image.asset(
                "assets/NavBar/fav_icon.png",
                height: 40,
                width: 40,
              ),
              onPressed: () {},
            ),
            Text(
              "Favorite",
              style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 161, 161, 161),
                  fontFamily: "Nunito"),
            )
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: Image.asset(
                "assets/NavBar/profile_icon.png",
                height: 40,
                width: 40,
              ),
              onPressed: () {},
            ),
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 161, 161, 161),
                  fontFamily: "Nunito"),
            )
          ]),
        ],
      ),
    ),
  );
}
