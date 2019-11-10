class ValidationMixins{
  String validateEmail(String value){
   
    if(value.isEmpty){
      return 'Ingresar Email';
    }else if(!value.contains('@gmail.com')){
      return "Email Invalido solo se permite gmail";
    }else if(value.length > 22 ){
      return "Solo se permite una cuenta de 12 digitos";
    }
      return null;
  }

  String validatePassword(String value){
    if(value.isEmpty){
      return 'Ingresar Contraseña';
    }if(value.length < 8){
      return "Contraseña Invalida";
    }
      return null;
  }
}