import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:app_movie/application/modules/module.dart';
import 'package:app_movie/modules/splash/splash_page.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [GetPage(name: '/', page: () => const SplashPage())];
}
