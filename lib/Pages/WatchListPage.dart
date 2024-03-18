import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:shop/components/ListItem.dart";
import "package:shop/models/Anime.dart";
import "package:shop/models/watchList.dart";

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<watchlist>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text(
            'My Cart',
            style: TextStyle(
              color: Colors.white, 
            fontWeight: FontWeight.bold,
            fontSize: 25,
            ),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getWList().length,
                itemBuilder: (context, index) {
                Anime individualAnime = value.getWList() [index];

                return ListItem(anime: individualAnime,);
              },)
            ),
        ],
      ),
    ),);
  }
}