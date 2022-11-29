import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/home/horoscope_page.dart';
import 'package:spraxa_tech_assesment/home/match_making.dart';
import 'package:spraxa_tech_assesment/utils/global_utils.dart';

class Homepage extends StatefulWidget {
  final SigninMethod signinMethod;

  const Homepage({super.key, required this.signinMethod});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.animateTo(0);
  }

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
          backgroundColor: const Color(0xffea5200),
          bottom: ColoredTabBar(
            Colors.white,
            TabBar(
              controller: _tabController,
              unselectedLabelColor: const Color(0xff333333),
              labelColor: const Color(0xff333333),
              indicatorColor: Colors.deepOrange,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              indicatorWeight: 3.0,
              tabs: const [
                Tab(text: "Horoscope"),
                Tab(text: "Match Making"),
              ],
            ),
          )),
      body: TabBarView(
        controller: _tabController,
        children: [
          Horoscope(signinMethod: widget.signinMethod),
          MatchMaking(signinMethod: widget.signinMethod),
        ],
      ),
    );
  }
}

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.tabBarColor, this.tabBar, {super.key});

  final Color tabBarColor;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
        color: tabBarColor,
        child: tabBar,
      );
}
