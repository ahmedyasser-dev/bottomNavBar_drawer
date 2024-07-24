import 'package:flutter/material.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/profile_page.dart';
import 'package:navigation/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var selectedIndex = 0;

  final List pages = [
    const HomePage(),
    const ProfilePage(),
    const SettingsPage()
  ];

  void navigateBottomBar(var index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("1st Page!", style: TextStyle(color: Colors.white),),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
                  Icons.person,
                  size: 48,)
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('H O M E'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('P R O F I L E'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profilepage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('S E T T I N G S'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
