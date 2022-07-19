import 'package:flutter/material.dart';
import 'package:movie_slide/components/popular_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DefaultTabController(
              initialIndex: 0,
              length: 4,
              child: tabBar(controller: tabController),
            ),
            DefaultTabController(
                length: 4, initialIndex: 0, child: tabBarView(controller: tabController)),
          ],
        )
      ],
    ));
  }
}

tabBar({required controller}) {
  return Padding(
    padding: const EdgeInsets.only(top: 70, left: 25, bottom: 10),
    child: TabBar(
      controller: controller,
      tabs: const [Text('Popular'), Text('Now Playing'), Text('Upcoming'), Text('Top Rated')],
      indicatorColor: Colors.white,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
      labelPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white38,
      isScrollable: true,
      labelStyle:
          const TextStyle(fontFamily: 'Comfortaa', fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}

tabBarView({required controller}) {
  return Expanded(
      child: TabBarView(
    controller: controller,
    children: [
      const PopularView(),
      Container(color: Colors.green.withAlpha(30)),
      Container(color: Colors.orange.withAlpha(30)),
      Container(color: Colors.pink.withAlpha(30)),
    ],
  ));
}
