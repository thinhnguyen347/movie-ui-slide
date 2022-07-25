import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(Icons.favorite_border))
          ],
        ));
  }
}
