import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/global_varible..dart';
import 'package:news_app/screens/items/newsinfo_screen.dart';
import 'items/bottomnav_bar.dart';

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
              controller: searchWord,
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
                category_news("Filter", index, context),
                category_news("Health", index, context),
                category_news("Art", index, context),
                category_news("Sport", index, context),
                category_news("Technology", index, context),
                category_news("Science", index, context),
                category_news("Lifestyle", index, context),
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
            return new_summary(
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

  Widget new_summary(
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

  Widget category_news(String catrgory, int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: ElevatedButton(
          style: ButtonStyle(
              shadowColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: (index == 0)
                  ? MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 58, 68))
                  : MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color.fromARGB(255, 183, 183, 183),
                          width: 0.40),
                      borderRadius: BorderRadius.circular(50.0)))),
          onPressed: () {
            if (index == 0) {
              showFilterBottomSheet(context);
            }
          },
          child: Text(
            catrgory,
            style: TextStyle(
                fontSize: 12,
                color: (index == 0)
                    ? Colors.white
                    : Color.fromARGB(255, 65, 47, 41),
                fontFamily: "Nunito"),
          )),
    );
  }
}
