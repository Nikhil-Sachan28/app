import 'package:get/get.dart';
import 'package:jobsearch/constants/sp_constant.dart';
import 'package:jobsearch/modals/course_res.dart';
import 'package:jobsearch/service/Api_urls.dart';
import 'package:jobsearch/service/api_calls.dart';
import 'package:jobsearch/utils/My_Toast.dart';
import 'package:jobsearch/utils/sp_file.dart';
// import 'package:jobsearch/Model/Course/CourseMain.dart';
// import 'package:jobsearch/Service/RemoteServices.dart';
class CourseController extends GetxController {
  var isLoading = false.obs;
  var allCourse = <CourseRes>[].obs;
  @override
  void onInit(){
    super.onInit();
    fetchAllCourse();
  }
  void fetchAllCourse() async{
    isLoading(true);
    try {
      var token = SpFile.getString(SpConstant.token);
      var products = await ApiCall.getApiCall2(ApiUrl.coursesUrl, token);
      if (products != null) {
        isLoading(true);
        for (int i = 0; i < products.length; i++) {
          var course = CourseRes.fromJson(products[i]);
          allCourse.add(course);
        }
      } else {
        MyToast.toast("some error occured");
      }
    }finally {
      isLoading(false);
          }
        }
}}