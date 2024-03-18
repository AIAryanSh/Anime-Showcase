import "package:flutter/material.dart";
import "package:shop/models/Anime.dart";

class AnimeTile extends StatelessWidget {

  Anime anime;
  void Function()? onTap;
  AnimeTile({super.key, required this.anime, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50),
      width: 280,
      //height: 1000,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Anime pic
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(anime.imagePath),),
          ),

          //description
          Padding(
            padding: const EdgeInsets.all(.0),
            child: Text(
              anime.description,
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold
              ),
              ),
          ),

          //button to add to cart
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(anime.name, style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color:Colors.orange, borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
              
            ],
            
          ),
        ],
      ),
    );
  }
} 