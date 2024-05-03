import '../implementation_test/UserNetworkV1.dart';
import '../implementation_test/UserNetworkV2.dart';
import '../model/User/CreateUserRequest.dart';
import 'CreateUserUseCase.dart';


void main(){
  // quelque part dans le projet
  var implementation= UserNetworkV2();
  var createUserUseCase=CreateUserUseCase(service: implementation);

  print("Formulaire");
  var data= CreateUserRequest(
    name: "ODC",
    password: "OFOOFOD",
    confirmPassword: "OODODOF");


 createUserUseCase.run(data);
}