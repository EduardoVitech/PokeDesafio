// ignore_for_file: unnecessary_this

class UserModel {
  late String email;
  late String password;
  late bool keepOn;

  UserModel(
      {required this.email, required this.password, required this.keepOn});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    keepOn = json['keepOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['keepOn'] = keepOn;
    return data;
  }

  String toString() {
    return "E-mail: " + this.email + "\nPassword: " + this.password;
  }
}
