
mixin LoginPort {
  void login(String email, String password);
}

final class UserNotFound implements Exception {

}
