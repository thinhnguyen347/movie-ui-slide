import 'package:flutter/material.dart';
import 'package:movie_slide/models/item_popular.dart';

class PopularView extends StatefulWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  State<PopularView> createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.62, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return itemPopular(listItemPopular[index]);
        });
  }
}

final List<ItemPopular> listItemPopular = [
  ItemPopular(
      name: 'Thám tử lừng danh Connan',
      urlPhoto: 'assets/images/conan.jpg',
      releaseDate: '05-03-2021'),
  ItemPopular(
      name: 'Cuộc phiêu lưu của Doraemon',
      urlPhoto: 'assets/images/doraemon.png',
      releaseDate: '06-03-2021'),
  ItemPopular(
      name: 'Ấu trùng tinh nghịch',
      urlPhoto: 'assets/images/larva-island.jpg',
      releaseDate: '07-03-2021'),
  ItemPopular(
      name: 'Love death robot 3',
      urlPhoto: 'assets/images/lovedeath.jpg',
      releaseDate: '08-03-2021'),
  ItemPopular(
      name: 'Phàm nhân tu tiên',
      urlPhoto: 'assets/images/pham-nhan.jpg',
      releaseDate: '09-03-2021'),
  ItemPopular(name: 'Rio 2021', urlPhoto: 'assets/images/rio.jpg', releaseDate: '10-03-2021'),
  ItemPopular(name: 'Xì trum', urlPhoto: 'assets/images/smurf.jpg', releaseDate: '11-03-2021'),
  ItemPopular(name: 'Spriggan', urlPhoto: 'assets/images/spriggan.jpg', releaseDate: '12-03-2021'),
  ItemPopular(name: 'Spy X', urlPhoto: 'assets/images/spyx.jpg', releaseDate: '13-03-2021'),
  ItemPopular(name: 'Titan Go', urlPhoto: 'assets/images/titan-go.jpg', releaseDate: '14-03-2021'),
];

Widget itemPopular(ItemPopular itemPopular) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Expanded(
          flex: 1,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                child: GestureDetector(
                  onTap: () {},
                  child: Expanded(
                      flex: 1,
                      child: Image.asset(
                        itemPopular.urlPhoto,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                ),
              ))),
      const SizedBox(height: 8),
      Text(itemPopular.name,
          textAlign: TextAlign.center, style: const TextStyle(color: Colors.white)),
    ],
  );
}
