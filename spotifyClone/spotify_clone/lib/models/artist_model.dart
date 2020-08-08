class Artist {
  int id;
  String name;
  String tracklist;
  String type;

  Artist({this.id, this.name, this.tracklist, this.type});

  Artist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tracklist = json['tracklist'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    return data;
  }
}
