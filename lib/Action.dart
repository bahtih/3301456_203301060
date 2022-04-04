import 'package:flutter/material.dart';
import 'package:netflixclone/AddCategory.dart';
import 'DetailPage.dart';

class ActionFilm extends StatefulWidget {
  late String categoryName;

  ActionFilm(this.categoryName);

  @override
  _ActionFilmState createState() => _ActionFilmState();
}

class _ActionFilmState extends State<ActionFilm> {
  var action = AddCategory.addAction();

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
          itemCount: action.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: ekranYuksekligi / 5,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(film : action[index])));
                },
                child: Card(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(action[index].filmName,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),),
                      Text("Imdb Puanı : "+action[index].imdbPoint.toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),)
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
