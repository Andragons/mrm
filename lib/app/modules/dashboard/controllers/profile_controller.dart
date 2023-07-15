import 'package:get/get.dart';
import 'package:movie/app/data/models/user.dart';
import '../../../data/repository/user_repository.dart';

class ProfileController extends GetxController {
  final UserRepository userRepository;
  Rx<User?> user = Rx<User?>(null);

  ProfileController({required this.userRepository});

  @override
  void onInit() {
    super.onInit();
    fetchUser();
  }

  Future<void> fetchUser() async {
    try {
      user.value = await userRepository.getCurrentUser();
    } catch (e) {
      print('Error fetching user: $e');
    }
  }
}
