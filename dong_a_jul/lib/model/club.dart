class Clublist{
  List<Club> list= [];

  Clublist({required this.list});
}

class Club {
  String? name;
  String? img;
  String? tag;
  String? oneline;
  String? category;

  Club({this.name, this.img, this.tag, this.oneline, this.category});

  Club.fromJson(Map<String, dynamic> json) { // json -> clubs class
    name = json['name'];
    img = json['img'];
    tag = json['tag'];
    oneline = json['oneline'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() { // clubs class -> json
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['img'] = this.img;
    data['tag'] = this.tag;
    data['oneline'] = this.oneline;
    data['category'] = this.category;
    return data;
  }
}
