import 'package:flutter/material.dart';
import 'package:praktikum7/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'http://image.tmdb.org/t/p/w500/';

  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath;
    } else {
      path =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text(movie.title),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(16),
                height: height / 1.5,
                child: Image.network(path)),
            Container(
              margin: EdgeInsets.only(top: 10, left: 40),
              child: IntrinsicWidth(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          bottom: 10, top: 10, left: 10, right: 10),
                      color: Colors.grey.withOpacity(0.6),
                      height: 40,
                      width: 70,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Text(movie.voteAverage.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, top: 10),
              child: Text(
                "Overview",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, top: 10),
              child: Text(
                  "\t\t\t\t\t\t" +
                      movie.overview +
                      "\n" +
                      "\t\t\t\t\t\t" +
                      movie.overview +
                      "\n" +
                      "\t\t\t\t\t\t" +
                      movie.overview,
                  style: TextStyle(fontSize: 12, color: Colors.black)),
            )
          ],
        ))));
  }
}
