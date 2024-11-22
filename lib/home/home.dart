import 'package:flutter/material.dart';
import 'FriendsList.dart';
import 'EventsList.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late final TabController _tabController; // Use late final

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // 2 tabs
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the TabController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Check if _tabController has been initialized before using it
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hedieaty",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'free',
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xF95B91E6),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Search icon
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(Icons.person_2_outlined), // Notifications icon
            onPressed: () {
            },
          ),

        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Friends'),
            Tab(text: 'Events'),
          ],
        ),
      ),
      backgroundColor: Color(0xFFDEE3E4),
      body: TabBarView(
        controller: _tabController,
        children: [
          FriendslistPage(),
          EventslistPage()
        ],
      ),
    );
  }
}
