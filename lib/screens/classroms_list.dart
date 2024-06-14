import 'package:chapa_tu_aula/components/classroms_list/classrom_container.dart';
import 'package:chapa_tu_aula/components/classroms_list/searchField.dart';
import 'package:flutter/material.dart';

import '../components/shared/navDrawer.dart';

class ClassromsList extends StatefulWidget {
  Map<String, dynamic> responseData;
  Map<String, String> cookies;

  ClassromsList({super.key, required this.responseData, required this.cookies});

  @override
  State<ClassromsList> createState() => _ClassromsListState();
}

class _ClassromsListState extends State<ClassromsList> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Programación diaria',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: ListView(padding: EdgeInsets.all(16.0), children: [
          SearchField(inputController: searchController),
          ClassromContainer(),
          SizedBox(height: 16.0),
          ClassromContainer(),
          SizedBox(height: 16.0),
          ClassromContainer(),
          SizedBox(height: 16.0)
        ]),
      ),
      drawer: NavDrawer(
        responseData: widget.responseData,
        cookies: widget.cookies,
      ),
    );
  }
}
