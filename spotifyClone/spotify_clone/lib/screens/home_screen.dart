import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:spotify_clone/models/album_model.dart';
import 'package:spotify_clone/provider/albums_provider.dart';
import 'package:spotify_clone/widgets/browse_list.dart';
import 'package:spotify_clone/widgets/monday_list.dart';
import 'package:spotify_clone/widgets/recently_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AlbumModel> albums = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // var bloc = Provider.of<AlbumProvider>(context);
    // //bloc.albums.clear();
    // bloc.getAlbums(302127);
  }

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<AlbumProvider>(context);
    //bloc.albums.clear();
    // setState(() {
    bloc.getAlbums(302127);

    //print(albums.length);
    //});

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Recently Played",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(child: RecentlyList()

                  // children: <Widget>[
                  //   AlbumContainer("CoverUrl", "CoverName", "SingerName"),
                  //   SizedBox(
                  //     width: 28.0,
                  //   ),
                  //   AlbumContainer("CoverUrl", "CoverName", "SingerName"),
                  //   SizedBox(
                  //     width: 28.0,
                  //   ),
                  //   AlbumContainer("CoverUrl", "CoverName", "SingerName"),
                  //   SizedBox(
                  //     width: 28.0,
                  //   )
                  // ],
                  // ),
                  ),
              Text(
                "Make monday more productive",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(child: MondayList()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Browse",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(child: BrowseList()),
            ],
          ),
        ),
      ),
    ));
  }
}
