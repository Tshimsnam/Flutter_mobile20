import 'package:elections/user/business/model/User/User.dart';
import 'package:elections/user/business/service/UserLocalService.dart';

class UserLocalServiceImplV1 implements UserLocalService{
  @override
  Future disconnect() {
    // TODO: implement disconnect
    throw UnimplementedError();
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future<User> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future savaToken(Token) async{
    print("token sauvegardé");
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  @override
  Future saveUser(user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }
  
}