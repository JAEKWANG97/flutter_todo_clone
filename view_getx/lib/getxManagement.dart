import 'package:get/state_manager.dart';

class StateOfFlag extends GetxController {
  Rx<bool> appBarState = false.obs;
  Rx<bool> bodyState = false.obs;
}
