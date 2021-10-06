import 'package:equatable/equatable.dart';

class PersonModel extends Equatable {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  LocationModel? origin;
  LocationModel? location;
  String? image;
  List<String>? episode;
  DateTime? created;

  PersonModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.created,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        origin,
        location,
        image,
        episode,
        created,
      ];

  PersonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin =
        json['origin'] != null ? LocationModel.fromJson(json['origin']) : null;
    location = json['location'] != null
        ? LocationModel.fromJson(json['location'])
        : null;
    image = json['image'];
    episode =
        (json['episode'] as List<dynamic>).map((e) => e as String).toList();
    created = DateTime.parse(json['created'] as String);
  }

  Map<String, dynamic>? toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['status'] = status;
    map['species'] = species;
    map['type'] = type;
    map['gender'] = gender;
    map['origin'] = origin;
    map['location'] = location;
    map['image'] = image;
    map['episode'] = episode;
    map['created'] = created!.toIso8601String();
    return map;
  }
}

class LocationModel {
  String? name;
  String? url;

  LocationModel({this.name, this.url});

  LocationModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    map['name'] = name;
    map['url'] = url;
    return map;
  }
}
