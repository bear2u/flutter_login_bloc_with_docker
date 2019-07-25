class User {
  String id;
  String pwd;

  User({this.id, this.pwd});

  factory User.fromJson(Map<String, String> json) {
    return User(
      id : json['id'],
      pwd : json['pwd']
    );
  }

  Map<String,String> toJson(User user) {
    return {
      id: user.id,
      pwd : user.pwd
    };
  }

}