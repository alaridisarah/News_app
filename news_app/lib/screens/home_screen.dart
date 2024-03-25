import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/global_varible..dart';

import 'items/bottomnav_bar.dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottomnav(
        index: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Stack(children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                        onChanged: (value) {
                          // Handle text input changes
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/notification_icon.png",
                      height: 35,
                      width: 35,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                      SizedBox(width: _screenSize.width * 0.45),
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
                            onPressed: () {},
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
            // widget(
            //   child:
            SizedBox(
              height: 250.0,
              child: ListView.builder(
                shrinkWrap: true,

                scrollDirection: Axis.horizontal,
                itemCount: 3, // number of articles,
                itemBuilder: (context, index) {
                  List articles = [
                    new_summary(
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                        "assets/news_image.png",
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                        _screenSize),
                    new_summary(
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                        "assets/news_image.png",
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                        _screenSize),
                    new_summary(
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                        "assets/news_image.png",
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                        _screenSize)
                  ];

                  return articles[index];
                },
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
            SizedBox(height: 10),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 6, // number of category,
                itemBuilder: (context, index) {
                  List articles = [
                    new_summary(
                        "fvlwjebf;owefio;weio;wrgwegwgwegwe",
                        "assets/news_image.png",
                        "“fewpise all your money.”",
                        _screenSize),
                    new_summary("Crypto inrnor says", "assets/news_image.png",
                        "“I’m go prepared to loseyour money.”", _screenSize),
                    new_summary(
                        "Crypto investors should be preparedr says",
                        "assets/news_image.png",
                        "“I’m going to say prepared to lomoney.”",
                        _screenSize),
                    new_summary(
                        "Crypto investors should be preparedr says",
                        "assets/news_image.png",
                        "“I’m going to say prepared to lomoney.”",
                        _screenSize),
                    new_summary(
                        "Crypto investors should be preparedr says",
                        "assets/news_image.png",
                        "“I’m going to say prepared to lomoney.”",
                        _screenSize)
                  ];

                  return articles[index];
                },
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  Widget new_summary(
      String title, String new_image, String subtitle, var screen) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 150,
        width: screen.width * 0.55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(new_image),
              fit: BoxFit.cover,
            )),
        child: Stack(children: [
          //Image.asset(new_image, fit: BoxFit.cover),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
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
