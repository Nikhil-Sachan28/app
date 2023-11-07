import 'package:get/get.dart';
import 'package:jobsearch/service/Api_urls.dart';
import 'package:jobsearch/service/api_calls.dart';
import 'package:jobsearch/utils/My_Toast.dart';

import '../modals/jobs/government_jobs.dart';
// import 'package:jobsearch/Model/Jobs/GovernmentJob.dart';
// import 'package:jobsearch/Model/Jobs/Internship.dart';
// import 'package:jobsearch/Model/Jobs/PrivateJob.dart';
// import 'package:jobsearch/Service/RemoteServices.dart';

class JobController extends GetxController {
  var isLoading = false.obs;
  var allGovernmentJobs = <GovernmentJobs>[].obs;
  // var allPrivateJobs = <PrivateJobs>[].obs;
  // var allInternship = <Internship>[].obs;
  // var selectedJobs = <PrivateJobs>[].obs;

  @override
  void onInit() {
    fetchGovernmentJob();
    // fetchPrivateJob();
    // fetchInternship();

    super.onInit();
  }

  fetchGovernmentJob() async {
    print("fetchGovernmentJob");
    try {
      isLoading(true);
      allGovernmentJobs.clear();
      var governmentJobs = await ApiCall.getApiCall(ApiUrl.govtJobs);
      print(governmentJobs[0]);
      if(governmentJobs!=null){
        for (int i=0; i<governmentJobs.length; i++){
          GovernmentJobs job = GovernmentJobs.fromJson(governmentJobs[i]);
          allGovernmentJobs.add(job);
          print(job);
        }
      }else{
        MyToast.toast("empty List");
      }

    } catch (e) {
      print("Error fetching government jobs: $e");

    } finally {
      isLoading(false);
    }
  }
  // fetchPrivateJob() async {
  //   try {
  //     isLoading(true);
  //     var privateJobs = await RemoteServices.fetchPrivateJobs();
  //     allPrivateJobs.addAll(privateJobs);
  //   } catch (e) {
  //     print("Error fetching government jobs: $e");
  //     // Handle errors or display an error message.
  //   } finally {
  //     isLoading(false);
  //   }
  // }
  // fetchInternship() async {
  //   try {
  //     isLoading(true);
  //     var internship = await RemoteServices.fetchInternship();
  //     allInternship.addAll(internship);
  //   } catch (e) {
  //     print("Error fetching government jobs: $e");
  //     // Handle errors or display an error message.
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}
