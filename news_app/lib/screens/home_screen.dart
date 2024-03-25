import 'package:flutter/material.dart';
import 'package:news_app/global_varible..dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                            color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          suffixIcon: Icon(Icons.search),
                          hintText: '   Dogecoin to the Moon...',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
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
                )),
            Row(
              children: [
                new_summary(
                    "Crypto investors should be prepared to lose all their money, BOE governor says",
                    "assets/news_image.png",
                    "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                    _screenSize)
              ],
            )
          ]),
        ]),
      ),
    );
  }

  Widget new_summary(
      String title, String new_image, String subtitle, var screen) {
    return Container(
      height: 100,
      width: screen.width * 0.75,
      child: Stack(children: [
        Expanded(
            child: Image.asset(new_image,
                height: 100, width: screen.width * 0.75)),
        Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            Text(subtitle,
                style: TextStyle(fontSize: 10), textAlign: TextAlign.end)
          ],
        )
      ]),
    );
  }
}
