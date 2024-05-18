import 'package:flutter/material.dart';
import 'package:chapa_tu_aula/screens/home.dart';
import 'package:chapa_tu_aula/screens/perfil.dart';

class NavDrawer extends StatefulWidget
{
  @override
  _MyNavDrawerPageState createState() {
    return _MyNavDrawerPageState();
  }
}

class _MyNavDrawerPageState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {

    var  cabecera= const DrawerHeader(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/FISI.png'),
            fit: BoxFit.fill,
          )
      ),
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Icon(Icons.account_circle, color: Colors.white, size: 60,shadows: [],),
            ),
            Expanded(
              flex: 6,
              child: Text(
                "Buenos días,\n [Usuario] ",
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 3.0,
                    )
                  ],
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    var verlista=ListView(
      children: [
        cabecera,
        ListTile(
          title: Text("Inicio"),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => MyHomePage(),
              ));
            },
          ),
        ),
        Divider(color: Colors.grey,),
        ListTile(
          title: Text("Perfil"),
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Perfil(),
              ));
            },
          ),
        ),
      ],
    );

    return Drawer(
        child: verlista
    );
  }
}