import 'package:flutter/material.dart';

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
