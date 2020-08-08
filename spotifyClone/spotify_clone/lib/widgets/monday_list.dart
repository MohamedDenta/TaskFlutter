import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:spotify_clone/models/album_model.dart';
import 'package:http/http.dart' as http;

class MondayList extends StatefulWidget {
  @override
  _MondayListState createState() => _MondayListState();
}

class _MondayListState extends State<MondayList> {
  List<AlbumModel> albums = List();

  Widget AlbumContainer(String CoverUrl, String CoverName, String SingerName) {
    // if
    // CoverUrl =
    //     "https://pps.whatsapp.net/v/t61.24694-24/74611095_1656702667821474_36471033144006447_n.jpg?oh=70804d8bc22f2ebb8561c5c46db9fb46&oe=5F314DD4";
    return Container(
      child: InkWell(
        onTap: () {},
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    height: 140.0,
                    width: 140.0,
                    child: Image.network(CoverUrl),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                SingerName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getAlbums(int beg) {
    for (var i = beg; i < beg + 10; i++) {
      var a = getAlbum(i.toString());
      a.then((onValue) {
        if (onValue.id != null) {
          print('*******************');
          setState(() {
            albums.add(onValue);
          });
        }
      });
    }
  }

  Future<AlbumModel> getAlbum(String id) async {
    var url = "https://api.deezer.com/album/$id";
    var resp = await http.get(url);
    var album = AlbumModel.fromJson(json.decode(resp.body));
    print(album.id);

    return album;

    //return null;
  }

  @override
  void initState() {
    super.initState();
    getAlbums(302127);
    print(albums.length);
  }

  @override
  Widget build(BuildContext context) {
    // var bloc = Provider.of<AlbumProvider>(context);
    // bloc.getAlbums(278940);
    // albums = bloc.albums;
    //getAlbums(302127);
    return albums.length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: albums.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return AlbumContainer(albums[index].coverBig, albums[index].label,
                  albums[index].title);
            },
          );
  }
}
