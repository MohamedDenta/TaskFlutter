import 'album_model.dart';

class Data {
  int id;
  bool readable;
  String title;
  String titleShort;
  String titleVersion;
  String link;
  int duration;
  int rank;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  String preview;
  Artist artist;
  String type;

  Data(
      {this.id,
      this.readable,
      this.title,
      this.titleShort,
      this.titleVersion,
      this.link,
      this.duration,
      this.rank,
      this.explicitLyrics,
      this.explicitContentLyrics,
      this.explicitContentCover,
      this.preview,
      this.artist,
      this.type});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    readable = json['readable'];
    title = json['title'];
    titleShort = json['title_short'];
    titleVersion = json['title_version'];
    link = json['link'];
    duration = json['duration'];
    rank = json['rank'];
    explicitLyrics = json['explicit_lyrics'];
    explicitContentLyrics = json['explicit_content_lyrics'];
    explicitContentCover = json['explicit_content_cover'];
    preview = json['preview'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['readable'] = this.readable;
    data['title'] = this.title;
    data['title_short'] = this.titleShort;
    data['title_version'] = this.titleVersion;
    data['link'] = this.link;
    data['duration'] = this.duration;
    data['rank'] = this.rank;
    data['explicit_lyrics'] = this.explicitLyrics;
    data['explicit_content_lyrics'] = this.explicitContentLyrics;
    data['explicit_content_cover'] = this.explicitContentCover;
    data['preview'] = this.preview;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    data['type'] = this.type;
    return data;
  }
}
