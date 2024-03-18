import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:shop/components/AnimeTile.dart";
import "package:shop/models/Anime.dart";
import "package:shop/models/watchList.dart";

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {

  //adding show to carrt
  void addshow(Anime anime){
    Provider.of<watchlist>(context, listen: false).addshow(anime);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added'),
        content: Text('Check your List'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<watchlist>(builder:((context, value, child) => Column(
      children: [
        // search bar
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks🔥',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //create a shoe
              Anime anime = value.AnimeList[index];
              return AnimeTile(
                anime: anime,
                onTap: () => addshow(anime)
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:25.0, left: 25, right:25,),
          child: Divider(
            color:Color.fromARGB(156, 236, 196, 136),
          ),
        ),
      ],
    )));
  }
}
