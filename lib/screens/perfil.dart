import 'package:flutter/material.dart';
import 'package:chapa_tu_aula/screens/navDrawer.dart';


class Perfil extends StatefulWidget
{
  @override
  _MyPerfilPageState  createState() {
    return _MyPerfilPageState ();
  }
}

class _MyPerfilPageState extends State<Perfil> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mi Perfil',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "APELLIDO1 APELLIDO2, NOMBRES",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Estudiante",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w100, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("########",style: TextStyle(fontSize:25, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                          Text("Código",style: TextStyle(fontWeight: FontWeight.w100, color: Colors.grey),)
                        ],
                      ),
                      SizedBox(width: 20.0),
                      Column(
                      children:[
                        Text("##.###",style: TextStyle(fontSize:25, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                        Text("Promedio",style: TextStyle(fontWeight: FontWeight.w100, color: Colors.grey),),
                      ]
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                      height:300,
                      constraints: const BoxConstraints(maxWidth: 400),
                      child:
                      ListView(
                        padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            height: 50,
                            child:
                                Column(
                                    children:[
                                      Text("Facultad",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("20 - INGENIERÍA DE SISTEMAS E INFORMÁTICA",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                                    ]
                                )
                          ),
                          Divider(),
                          Container(
                              height: 50,
                              child:
                              Column(
                                  children:[
                                    Text("Programa",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("2 - E.P. de Ingeniería de Software",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                                  ]
                              )
                          ),
                          Divider(),
                          Container(
                              height: 50,
                              child:
                              Column(
                                  children:[
                                    Text("Periodo Académico",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("2024-1",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                                  ]
                              )
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: NavDrawer(),
    );
  }
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xff0043ba), Color(0xff006df1)]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://procsoft.wordpress.com/wp-content/uploads/2019/10/cropped-logo-fisi-3.png')),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}