import 'package:flutter/material.dart';
import 'package:news_app/screens/news_screen.dart';

Widget Lastnews_summary(String title, String new_image, String subtitle,
    var screen, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => news_screen()),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 150,
        width: screen.width * 0.75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(new_image),
              fit: BoxFit.cover,
            )),
        child: Stack(children: [
          //Image.asset(new_image, fit: BoxFit.cover),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(subtitle,
                  style: TextStyle(fontSize: 8, color: Colors.white),
                  textAlign: TextAlign.end)
            ],
          )
        ]),
      ),
    ),
  );
}

Widget categorynew_summary(
    String title, String new_image, String subtitle, var screen) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Stack(children: [
      Container(
        height: 150,
        width: screen.width * 0.99,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(new_image),
              fit: BoxFit.cover,
            )),
        child: Stack(children: [
          //Image.asset(new_image, fit: BoxFit.cover),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 14,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Color.fromARGB(255, 148, 148, 148),
                                blurRadius: 1.0)
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(subtitle,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 12,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Color.fromARGB(255, 148, 148, 148),
                                  blurRadius: 1.0)
                            ]),
                        textAlign: TextAlign.end),
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    ]),
  );
}
