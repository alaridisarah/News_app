import 'package:flutter/material.dart';
import 'package:news_app/widget/newsinfo_screen.dart';

Widget categorynews_button(String catrgory, int index, BuildContext context) {
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
                        color: Color.fromARGB(255, 183, 183, 183), width: 0.40),
                    borderRadius: BorderRadius.circular(50.0)))),
        onPressed: () {
          if (catrgory == "Filter") {
            showFilterBottomSheet(context);
          }
        },
        child: Text(
          catrgory,
          style: TextStyle(
              fontSize: 12,
              color:
                  (index == 0) ? Colors.white : Color.fromARGB(255, 65, 47, 41),
              fontFamily: "Nunito"),
        )),
  );
}
