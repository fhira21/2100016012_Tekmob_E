import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:project_tm/components/big_card.dart';
import 'package:project_tm/providers/app_state.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({
    Key? key,
    required this.pair,
    required this.appState,
    required this.icon,
  }) : super(key: key);

  final WordPair pair;
  final AppState appState;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite(); // Toggle favorit kata yang sedang ditampilkan
                },
                icon: Icon(icon),
                label: const Text("Favorite"),
                ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: const Text("Next"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
