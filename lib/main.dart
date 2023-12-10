import 'package:app_movie/modules/login/login_module.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:app_movie/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseRemoteConfig.instance.fetchAndActivate();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
      ],
    );
  }
}
