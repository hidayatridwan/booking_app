import '../../config/networking/networking.dart';

abstract class AuthRepository {
  Future<BaseResponse> login(String email, String password);

  Future<BaseResponse> register(String email, String password, String fullName);

  Future<BaseResponse> forgotPassword(String email);

  Future<void> logout();
}
