import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String password;
  final String? verificationCode;

  LoginData({required this.name, required this.password, this.verificationCode});

  @override
  String toString() {
    return 'LoginData($name, $password, $verificationCode)';
  }

  @override
  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name && password == other.password && verificationCode == other.verificationCode;
    }
    return false;
  }

  @override
  int get hashCode => hash3(name, password, verificationCode);
}
