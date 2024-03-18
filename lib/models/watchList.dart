import 'package:flutter/material.dart';
import 'package:shop/models/Anime.dart';

import 'Anime.dart';

class watchlist extends ChangeNotifier {
  List<Anime> AnimeList = [
    Anime(
      name: 'One Piece', 
      price: '.', 
      description: '.', 
      imagePath: 'lib/images/onepiece.png' 
      ),
      Anime(
      name: 'Attack on Titan', 
      price: '.', 
      description: '.', 
      imagePath: 'lib/images/aot.png' 
      ),
      Anime(
      name: 'Dragon Ball', 
      price: '.', 
      description: '.', 
      imagePath: 'lib/images/db.png' 
      ),
  ];

  //list in the watch list
  List<Anime> WList = [];

  //get from watchlsit
  List<Anime> WAnime() {
    return WList;
  }

  //get watchlsit
  List<Anime> getWList() {
    return WList;
  } 

  //adding item
  void addshow (Anime anime) {
    WList.add(anime);
    notifyListeners();
  }

  //removing item
  void remShow(Anime anime) {
    WList.remove(anime);
    notifyListeners();
  }
}