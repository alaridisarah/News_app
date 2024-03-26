import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/global_varible..dart';
import 'package:news_app/widget/newsinfo_screen.dart';
import 'package:news_app/screens/news_screen.dart';
import 'package:news_app/screens/notifications_screen.dart';
import 'package:news_app/screens/search_screen.dart';
import 'package:news_app/widget/Image_container.dart';
import 'package:news_app/widget/Nav_bar.dart';
import 'package:news_app/widget/category_buttons.dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Flexible(
                child: Row(
                  children: [
                    SizedBox(
                      height: 35,
                      width: (_screenSize.width * 0.78),
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
                        onTap: () {
                          // Handle text input changes
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      child: Image.asset(
                        "assets/notification_icon.png",
                        height: 35,
                        width: 35,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const notificationscreen()),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 8, top: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Latest News",
                        style: TextStyle(
                            fontFamily: "Tinos",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: _screenSize.width * 0.50),
                      Row(
                        children: [
                          TextButton(
                            child: Text(
                              "See All",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 12,
                                  color: Colors.blue),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => search_screen()),
                              );
                            },
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.blue,
                            size: 15,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 250.0,
              child: ListView.builder(
                shrinkWrap: true,

                scrollDirection: Axis.horizontal,
                itemCount: 3, // number of articles,
                itemBuilder: (context, index) {
                  List articles = [
                    Lastnews_summary(
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                        "assets/news_image.png",
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                        _screenSize,
                        context),
                    Lastnews_summary(
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                        "assets/news_image.png",
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                        _screenSize,
                        context),
                    Lastnews_summary(
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                        "assets/news_image.png",
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                        _screenSize,
                        context)
                  ];

                  return articles[index];
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // number of category,
                itemBuilder: (context, index) {
                  List category = [
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
              itemCount: 3, // number of articles
              itemBuilder: (context, index) {
                return categorynew_summary(
                  "Article Title ${index + 1}",
                  "assets/dummy_image/${index + 1}.png",
                  "Article summary...",
                  _screenSize,
                );
              },
            ))
            // Add more widgets as needed
          ]),
          Nav_bar(_screenSize)
        ]),
      ),
    );
  }
}
