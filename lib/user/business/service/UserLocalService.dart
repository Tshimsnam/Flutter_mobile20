//TODO: Deconnexion user
import '../model/User/User.dart';

abstract class UserLocalService{
  Future<dynamic> saveUser(user);
  Future<dynamic> savaToken(Token);

  Future<User> getUser();
  Future<String> getToken();

  Future<dynamic> disconnect();
}