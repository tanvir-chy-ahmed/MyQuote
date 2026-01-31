import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myquote/core/constants/constants_strings.dart';
import 'package:myquote/data/local/database/models/hive_quote_model.dart';


class LayoutProvider extends ChangeNotifier {

  List<QuotesList> quotes = [];
  bool checkGrid = false;
  bool isSearching = false;
  bool isFvrt = false;

  List<String> categoryList = [
    'Motivational',
    'Life',
    'Wisdom',
    'Love',
    'Success',
    'Patience',
    'Creativity',
    'Spiritual',
    'Happiness',
    'Growth',
  ];


  List<String> categoryImg = [
    'https://i.pinimg.com/736x/8a/47/24/8a4724dedee7794e8bdbbb16339eded1.jpg',
    'https://i.pinimg.com/1200x/07/4e/fb/074efbb37b00af67729628626fe5f8bb.jpg',
    'https://i.pinimg.com/736x/05/a9/f4/05a9f46512fcd953bab04d75e1984207.jpg',
    'https://i.pinimg.com/1200x/c5/38/88/c53888809b6baf7459940a63562550c0.jpg',
    'https://i.pinimg.com/1200x/91/b9/1b/91b91b41c1df8339d5aca0903f04374d.jpg',
    'https://i.pinimg.com/736x/20/bb/12/20bb1206ce6aa7329f5fa8d3e03db751.jpg',
    'https://i.pinimg.com/736x/83/ea/3d/83ea3dba571e9068ecacb048d015db35.jpg',
    'https://i.pinimg.com/1200x/16/ba/68/16ba6842e66504b54f385dbd3fe0119c.jpg',
    'https://i.pinimg.com/1200x/c6/5f/01/c65f012576094b8195c024d1eb259fcb.jpg',
    'https://i.pinimg.com/736x/9b/bc/d0/9bbcd02c0bf95fc8a53d26053b799c36.jpg',

  ];


  // List<String> categoryIconImg  = [
  //   Assets.wisdom,
  //   Assets.life,
  //   Assets.wisdom,
  //   Assets.heart,
  //   Assets.crown,
  //   Assets.time,
  //   Assets.creativity,
  //   Assets.life,
  //   Assets.happy,
  //   Assets.growth,
  // ];


  List<IconData> categoryIcon = [
    Icons.light_mode_outlined,
    Icons.group_work,
    Icons.favorite_border_sharp,
    Icons.local_florist,
    Icons.celebration_outlined,
    Icons.celebration_outlined,
    Icons.emoji_emotions_outlined,
    Icons.emoji_events_outlined,
    Icons.emoji_events_outlined,
    Icons.spa_outlined,
  ];


  void toggleLayout() {
    checkGrid = !checkGrid;
    notifyListeners();
  }

  void setQuotes(List<QuotesList> list){
    quotes = list;
    notifyListeners();
  }
  void toggleFavourite(int index) {
    quotes[index].isFvrt = !quotes[index].isFvrt;
    notifyListeners();
  }
  void searching() {
    isSearching = !isSearching;
    notifyListeners();
  }


}