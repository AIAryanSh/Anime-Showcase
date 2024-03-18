import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:shop/Pages/WatchListPage.dart";
import "package:shop/models/Anime.dart";
import "package:shop/models/watchList.dart";

class ListItem extends StatefulWidget {
  Anime anime;
  ListItem({super.key, required this.anime});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  void remShow() {
    Provider.of<watchlist>(context, listen: false).remShow(widget.anime);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 147, 0),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
          leading: Image.asset(widget.anime.imagePath),
          title: Text(widget.anime.name, style: TextStyle(color: Colors.white)),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: remShow,
          )),
    );
  }
}
