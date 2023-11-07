class GovernmentJobs {
  String? sId;
  String? jobPost;
  int? totalVacancy;
  int? femaleVacancy;
  String? jobDecription;
  String? examOrganization;
  String? applicationDate;
  String? expectedExamDate;
  String? salary;
  String? selectionProcess;
  String? examFee;
  String? jobPostedBy;
  int? iV;

  GovernmentJobs(
      {this.sId,
        this.jobPost,
        this.totalVacancy,
        this.femaleVacancy,
        this.jobDecription,
        this.examOrganization,
        this.applicationDate,
        this.expectedExamDate,
        this.salary,
        this.selectionProcess,
        this.examFee,
        this.jobPostedBy,
        this.iV});

  GovernmentJobs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    jobPost = json['jobPost'];
    totalVacancy = json['totalVacancy'];
    femaleVacancy = json['femaleVacancy'];
    jobDecription = json['jobDecription'];
    examOrganization = json['examOrganization'];
    applicationDate = json['applicationDate'];
    expectedExamDate = json['expectedExamDate'];
    salary = json['salary'];
    selectionProcess = json['selectionProcess'];
    examFee = json['examFee'];
    jobPostedBy = json['jobPostedBy'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['jobPost'] = this.jobPost;
    data['totalVacancy'] = this.totalVacancy;
    data['femaleVacancy'] = this.femaleVacancy;
    data['jobDecription'] = this.jobDecription;
    data['examOrganization'] = this.examOrganization;
    data['applicationDate'] = this.applicationDate;
    data['expectedExamDate'] = this.expectedExamDate;
    data['salary'] = this.salary;
    data['selectionProcess'] = this.selectionProcess;
    data['examFee'] = this.examFee;
    data['jobPostedBy'] = this.jobPostedBy;
    data['__v'] = this.iV;
    return data;
  }
}
