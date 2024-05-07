import 'package:elections/user/business/service/UserLocalService.dart';
import 'package:elections/user/business/service/UserNetworkService.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'AuthenticateUseCase.dart';
import 'SetNewPasswordUseCase.dart';
part 'UserInteractor.g.dart';

class UserInteractor{
  AuthenticateUseCase authenticateUseCase;
  SetNewPasswordUseCase setNewPasswordUseCase;

  UserInteractor(
      this.authenticateUseCase,
      this.setNewPasswordUseCase
      );


  factory UserInteractor.build(
      UserNetworkService networkService,
      UserLocalService localService
      ){

    return UserInteractor(
        AuthenticateUseCase(networkService, localService),
        SetNewPasswordUseCase(networkService)
    );
  }
}
@Riverpod(keepAlive: true)
UserInteractor userInteractor(Ref ref){
  throw UnimplementedError();
}