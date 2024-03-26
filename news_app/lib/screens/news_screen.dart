import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/screens/home_screen.dart';

class news_screen extends StatelessWidget {
  news_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffFF3A44),
          shape: const CircleBorder(),
          onPressed: () {},
          child: Image.asset(
            'assets/NavBar/fav_icon.png',
            color: Colors.white,
            height: 25,
            width: 25,
          ),
        ),
        body: Stack(
          children: [
            Opacity(
                opacity: 0.9,
                child: Image.asset(
                  'assets/news_image.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                )),
            Positioned(
              top: 30,
              left: 20,
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(126, 158, 158, 158),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    const SizedBox(
                      height: 120,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: "LONDON —",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Tinos',
                                  fontSize: 17,
                                  color: Color(0xff2E0505))),
                          TextSpan(
                              text:
                                  ' Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.',
                              style: TextStyle(
                                color: Color(0xff2E0505),
                                fontFamily: 'Tinos',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              )),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 0.563),
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Sunday, 9 May 2021',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color(0xff2E0505)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Published by Ryan Browne',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            color: Color(0xff2E0505)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
