class Theory {
  final String uid;
  final String title;
  final List<Theory> items;
  Theory({this.uid, this.title, this.items});

  factory Theory.fromMap(Map data) => Theory(
      uid: data["uid"],
      title: data["title"],
      items: (data["items"] as List).map((e) => Theory.fromMap(e)));

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "items": items.map((e) => e.toMap()).toList(),
    };
  }
}
