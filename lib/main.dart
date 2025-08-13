import 'package:canchas_deportivas/widgets/elementos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:canchas_deportivas/inicio_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ConfigController(), permanent: true);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    title: 'App Login',
    theme:  personal1,
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    /*routerConfig: GoRouter(
      initialLocation: '/principal',
      routes: [
        GoRoute(
          name: 'login',
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),*/
    );
  }
  

}
