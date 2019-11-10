import 'package:alerta_seguridad_ciudadana/Animation/FadeAnimation.dart';
import 'package:alerta_seguridad_ciudadana/Services/authentication.dart';
import 'package:alerta_seguridad_ciudadana/widget/campostext.dart';
import 'package:alerta_seguridad_ciudadana/mixins/validation_mixins.dart';
import 'package:flutter/material.dart';

class RegistrarsePage extends StatefulWidget {
  static const String routName = 'registro';

  @override
  _RegistrarsePageState createState() => _RegistrarsePageState();
}

class _RegistrarsePageState extends State<RegistrarsePage> with ValidationMixins{
 final formKey  = new GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool showSpinner = false;
  bool _autoValidate = false;
  void setSpinnerStatus(bool status){
    setState(() {
      showSpinner = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              children: <Widget>[
                Container(
                   height: 1000,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFE53935),
                        Color(0xFFEF9A9A),

                    ])
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 80.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          2.0,
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(5),
                            child: Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    height: 200,
                                    child: FadeAnimation(1.8, Container(
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/escudo_ascope.png')
                                        )
                                      ),
                                    )),
                                  ),
                                   SizedBox(height: 35),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Crear Cuenta para continuar.",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0, vertical: 20.0),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: _emailField(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: _passwordField(),
                                    ),
                                  ),
                                  Container(
                                      child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0, vertical: 5.0),
                                      child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: _botoRegistrarse(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
  Widget _emailField() {
    return CamposText(
      
      inputText: "Ingresar Email",
      labeltext: "Ingresar Email",
      autoValidate: _autoValidate,
      controller: _emailController,
      onChange: (value) {},
      validator: validateEmail,
    );
  }

  Widget _passwordField() {
    return CamposText(
      
      inputText: "Ingresar Contraseña",
      labeltext: "Ingresar Contraseña",
      obscureText: true,
      autoValidate: _autoValidate,
      controller: _passwordController,
      onChange: (value) {},
      validator: validatePassword,
    );
  }
  Widget _botoRegistrarse(){
    return RaisedButton(
      elevation: 0,
      highlightElevation: 10,
      color: Color(0xFF03A9FA),
      highlightColor: Color(0xfffa4e88).withOpacity(0.7),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
      child: Text(
        "Registrarse",
        style: TextStyle(
          color: Colors.white,
          fontSize: 21.0,
        ),
      ),
      onPressed: () async{
        final form = formKey.currentState;
        if(form.validate()){
        var newUser = await Authetication().createUser(email: _emailController.text, password: _passwordController.text);
        if(newUser != null){
          Navigator.pushReplacementNamed(context, 'homepage');
        }
        _emailController.text = "";
        _passwordController.text="";
        setSpinnerStatus(false);
        }else{
        setState(() => _autoValidate = true);
        }
      },
    );
  }
}