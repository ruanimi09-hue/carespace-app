import '../models/user_profile_model.dart';

class LocalUserService {
  static UserProfile? user;

  static void saveUser(UserProfile profile) {
    user = profile;
  }
}
