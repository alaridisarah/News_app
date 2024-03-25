import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            Icon(Icons.arrow_back_outlined),
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
                      "",
                      " Berkeley Lovelace Jr.",
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
    return Container(
        child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 150,
              width: screen.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  )),
            )),
        SizedBox(
          height: 10,
        ),
        Text(date),
        SizedBox(
          height: 10,
        ),
        Text(title),
        SizedBox(
          height: 10,
        ),
        Text(first_paragraph),
        TextButton(
            onPressed: () {},
            child: Text(
              "Learn more",
              style: TextStyle(color: Colors.blue),
            )),
        Text(author)
      ],
    ));
  }
}
