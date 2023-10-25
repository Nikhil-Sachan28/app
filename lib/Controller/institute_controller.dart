import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:jobsearch/modals/institute_list_res.dart';
import 'package:jobsearch/service/Api_urls.dart';
import 'package:jobsearch/service/api_calls.dart';
import 'package:jobsearch/utils/My_Toast.dart';
import 'package:jobsearch/utils/sp_file.dart';
// import 'package:jobsearch/Model/Institute/Institute.dart';
// import 'package:jobsearch/Service/RemoteServices.dart';
class InstituteController extends GetxController {
  var isLoading = false.obs;
  var allInstitute = <InstituteListRes>[].obs;
  @override
  void onInit() {
    fetchInstitute();
    super.onInit();
  }
  fetchInstitute() async {
    isLoading(true);
    try {

      var token = SpFile.getString("token");
      var institute = await ApiCall.getApiCall2(ApiUrl.instituteUrl, token);
      if(institute!=null){
        for(int i =0; i<institute.length; i++){
          InstituteListRes res = InstituteListRes.fromJson(institute[i]);
          allInstitute.add(res);
        }
        print(allInstitute);
        isLoading(false);
      }else{
        isLoading(
          false
        );
        MyToast.toast("some error occured");
      }

    } catch (e) {
      isLoading(false);
      if (kDebugMode) {
        print("Error fetching government jobs: $e");
      }
      // Handle errors or display an error message.
    } finally {
      isLoading(false);
    }
  }
}
