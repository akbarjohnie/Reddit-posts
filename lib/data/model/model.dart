class Post {
  String? selftext;
  int? ups;
  String? title;
  String? thumbnail;

  Post({this.selftext, this.ups, this.title, this.thumbnail});

  Post.fromJson(Map<String, dynamic> json) {
    selftext = json['selftext'];
    ups = json['ups'];
    title = json['title'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['selftext'] = selftext;
    data['ups'] = ups;
    data['title'] = title;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
