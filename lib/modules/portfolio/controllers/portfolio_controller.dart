import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PortfolioController extends GetxController {
  List<Map<String, String>> labels = [
    {
      'title': 'Articles',
      'image': 'assets/note.svg',
    },
    {
      'title': 'Videos',
      'image': 'assets/video-play.svg',
    },
    {
      'title': 'Pictures',
      'image': 'assets/p_gallery.svg',
    }
  ];
  var selectedLabel = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
