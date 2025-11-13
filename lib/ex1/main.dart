import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hobbies Demo',
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: const Text('My Hobbies'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child: ListView(
              // keep children stretched to full width
              children: const [
                HobbyCard(
                  color: Color(0xFF39A94A),
                  icon: Icons.flight_takeoff,
                  label: 'Travelling',
                ),
                SizedBox(height: 10),
                HobbyCard(
                  color: Color(0xFF607D8B),
                  icon: Icons.directions_run,
                  label: 'Skating',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HobbyCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const HobbyCard({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 64,
        padding: const EdgeInsets.only(left: 30.0, right: 20.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 28),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}