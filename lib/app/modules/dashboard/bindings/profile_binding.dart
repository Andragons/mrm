import 'package:get/get.dart';
import '../../../data/repository/user_repository.dart';
import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProfileController>(
      ProfileController(userRepository: UserRepository()),
    );
  }
}
