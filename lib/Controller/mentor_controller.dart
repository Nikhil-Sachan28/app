import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
// import 'package:jobsearch/Model/Institute/Institute.dart';
// import 'package:jobsearch/Model/Mentor/Mentor.dart';
// import 'package:jobsearch/Model/Review/MenteeReview.dart';
// import 'package:jobsearch/Service/RemoteServices.dart';

class MentorController extends GetxController {
  var isLoading = false.obs;
  // var allMentor = <MentorModel>[].obs;
  // var allMenteeReview =  <MenteeReview>[].obs;
  @override
  void onInit() {
    fetchMentor();
    fetchMenteeReview();
    super.onInit();
  }
  fetchMentor() async {
    // try {
      // isLoading(true);
    //   var mentor = await RemoteServices.fetchMentor();
    //   allMentor.addAll(mentor);
    //
    // }  finally {
    //   isLoading(false);
    //   print('finally mentor');
    //
    // }
  }
  fetchMenteeReview() async {
    // try {
    //   isLoading(true);
    //   var menteeReviewData = await RemoteServices.fetchMenteeReview();
    //   allMenteeReview.addAll(menteeReviewData);
    //
    // }  finally {
    //   isLoading(false);
    //   print('finally Teacher');
    //
    // }
  }
}
