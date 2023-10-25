class InstituteListRes {
  String? sId;
  String? subadminId;
  String? intituteName;
  String? location;
  List<String>? coursesOffered;
  String? instituteDescription;
  int? teachersCount;
  int? studentCount;
  List<String>? teachersAssociated;
  List<String>? studentsAssociated;
  int? iV;

  InstituteListRes(
      {this.sId,
        this.subadminId,
        this.intituteName,
        this.location,
        this.coursesOffered,
        this.instituteDescription,
        this.teachersCount,
        this.studentCount,
        this.teachersAssociated,
        this.studentsAssociated,
        this.iV});

  InstituteListRes.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    subadminId = json['subadminId'];
    intituteName = json['intituteName'];
    location = json['location'];
    coursesOffered = json['coursesOffered'].cast<String>();
    instituteDescription = json['instituteDescription'];
    teachersCount = json['teachersCount'];
    studentCount = json['studentCount'];
    teachersAssociated = json['teachersAssociated'].cast<String>();
    studentsAssociated = json['studentsAssociated'].cast<String>();
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['subadminId'] = this.subadminId;
    data['intituteName'] = this.intituteName;
    data['location'] = this.location;
    data['coursesOffered'] = this.coursesOffered;
    data['instituteDescription'] = this.instituteDescription;
    data['teachersCount'] = this.teachersCount;
    data['studentCount'] = this.studentCount;
    data['teachersAssociated'] = this.teachersAssociated;
    data['studentsAssociated'] = this.studentsAssociated;
    data['__v'] = this.iV;
    return data;
  }
}
