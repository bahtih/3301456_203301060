import 'package:flutter/material.dart';
import 'AddCategory.dart';
import 'DetailPage.dart';

class HorrorFilm extends StatefulWidget {

  late String categoryName;

  HorrorFilm(this.categoryName);

  @override
  _HorrorFilmState createState() => _HorrorFilmState();
}

class _HorrorFilmState extends State<HorrorFilm> {
  var horror = AddCategory.addHorror();

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
          itemCount: horror.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: ekranYuksekligi / 5,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(film : horror[index])));
                },
                child: Card(
                  color : Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(horror[index].filmName,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),),
                      Text("Imdb Puanı : "+horror[index].imdbPoint.toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: ekranGenisligi/20),)
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
