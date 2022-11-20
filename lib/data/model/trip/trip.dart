class Trip {
  Trip({
    this.id,
    this.name,
    this.location,
    this.price,
    this.days,
    this.description,
    this.tags,
  });

  Trip.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    price = json['price'];
    days = json['days'];
    description = json['description'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
  }

  int? id;
  String? name;
  String? location;
  String? price;
  int? days;
  String? description;
  List<Tags>? tags;

  Trip copyWith({
    int? id,
    String? name,
    String? location,
    String? price,
    int? days,
    String? description,
    List<Tags>? tags,
  }) =>
      Trip(
        id: id ?? this.id,
        name: name ?? this.name,
        location: location ?? this.location,
        price: price ?? this.price,
        days: days ?? this.days,
        description: description ?? this.description,
        tags: tags ?? this.tags,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['location'] = location;
    map['price'] = price;
    map['days'] = days;
    map['description'] = description;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Tags {
  Tags({
    this.name,
  });

  Tags.fromJson(dynamic json) {
    name = json['name'];
  }

  String? name;

  Tags copyWith({
    String? name,
  }) =>
      Tags(
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }
}
