class AlbumModel {
  int id;
  String title;
  String upc;
  String link;
  String share;
  String cover;
  String coverSmall;
  String coverMedium;
  String coverBig;
  String coverXl;
  int genreId;
  Genres genres;
  String label;
  int nbTracks;
  int duration;
  int fans;
  int rating;
  String releaseDate;
  String recordType;
  bool available;
  String tracklist;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  List<Contributors> contributors;
  Artist artist;
  String type;
  Genres tracks;

  AlbumModel(
      {this.id,
      this.title,
      this.upc,
      this.link,
      this.share,
      this.cover,
      this.coverSmall,
      this.coverMedium,
      this.coverBig,
      this.coverXl,
      this.genreId,
      this.genres,
      this.label,
      this.nbTracks,
      this.duration,
      this.fans,
      this.rating,
      this.releaseDate,
      this.recordType,
      this.available,
      this.tracklist,
      this.explicitLyrics,
      this.explicitContentLyrics,
      this.explicitContentCover,
      this.contributors,
      this.artist,
      this.type,
      this.tracks});

  AlbumModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    upc = json['upc'];
    link = json['link'];
    share = json['share'];
    cover = json['cover'];
    coverSmall = json['cover_small'];
    coverMedium = json['cover_medium'];
    coverBig = json['cover_big'];
    coverXl = json['cover_xl'];
    genreId = json['genre_id'];
    label = json['label'];
    nbTracks = json['nb_tracks'];
    duration = json['duration'];
    fans = json['fans'];
    rating = json['rating'];
    releaseDate = json['release_date'];
    recordType = json['record_type'];
    available = json['available'];
    tracklist = json['tracklist'];
    explicitLyrics = json['explicit_lyrics'];
    explicitContentLyrics = json['explicit_content_lyrics'];
    explicitContentCover = json['explicit_content_cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['upc'] = this.upc;
    data['link'] = this.link;
    data['share'] = this.share;
    data['cover'] = this.cover;
    data['cover_small'] = this.coverSmall;
    data['cover_medium'] = this.coverMedium;
    data['cover_big'] = this.coverBig;
    data['cover_xl'] = this.coverXl;
    data['genre_id'] = this.genreId;
    if (this.genres != null) {
      data['genres'] = this.genres.toJson();
    }
    data['label'] = this.label;
    data['nb_tracks'] = this.nbTracks;
    data['duration'] = this.duration;
    data['fans'] = this.fans;
    data['rating'] = this.rating;
    data['release_date'] = this.releaseDate;
    data['record_type'] = this.recordType;
    data['available'] = this.available;
    data['tracklist'] = this.tracklist;
    data['explicit_lyrics'] = this.explicitLyrics;
    data['explicit_content_lyrics'] = this.explicitContentLyrics;
    data['explicit_content_cover'] = this.explicitContentCover;
    if (this.contributors != null) {
      data['contributors'] = this.contributors.map((v) => v.toJson()).toList();
    }
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    data['type'] = this.type;
    if (this.tracks != null) {
      data['tracks'] = this.tracks.toJson();
    }
    return data;
  }
}

class Genres {
  List<Data> data;

  Genres({this.data});

  Genres.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  String picture;
  String type;

  Data({this.id, this.name, this.picture, this.type});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['picture'] = this.picture;
    data['type'] = this.type;
    return data;
  }
}

class Contributors {
  int id;
  String name;
  String link;
  String share;
  String picture;
  String pictureSmall;
  String pictureMedium;
  String pictureBig;
  String pictureXl;
  bool radio;
  String tracklist;
  String type;
  String role;

  Contributors(
      {this.id,
      this.name,
      this.link,
      this.share,
      this.picture,
      this.pictureSmall,
      this.pictureMedium,
      this.pictureBig,
      this.pictureXl,
      this.radio,
      this.tracklist,
      this.type,
      this.role});

  Contributors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
    share = json['share'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    radio = json['radio'];
    tracklist = json['tracklist'];
    type = json['type'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['link'] = this.link;
    data['share'] = this.share;
    data['picture'] = this.picture;
    data['picture_small'] = this.pictureSmall;
    data['picture_medium'] = this.pictureMedium;
    data['picture_big'] = this.pictureBig;
    data['picture_xl'] = this.pictureXl;
    data['radio'] = this.radio;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    data['role'] = this.role;
    return data;
  }
}

class Artist {
  int id;
  String name;
  String picture;
  String pictureSmall;
  String pictureMedium;
  String pictureBig;
  String pictureXl;
  String tracklist;
  String type;

  Artist(
      {this.id,
      this.name,
      this.picture,
      this.pictureSmall,
      this.pictureMedium,
      this.pictureBig,
      this.pictureXl,
      this.tracklist,
      this.type});

  Artist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    tracklist = json['tracklist'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['picture'] = this.picture;
    data['picture_small'] = this.pictureSmall;
    data['picture_medium'] = this.pictureMedium;
    data['picture_big'] = this.pictureBig;
    data['picture_xl'] = this.pictureXl;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    return data;
  }
}
