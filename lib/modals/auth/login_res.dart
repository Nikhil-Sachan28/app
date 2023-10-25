class LoginRes {
  String? token;
  String? userId;

  LoginRes({this.token, this.userId});

  LoginRes.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['userId'] = this.userId;
    return data;
  }
}
