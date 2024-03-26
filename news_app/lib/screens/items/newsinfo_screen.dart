import 'package:flutter/material.dart';

void showFilterBottomSheet(BuildContext context) {
  var _screensize = MediaQuery.of(context).size;
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: [
              Text(
                'Filter',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 65, 47, 41),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Nunito"),
                textAlign: TextAlign.left,
              ),
              SizedBox(width: _screensize.width * 0.52),
              ElevatedButton(
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 183, 183, 183),
                                width: 0.40),
                            borderRadius: BorderRadius.circular(50.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 125, 125, 125),
                    ),
                    Text(
                      'Reset',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 65, 47, 41),
                          fontWeight: FontWeight.normal,
                          fontFamily: "Nunito"),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(height: 20),
            Text(
              'Sort By:',
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 65, 47, 41),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Nunito"),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buttons("Recommended"),
                SizedBox(width: 5),
                buttons("Latest"),
                SizedBox(width: 5),
                buttons("Mostviewd"),
              ],
            ),
            Row(
              children: [
                buttons("Channel"),
                SizedBox(width: 5),
                buttons("Following"),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: _screensize.width * 0.8,
              child: ElevatedButton(
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 255, 58, 68)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 183, 183, 183),
                                width: 0.40),
                            borderRadius: BorderRadius.circular(50.0)))),
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Nunito"),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}

Widget buttons(String nameOfbutton) {
  return ElevatedButton(
    style: ButtonStyle(
        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromARGB(255, 183, 183, 183), width: 0.40),
                borderRadius: BorderRadius.circular(50.0)))),
    onPressed: () {},
    child: Text(
      nameOfbutton,
      style: TextStyle(
          fontSize: 12,
          color: Color.fromARGB(255, 65, 47, 41),
          fontWeight: FontWeight.normal,
          fontFamily: "Nunito"),
    ),
  );
}
