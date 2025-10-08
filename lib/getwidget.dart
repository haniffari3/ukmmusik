import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class GFTabBarExample extends StatelessWidget {
  const GFTabBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GFTabBar Example'),
          backgroundColor: Colors.deepPurple,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: GFTabBar(
              tabBarColor: Colors.deepPurple,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: const [
                Tab(
                  icon: Icon(Icons.music_note),
                  text: "Lagu",
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: "Favorit",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Profil",
                ),
              ], length: null, controller: null,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Daftar Lagu')),
            Center(child: Text('Favorit')),
            Center(child: Text('Profil')),
          ],
        ),
      ),
    );
  }
}