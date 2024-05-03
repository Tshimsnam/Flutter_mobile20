import 'package:elections/user/business/model/User/CreateUserRequest.dart';

import 'package:elections/user/business/model/User/User.dart';

import '../service/UserNetworkService.dart';

class UserNetworkV1 implements UserNetworkService{
  @override
  Future<String> authenticate(data) {
    // TODO: implement authenticate
    throw UnimplementedError();
  }

  @override
  Future confirmResetPasswordOTPCode(data) {
    // TODO: implement confirmResetPasswordOTPCode
    throw UnimplementedError();
  }

  @override
  Future<String> createUser(CreateUserRequest data) {
    print("Create user V1");
    return Future.value("MANASSE");
  }

  @override
  Future<User> getUser(String token) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future requestPasswordReset(data) {
    // TODO: implement requestPasswordReset
    throw UnimplementedError();
  }

  @override
  Future setNewPassword(data) {
    // TODO: implement setNewPassword
    throw UnimplementedError();
  }

  @override
  Future updatePassword(token, data) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUser(String token, data) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
  
}