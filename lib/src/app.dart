import 'package:flutter/material.dart';
import 'package:curso_flutter/src/PaginaScreen.dart';


class MyAppForm extends StatefulWidget {
  const MyAppForm({Key? key}) : super(key: key);

  @override
  _MyAppFormState createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.orange])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Formulario de ingreso a la app'),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: Text(
                    'App mi primer Formulario en Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Login'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),

          body: ListView(

            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                    AssetImage('images/138-1388174_login-account-icon.png'),
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'MerriWeatherLightItalic', fontSize: 50.0),
                  ),
                  const Text(
                    'Ingrese su usuario y contraseña',
                    style: TextStyle(
                        fontFamily: 'MerriWeatherLightItalic', fontSize: 20.0),
                  ),
                  const SizedBox(
                    width: 160.0,
                    height: 15.0,
                    child: Divider(color: Colors.transparent),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Escribe un nombre de usuario';
                      }
                    },
                    enableInteractiveSelection: false,
                    // autofocus: true,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: 'USER-NAME',
                        labelText: 'Nombre de usuario',
                        suffixIcon: const Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                  const Divider(
                    height: 20.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Escribe un correo electronico';
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Correo/Email',
                        suffixIcon: const Icon(Icons.alternate_email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),

                  ),
                  const Divider(
                    height: 15.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Escribe una contraseña';
                      }
                    },
                    enableInteractiveSelection: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Contraseña/Password',
                        suffixIcon: const Icon(Icons.lock_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                  const Divider(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple[600],
                      backgroundColor: Colors.deepPurple[600], // foreground

                    ),
                    child: const Text('Sing in',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 30.0,
                          fontFamily: 'MerriWeatherLightItalic'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),)

    );
  }
}

