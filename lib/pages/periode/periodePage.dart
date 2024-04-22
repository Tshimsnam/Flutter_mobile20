import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PeriodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _entetePeriode(),
      drawer: _menuPrincipale(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("50 lignes"), Icon(Icons.filter_alt)],
            ),
            Expanded(child: _listePeriodes())
          ],
        ),
      ),
    );
  }

  AppBar _entetePeriode() {
    return AppBar(
      elevation: 0,
      title: Text("Periode Electorales"),
      backgroundColor: Colors.deepOrange,
      //definir la couleur pour tous les element du appbar
      foregroundColor: Colors.white,
      //parti droite ou on met le boutton
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.sync),
        ),
      ],
    );
  }

//option a trois tirrer a gauche
  Drawer _menuPrincipale() {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepOrange),
            child: Text('App Election')),
        ListTile(
          title: Text("Tableau de bord"),
          leading: Icon(Icons.dashboard),
        ),
        Divider(),
        ListTile(title: Text("Deconnexion"),
    leading: Icon(Icons.logout),

    ),
      ],
    ));
  }

  Widget _listePeriodes() {
    return ListView.builder(
        //determiner le nombre des fois que les element de la liste seront repeter
        itemCount: 50,
        shrinkWrap: true,
        //index position de l'element dans la liste
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Text("$index"),
            title: Text("Manasse_Tshims"),
            trailing: Icon(Icons.arrow_right),
          );
        });
  }
}
