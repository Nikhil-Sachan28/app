import 'package:get/get.dart';
import 'package:jobsearch/Controller/course_controller.dart';
import 'package:jobsearch/Controller/institute_controller.dart';
import 'package:jobsearch/Controller/job_controller.dart';
import 'package:jobsearch/Controller/mentor_controller.dart';
class DashboardBinding extends Bindings{
  @override
  void dependencies(){
    Get.put<JobController>(JobController());
    // Get.put<InstituteController>(InstituteController());
    // Get.put<CourseController>(CourseController());
    Get.put<MentorController>(MentorController());
  }
}