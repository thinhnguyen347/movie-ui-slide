import 'package:flutter/material.dart';

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
          return Container(color: Colors.blue.withAlpha(30));
        });
  }
}
