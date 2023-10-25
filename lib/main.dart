import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Bindings/dashboard_binding.dart';
import 'package:jobsearch/Screens/Authentication/loginPage.dart';
import 'package:jobsearch/utils/sp_file.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpFile.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  //  widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Job Search',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: DashboardBinding(),
      home: const LoginPage(),
    );
  }
}
