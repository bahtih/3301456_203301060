import 'package:flutter/material.dart';
import 'package:netflixclone/AddCategory.dart';


import 'DetailPage.dart';

class TvShow extends StatefulWidget {
  late String categoryName;

  TvShow(this.categoryName);

  @override
  _TvShowState createState() => _TvShowState();
}

class _TvShowState extends State<TvShow> {
  var tvshow = AddCategory.addTvShow();

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
          itemCount: tvshow.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: ekranYuksekligi / 5,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(film : tvshow[index])));
                },
                child: Card(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(tvshow[index].filmName,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),),
                      Text("Imdb Puanı : " + tvshow[index].imdbPoint.toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),)
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
