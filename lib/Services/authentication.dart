import 'package:alerta_seguridad_ciudadana/Model/auth_request.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authetication{
  final _auth = FirebaseAuth.instance;
  

  Future<AuthenticationRequest> createUser({String email="", String password=""}) async{
    AuthenticationRequest authRequest = AuthenticationRequest();
    try {
      var user =await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(user != null){
        authRequest.success = true;
      }
    } catch (e) {
       _mapErrorMessage(authRequest, e.code);
    } 
    return authRequest;
  }

  Future<FirebaseUser> getCurremUser() async{
    try {
      return await _auth.currentUser();
    } catch (e) {
      print(e);
    } 
    return null;
  }

 Future<AuthenticationRequest> loginUser({String email="", String password=""}) async{
    AuthenticationRequest authRequest = AuthenticationRequest();
    try {
      var user = await _auth.signInWithEmailAndPassword(email: email, password: password);
      if(user != null){
        authRequest.success = true;
      }
    } catch (e) {
      _mapErrorMessage(authRequest, e.code);
    } 
    return authRequest;
  }

  Future<void> cerarSesion() async{
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e);
    } 
    return null;
  }

  void _mapErrorMessage(AuthenticationRequest authRequest, String code){
    switch(code){
      case 'ERROR_USER_NOT_FOUND':
        authRequest.errorMessage = "Usuario no encontrado";
        break;
      case 'ERROR_WRONG_PASSWORD':
        authRequest.errorMessage = "Usuario no encontrado";
        break;
        case  'ERROR_NETWORK_REQUEST':
        authRequest.errorMessage ="Error de red";
        break;
      case 'ERROR_NETWORK_REQUEST_FAILED':
        authRequest.errorMessage = "Usuario no encontrado";
        break;
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        authRequest.errorMessage = "Usuario no encontrado";
        break;
      case 'ERROR_USER_NOT_FOUND':
        authRequest.errorMessage = "Usuario no encontrado";
        break; 
      case  'ERROR_INVALID_EMAIL':
        authRequest.errorMessage ="Email Inválido";
        break;
      default:
        authRequest.errorMessage = code;       

    }
  }
}