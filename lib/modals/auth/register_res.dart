class RegisterRes {
  String? userId;
  String? message;

  RegisterRes({this.userId, this.message});

  RegisterRes.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['message'] = this.message;
    return data;
  }
}
