import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widget/Image_container.dart';
import 'package:news_app/widget/category_buttons.dart';
import 'package:news_app/widget/newsinfo_screen.dart';

class search_screen extends StatelessWidget {
  search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 12.0, bottom: 8, right: 8, left: 8),
          child: SizedBox(
            height: 35,
            width: (_screenSize.width * 0.95),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 12,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                suffixIcon: Icon(Icons.search),
                hintText: '   Dogecoin to the Moon...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              onChanged: (value) {
                // Handle text input changes
              },
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6, // number of category,
            itemBuilder: (context, index) {
              List category = [
                categorynews_button("Filter", index, context),
                categorynews_button("Health", index, context),
                categorynews_button("Art", index, context),
                categorynews_button("Sport", index, context),
                categorynews_button("Technology", index, context),
                categorynews_button("Science", index, context),
                categorynews_button("Lifestyle", index, context),
              ];

              return category[index];
            },
          ),
        ),
        SizedBox(height: 10),
        Expanded(
            child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 6, // number of articles
          itemBuilder: (context, index) {
            return categorynew_summary(
              "Article Title ${index + 1}",
              "assets/news_image.png",
              "Article summary...",
              _screenSize,
            );
          },
        ))
      ])),
    );
  }
}
