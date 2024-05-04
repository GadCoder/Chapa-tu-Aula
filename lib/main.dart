import 'package:flutter/material.dart';
import 'package:chapa_tu_aula/services/api_sum.dart';
import 'package:chapa_tu_aula/screens/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginForm(),
    );
  }
}


class LoginForm extends StatefulWidget {
  const LoginForm( {super.key});
  @override
  State<LoginForm> createState() => _LoginFormState();
}


class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final apiSUM = ApiSUM();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0), // Add bottom margin
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Iniciar sesión",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        const Align(
          alignment: Alignment.centerLeft,
          child:  Text(
              "Correo universitario"
          ),
        ),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Ingrese su correo universitario",
                filled: true,
                fillColor: Colors.grey[200], // Grey background color
                border: OutlineInputBorder( // Round borders
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none, // No border side
                ),
              ),
            ),

          const Align(
            alignment: Alignment.centerLeft,
            child:  Text(
                "Contraseña"
            ),
          ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Ingrese su contraseña",
                filled: true,
                fillColor: Colors.grey[200], // Grey background color
                border: OutlineInputBorder( // Round borders
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none, // No border side
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 40.0),
            child: ElevatedButton(
                onPressed: (){
                  final String? loginToken = apiSUM.login(emailController.text,passwordController.text) as String?;
                  if (loginToken != null){

                  }
                },
                child: const Text("Iniciar sesión")),)
        ],
        )
      )
    );
  }
}