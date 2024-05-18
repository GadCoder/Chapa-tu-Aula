import 'package:flutter/material.dart';
import 'package:chapa_tu_aula/screens/navDrawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CHAPA TU AULA',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
          child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    backgroundColor: const Color(0xFFF1F1DB),
                    foregroundColor: Colors.black,
                    fixedSize: const Size(370,280),
                    alignment: Alignment.center,
                    textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,)
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('PROGRAMACIÓN',),
                    SizedBox(height: 10),
                    Icon(Icons.access_time,size: 100,),
                    SizedBox(height: 10),
                    Text('DIARIA',),
                  ],
                ),
                onPressed: (){
                  //Navigator.push(context, route)
                },
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    backgroundColor: const Color(0xFF5359DC),
                    foregroundColor: Colors.white,
                    fixedSize: const Size(370,280),
                    alignment: Alignment.center,
                    textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,)
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('PROGRAMACIÓN',),
                    SizedBox(height: 10),
                    Icon(Icons.assignment_ind,size: 100,),
                    SizedBox(height: 10),
                    Text('PERSONAL',),
                  ],
                ),
                onPressed: (){
                  //Navigator.push(context, route)
                },
              ),
            ],
          )
      ),
      drawer: NavDrawer(),
    );
  }
}