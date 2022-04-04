import 'package:flutter/material.dart';
import 'package:netflixclone/Action.dart';
import 'package:netflixclone/AddCategory.dart';
import 'package:netflixclone/Favorites.dart';
import 'package:netflixclone/HorrorFilm.dart';

import 'ComedyFilm.dart';
import 'SciFilm.dart';
import 'ThrillerFilm.dart';
import 'TvShow.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var categoryList = AddCategory.addCategory();

  void kontrolEt(int index, String categoryName) {
    if (index == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => HorrorFilm(categoryName)));
    } else if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ActionFilm(categoryName)));
    } else if (index == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ThrillerFilm(categoryName)));
    } else if (index == 4) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SciFilm(categoryName)));
    } else if (index == 5) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => TvShow(categoryName)));
    } else if (index == 6) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ComedyFilm(categoryName)));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Favourites.empty()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Netflix"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.black,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 4,
          ),
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                kontrolEt(
                    categoryList[index].id, categoryList[index].categoryName);
              },
              child: Card(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 250,
                        height: 250,
                        child: Image.asset(categoryList[index].imageName)),
                    Text(
                      categoryList[index].categoryName,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
