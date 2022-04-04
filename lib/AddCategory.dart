import 'package:netflixclone/Category.dart';

import 'FilmModel.dart';

class AddCategory {
  static List<Category> addCategory() {
    var category = <Category>[];

    var korku = Category(1, "Korku", "resimler/korku.jpg");
    var aksiyon = Category(2, "Aksiyon", "resimler/aksiyon.png");
    var gerilim = Category(3, "Gerilim", "resimler/gerilim.jpg");
    var bilimKurgu = Category(4, "Bilim Kurgu", "resimler/bilimKurgu.jpg");
    var dizi = Category(5, "Dizi", "resimler/dizi.jpg");
    var komedi = Category(6, "Komedi", "resimler/komedi.jpg");
    var favori = Category(7, "Favoriler", "resimler/fv.png");

    category.add(korku);
    category.add(aksiyon);
    category.add(gerilim);
    category.add(bilimKurgu);
    category.add(dizi);
    category.add(komedi);
    category.add(favori);

    return category;
  }

  static List<FilmModel> addAction() {
    var category = <FilmModel>[];

    var madMax = FilmModel(1, "Dark Knight",
        "https://www.imdb.com/title/tt1392190/", "filmler/dk.jpg", 9.0);
    var prestige = FilmModel(
        2,
        "Mad Max",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/mmx.jpg",
        8.1);
    var tenet = FilmModel(3, "LOTR : Return Of The King",
        "https://www.imdb.com/title/tt1392190/", "filmler/lotr.jpg", 9.0);

    category.add(madMax);
    category.add(prestige);
    category.add(tenet);

    return category;
  }

  static List<FilmModel> addHorror() {
    var category = <FilmModel>[];

    var madMax = FilmModel(
        1,
        "The Shining",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/shining.jpg",
        8.4);
    var prestige = FilmModel(
        2,
        "The Exorcist",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/exorcist.jpg",
        8.1);
    var tenet = FilmModel(3, "Saw",
        "https://www.imdb.com/title/tt1392190/", "filmler/saw.jpg", 7.9);

    category.add(madMax);
    category.add(prestige);
    category.add(tenet);

    return category;
  }

  static List<FilmModel> addSciFi() {
    var category = <FilmModel>[];

    var madMax = FilmModel(
        1,
        "Avengers : Infinity War",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/infinitywar.jpg",
        8.5);
    var prestige = FilmModel(2, "Dune",
        "https://www.imdb.com/title/tt1392190/", "filmler/dune.jpg", 8.1);
    var tenet = FilmModel(
        3,
        "Tenet",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/tenet.jpg",
        7.4);

    category.add(madMax);
    category.add(prestige);
    category.add(tenet);

    return category;
  }

  static List<FilmModel> addThriller() {
    var category = <FilmModel>[];

    var madMax = FilmModel(
        1,
        "Mad Max",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/mmx.jpg",
        8.5);
    var prestige = FilmModel(
        2,
        "Midsommar",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/midsommar.jpg",
        7.1);
    var tenet = FilmModel(3, "Shutter Island",
        "https://www.imdb.com/title/tt1392190/", "filmler/sis.jpg", 8.2);

    category.add(madMax);
    category.add(prestige);
    category.add(tenet);

    return category;
  }

  static List<FilmModel> addComedy() {
    var category = <FilmModel>[];

    var madMax = FilmModel(1, "Gora",
        "https://www.imdb.com/title/tt1392190/", "filmler/gora.jpg", 8.1);
    var prestige = FilmModel(
        2,
        "The Hangover",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/hangover.jpg",
        7.7);
    var tenet = FilmModel(
        3,
        "3 Idiots",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/3idiot.jpg",
        8.5);

    category.add(madMax);
    category.add(prestige);
    category.add(tenet);

    return category;
  }

  static List<FilmModel> addTvShow() {
    var category = <FilmModel>[];

    var madMax = FilmModel(1, "True Detective",
        "https://www.imdb.com/title/tt1392190/", "filmler/td.jpg", 8.9);
    var prestige = FilmModel(
        2,
        "Seinfeld",
        "https://www.imdb.com/title/tt1392190/",
        "filmler/seinfeld.jpg",
        8.1);
    var tenet = FilmModel(3, "Breaking Bad",
        "https://www.imdb.com/title/tt1392190/", "filmler/bb.jpg", 9.5);

    category.add(madMax);
    category.add(prestige);
    category.add(tenet);

    return category;
  }
}
