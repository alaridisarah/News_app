import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/global_varible..dart';
import 'package:news_app/screens/items/newsinfo_screen.dart';
import 'package:news_app/screens/news_screen.dart';
import 'package:news_app/screens/notifications_screen.dart';
import 'package:news_app/screens/search_screen.dart';

import 'items/bottomnav_bar.dart';

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
                    category_news("Health", index),
                    category_news("Art", index),
                    category_news("Sport", index),
                    category_news("Technology", index),
                    category_news("Science", index),
                    category_news("Lifestyle", index),
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
                return new_summary(
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

  Widget category_news(String catrgory, int index) {
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
          onPressed: () {},
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
}
