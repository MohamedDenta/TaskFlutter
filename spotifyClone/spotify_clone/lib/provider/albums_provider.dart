import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:spotify_clone/models/album_model.dart';

class AlbumProvider with ChangeNotifier {
  List<AlbumModel> albums = List();

  bool loading = false;
  getAlbums(int beg) {
    loading = true;
    //notifyListeners();
    for (var i = beg; i < beg + 10; i++) {
      var a = getAlbum(i.toString());
      if (a.id == i) {
        albums.add(a);
      }
    }
    loading = false;
  }

  AlbumModel getAlbum(String id) {
    var url = "https://api.deezer.com/album/$id";
    http.get(url).then((resp) {
      var album = AlbumModel.fromJson(json.decode(resp.body));
      // print(album.artist.name);
      return album;
    });
    return AlbumModel();
  }
}
