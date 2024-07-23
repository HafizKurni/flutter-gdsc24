import 'package:flutter/material.dart';
import 'package:game_list/page/detail_page.dart';
import 'package:game_list/page/profile_page.dart';
import 'package:game_list/utils/game_card.dart';
import 'package:game_list/utils/game_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Add this line to track the selected index

  void _onItemTapped(int index) {
    setState(() {});
    if (index == 1) {
      // Assuming the Profile tab is at index 1
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ProfilePage()), // Make sure ProfilePage is imported
      );
    }
    // Add more conditions here if you have more tabs
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.games),
          SizedBox(width: 10),
          Text('Top Xbox Games'),
        ]),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          final game = games[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GameDetailPage(game: game)),
              );
            },
            child: GameCard(
              title: game.title,
              thumbnailUrl: game.thumbnailUrl,
              rating: game.rating,
              price: game.price,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: _onItemTapped, // Add this line
      ),
    );
  }
}
