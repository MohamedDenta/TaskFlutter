import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/albums_provider.dart';
import 'screens/home_screen.dart';
import 'screens/playlist_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/search_screen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => AlbumProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      ),
    );

class SpotifyApp extends StatefulWidget {
  @override
  _SpotifyAppState createState() => _SpotifyAppState();
}

class _SpotifyAppState extends State<SpotifyApp> {
  int _currentIndex = 0;
  final Tabs = [HomePage(), SearchPage(), PlayListPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white),
              title: Text(
                "Search",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music, color: Colors.white),
              title: Text(
                "Library",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              title: Text(
                "Person",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            )
          ],
          onTap: (index) {
            if (index == 0) {
              var bloc = Provider.of<AlbumProvider>(context);
              bloc.getAlbums(302127);
            }
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
