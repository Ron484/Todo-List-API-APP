class Item {
  int id;
  String title;
  bool completed;


  Item.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        completed = json['completed'];


  Map toJson() {
    return {
      'id': id,
      'title': title,

    };
  }
}