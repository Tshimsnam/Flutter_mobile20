import 'package:elections/user/business/service/UserLocalService.dart';
import 'package:elections/user/business/service/UserNetworkService.dart';

class AuthenticateUseCase{
  UserNetworkService service;
  UserLocalService local;

  AuthenticateUseCase(this.service, this.local);

  Future<String> run(data) async{
    var token = await service.authenticate(data);
    local.savaToken(token);
    return token;
  }
}