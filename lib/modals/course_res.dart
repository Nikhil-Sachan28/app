import 'dart:ffi';

class CourseRes {
  String? sId;
  String? courseName;
  String? subtitle;
  int? studentsEnrolled;
  double? rating;
  int? totalReviews;
  double? price;
  double? totalHours;
  String? courseType;
  int? totalLectures;
  String? aboutCourse;
  String? courseIntroLink;
  String? language;
  List<String>? authors;
  String? instituteId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  CourseRes(
      {this.sId,
        this.courseName,
        this.subtitle,
        this.studentsEnrolled,
        this.rating,
        this.totalReviews,
        this.price,
        this.totalHours,
        this.courseType,
        this.totalLectures,
        this.aboutCourse,
        this.courseIntroLink,
        this.language,
        this.authors,
        this.instituteId,
        this.createdAt,
        this.updatedAt,
        this.iV});

  CourseRes.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    courseName = json['courseName'];
    subtitle = json['subtitle'];
    studentsEnrolled = json['studentsEnrolled'];
    rating = (json['rating']).toDouble();
    totalReviews = json['totalReviews'];
    price = (json['price']).toDouble();
    totalHours = (json['totalHours']).toDouble();
    courseType = json['courseType'];
    totalLectures = json['totalLectures'];
    aboutCourse = json['aboutCourse'];
    courseIntroLink = json['courseIntroLink'];
    language = json['language'];
    authors = json['authors'].cast<String>();
    instituteId = json['instituteId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['courseName'] = this.courseName;
    data['subtitle'] = this.subtitle;
    data['studentsEnrolled'] = this.studentsEnrolled;
    data['rating'] = this.rating;
    data['totalReviews'] = this.totalReviews;
    data['price'] = this.price;
    data['totalHours'] = this.totalHours;
    data['courseType'] = this.courseType;
    data['totalLectures'] = this.totalLectures;
    data['aboutCourse'] = this.aboutCourse;
    data['courseIntroLink'] = this.courseIntroLink;
    data['language'] = this.language;
    data['authors'] = this.authors;
    data['instituteId'] = this.instituteId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
