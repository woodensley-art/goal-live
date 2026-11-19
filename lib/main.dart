
import 'package:flutter/material.dart';

void main() {
  runApp(const GoalLiveApp());
}

class GoalLiveApp extends StatelessWidget {
  const GoalLiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GOAL LIVE',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF07140E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF16C76A),
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF103C29),
        title: const Text(
          '⚡ GOAL LIVE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Scores en direct',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text('⚽ FOOTBALL'),
          const SizedBox(height: 12),
          matchCard('Real Madrid', 'Barcelona', '2', '1'),
          matchCard('Manchester City', 'Arsenal', '1', '1'),
          const SizedBox(height: 24),
          const Text(
            '🏀 BASKETBALL',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          matchCard('Lakers', 'Celtics', '88', '91'),
          const SizedBox(height: 24),
          const Text(
            '🌍 Tous les sports, partout dans le monde.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget matchCard(
    String team1,
    String team2,
    String score1,
    String score2,
  ) {
    return Card(
      color: const Color(0xFF123D2A),
      margin: const EdgeInsets.only(top: 12),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const Text(
              '● EN DIRECT — EXEMPLE',
              style: TextStyle(color: Colors.greenAccent),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(team1)),
                Text(score1, style: const TextStyle(fontSize: 24)),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(team2)),
                Text(score2, style: const TextStyle(fontSize: 24)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
