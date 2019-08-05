import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()

class User {
  String id;
  String pwd;

  User({this.id, this.pwd});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String,dynamic> toJson() => _$UserToJson(this);

}