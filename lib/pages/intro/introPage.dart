import "package:flutter/material.dart";
import "../../user/ui/pages/login/loginPage.dart";

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50, width: double.infinity),
        Container(
          padding: const EdgeInsets.only(top: 50),
          child: Image.network(
            "https://static.vecteezy.com/system/resources/thumbnails/012/986/755/small/abstract-circle-logo-icon-free-png.png",
            width: 250,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "On gagne et on gagne",
          style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
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
              MaterialPageRoute(builder:(ctx)=>LoginPage()));
            },
            icon: Icon(Icons.check),
            label: const Text('Demarrer', style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        //deplacer le bouton
        SizedBox(height: 20,),
        //taille de l'ecran
        SizedBox(
          height: 80,
        ),
      ],
    ));
  }
}
