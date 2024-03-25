import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/global_varible..dart';

import 'items/bottomnav_bar.dart';

class search extends StatelessWidget {
  search({super.key});

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottomnav(
        index: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Column(children: [
        SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6, // number of category,
            itemBuilder: (context, index) {
              List category = [
                category_news("Health"),
                category_news("Art"),
                category_news("Sport"),
                category_news("Technology"),
                category_news("Science"),
                category_news("Lifestyle"),
              ];

              return category[index];
            },
          ),
        ),
        SizedBox(height: 10)
      ])),
    );
  }

  Widget category_news(String catrgory) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                catrgory,
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          )),
    );
  }
}
