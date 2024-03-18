import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/watchList.dart';
//import 'package:shop/Pages/viewPage.dart';

import 'Pages/Intro.dart';

void main() {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => watchlist(),
      builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),
      );
  }
}
