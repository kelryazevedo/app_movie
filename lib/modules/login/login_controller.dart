import 'package:app_movie/application/ui/loader/loader_mixin.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin {
  final loading = false.obs;
  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
  }

  Future<void> login() async {
    loading(true);
    await 3.seconds.delay();
    loading(false);
  }
}
