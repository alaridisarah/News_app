import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/global_varible..dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Text("djkfngbe"),
                  TextFormField(
                      controller: searchWord,
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide(
                                color: Color.fromARGB(0, 123, 123, 123))),
                        hintText: 'Dogecoin to the Moon...',
                      )),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
