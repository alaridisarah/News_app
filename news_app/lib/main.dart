import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/home/cubit/homescreen_cubit.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/widget/newsinfo_screen.dart';
import 'package:news_app/screens/news_screen.dart';
import 'package:news_app/screens/notifications_screen.dart';
import 'package:news_app/screens/search_screen.dart';

import 'home/home_screen_Withcubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomescreenCubit>(
            create: (BuildContext context) => HomescreenCubit(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: HomescreenWithCubit(),
        ));
  }
}
