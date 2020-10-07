import 'package:get/state_manager.dart';
import 'package:getx_app/model/user.dart';

class UserController extends GetxController {
  final Rx<User> user = User().obs;
  List<String> names = ['Omar', 'Ahmed', 'Mohamed', 'Hammed', 'Moussa'];
  updateUI(int count) {
    user.update((val) {
      names.shuffle();
      val.username = names.first;
      val.count = count;
    });
  }
}
