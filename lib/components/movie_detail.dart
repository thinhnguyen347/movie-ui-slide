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
        ),
        body: Stack(
          children: [
            Image.asset("assets/images/bg.jpg",
                fit: BoxFit.cover, height: MediaQuery.of(context).size.height),
            Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white.withOpacity(0.8)),
            _body(context),
          ],
        ));
  }
}

_body(BuildContext context) {
  return ListView(
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    children: [const SizedBox(height: 20), _header()],
  );
}

Widget _header() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(12),
          clipBehavior: Clip.antiAlias,
          child: Image.asset("assets/images/conan.jpg")),
      const SizedBox(width: 16),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Title',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black87)),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Xuất bản:'),
              Text('publishedDate'),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Thể loại:'),
              Text('category'),
            ],
          ),
        ],
      ),
    ]),
  );
}
