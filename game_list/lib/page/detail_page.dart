import 'package:flutter/material.dart';
import 'package:game_list/utils/game_card.dart';

class GameDetailPage extends StatelessWidget {
  final GameCard game;

  GameDetailPage({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(game.title),
          elevation: 0 // Remove the shadow from the app bar
          ),
      body: SingleChildScrollView(
        // Use SingleChildScrollView for better layout
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35),
              child: Center(
                child: Image.network(
                  game.thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ), // Display the game image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Title The Game : " +
                    game.title, // Display the game description
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  // Change the text color to black
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Price The Game : " +
                    game.price +
                    ' Dollar', // Display the game description
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Change the text color to blue
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Rating : " + game.rating, // Display the game description
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Change the text color to blue
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
