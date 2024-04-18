import "package:flutter/material.dart";

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity,),
          //recuperer une image dans le dossier de l'application avec .asset
        Image.asset("images/logo.jpg"),
        Text("On gagne et on Gagne"),
          //espace deux teste
          SizedBox(height:20),
        //boutton
        ElevatedButton(onPressed: (){}, child: Text("Demarrer"))

        ],
      )
    );
  }

}