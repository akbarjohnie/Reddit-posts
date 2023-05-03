// Модель, с помощью которой мы работаем с данными из запроса

class PostModel {
  String? selftext;
  int? ups;
  String? title;
  String? thumbnail;
  String? url;

  PostModel({this.selftext, this.ups, this.title, this.thumbnail});

  PostModel.fromJson(Map<String, dynamic> json) {
    selftext = json['selftext'];
    ups = json['ups'];
    title = json['title'];
    thumbnail = json['thumbnail'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['selftext'] = selftext;
    data['ups'] = ups;
    data['title'] = title;
    data['thumbnail'] = thumbnail;
    data['url'] = url;
    return data;
  }
}
