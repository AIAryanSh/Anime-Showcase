import 'package:flutter/material.dart';
import 'package:shop/Pages/WatchListPage.dart';
import 'package:shop/Pages/viewPage.dart';
import 'package:shop/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to Display
  final List<Widget> _pages = [
    //shop page
    const ViewPage(),

    //watchlist page
    const WatchListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 186, 91),
      bottomNavigationBar: bottom_nav_bar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(156, 236, 196, 136),
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/images/intro.png')),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                  leading: Icon(Icons.play_arrow, color: Colors.white),
                  title: Text(
                    "Watchlist",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                  leading: Icon(Icons.info, color: Colors.white),
                  title: Text(
                    "About",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
