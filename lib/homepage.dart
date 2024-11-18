import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

bool isDarkMode = false;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Project',
      theme: isDarkMode
          ? ThemeData.dark() // Koyu tema
          : ThemeData.light(), // Açık tema
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode; // Tema modunu değiştir
                });
              },
              icon: Icon(isDarkMode
                  ? Icons.light_mode_outlined // Koyu modda açık tema ikonu
                  : Icons.dark_mode_outlined), // Açık modda koyu tema ikonu
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
            ),
          ],
          title: const Text("New Project"),
          backgroundColor: isDarkMode ? Colors.black : Colors.blue.shade600,
          centerTitle: true,
        ),
        body: const Center(),
      ),
    );
  }
}
