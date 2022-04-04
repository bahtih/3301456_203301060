import 'package:flutter/material.dart';
import 'package:netflixclone/AddCategory.dart';


import 'DetailPage.dart';

class ThrillerFilm extends StatefulWidget {
  late String categoryName;

  ThrillerFilm(this.categoryName);

  @override
  _ThrillerFilmState createState() => _ThrillerFilmState();
}

class _ThrillerFilmState extends State<ThrillerFilm> {
  var thriller = AddCategory.addThriller();

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: thriller.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: ekranYuksekligi / 5,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(film : thriller[index])));
                },
                child: Card(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(thriller[index].filmName,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),),
                      Text("Imdb Puanı : " + thriller[index].imdbPoint.toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
