class RegisterReq {
  String? name;
  String? email;
  String? password;
  String? mobile;

  RegisterReq({this.name, this.email, this.password, this.mobile});

  RegisterReq.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['mobile'] = this.mobile;
    return data;
  }
}
