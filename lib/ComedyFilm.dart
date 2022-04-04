import 'package:flutter/material.dart';
import 'package:netflixclone/AddCategory.dart';
import 'DetailPage.dart';

class ComedyFilm extends StatefulWidget {
  late String categoryName;

  ComedyFilm(this.categoryName);

  @override
  _ComedyFilmState createState() => _ComedyFilmState();
}

class _ComedyFilmState extends State<ComedyFilm> {
  var comedy = AddCategory.addComedy();

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
          itemCount: comedy.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: ekranYuksekligi / 5,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(film : comedy[index])));
                },
                child: Card(
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(comedy[index].filmName,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),),
                      Text(comedy[index].imdbPoint.toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),)
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
