import 'package:elections/pages/periode/periodePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [

              _logo(),
              SizedBox(height: 40,),
              _titreText(),
              SizedBox(height: 40,),
              _usernameField(),
              SizedBox(height: 30,),
              _passwordField(),
              SizedBox(height: 60,),
              _validationBtn(context),
              SizedBox(height: 40,)


            ],
          ) ,
        )

    );
  }


  Widget _logo() {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Image.network(
        "https://static.vecteezy.com/system/resources/thumbnails/012/986/755/small/abstract-circle-logo-icon-free-png.png",
        width: 250,
      ),
    );
  }

   Widget _titreText() {
    return Text("Authentification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35));
  }

  Widget _usernameField() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Nom d'utilisateur",
          prefixIcon: Icon(Icons.verified_user)
      ),
    );
  }

  Widget _passwordField() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Nom d'utilisateur",
          prefixIcon: Icon(Icons.password),
          suffixIcon: Icon(Icons.visibility_off)
      ),
    );
  }
  Widget _validationBtn(BuildContext context){
    return
      Container(
        width: double.infinity,
        //largeur du boutton
        height: 50,
        //taille du boutton
        margin: EdgeInsets.symmetric(horizontal: 30),
        child:ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20)
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder:(ctx)=>PeriodePage()));
          },
          icon: Icon(Icons.check),
          label: const Text('Demarrer', style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      );

  }
}

