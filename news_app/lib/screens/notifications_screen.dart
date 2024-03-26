import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/screens/home_screen.dart';

class notificationscreen extends StatelessWidget {
  const notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homescreen()),
                  );
                },
                child: Icon(Icons.arrow_back)),
            SizedBox(
              width: 100,
            ),
            Center(
              child: Text(
                  textAlign: TextAlign.center,
                  "Hot Updates",
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  )),
            ),
          ],
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

  Widget notification_widget(String image, String date, String title,
      String first_paragraph, String author, var screen) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: screen.width * 0.95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            date,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.brown,
                fontFamily: "Nunito",
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Tinos",
                fontWeight: FontWeight.w700,
                fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: "Nunito",
                fontWeight: FontWeight.normal,
              ),
              children: [
                TextSpan(text: first_paragraph),
                TextSpan(
                  text: ' Read More',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                  ),
                  // Add an onTap handler to handle the "Read More" action
                  // onTap: () {
                  //   // Handle "Read More" action
                  // },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            author,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )),
    );
  }
}
