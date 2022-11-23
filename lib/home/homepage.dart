import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/home/horoscope_page.dart';
import 'package:spraxa_tech_assesment/home/match_making.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: const Text('Kundli by Durlabh Jain'),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.deepOrange,
        bottom: const TabBar(
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.deepOrange,
          tabs: [
            Tab(text: "Horoscope"),
            Tab(text: "Match Making"),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          Horoscope(),
          MatchMaking(),
        ],
      ),
    );
  }
}
