import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/widget/notification_widget.dart';

class notificationscreen extends StatelessWidget {
  const notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text(
            "Hot Updates",
            style: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homescreen()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: _screensize.height * 0.85,
            width: _screensize.width * 95,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3, // number of category,
              itemBuilder: (context, index) {
                List category = [
                  notification_widget(
                      "assets/news_image.png",
                      "Monday, 10 May 2021",
                      "WHO classifies triple-mutant Covid variant from India as global health risk",
                      "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read More",
                      "Published by Berkeley Lovelace Jr.",
                      _screensize),
                  notification_widget(
                      "assets/news_image.png",
                      "Monday, 10 May 2021",
                      "WHO classifies triple-mutant Covid variant from India as global health risk",
                      "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read More",
                      " Berkeley Lovelace Jr.",
                      _screensize),
                  notification_widget(
                      "assets/news_image.png",
                      "Monday, 10 May 2021",
                      "WHO classifies triple-mutant Covid variant from India as global health risk",
                      "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read More",
                      " Berkeley Lovelace Jr.",
                      _screensize)
                ];

                return category[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
