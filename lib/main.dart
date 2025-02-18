import 'package:exemple_firebase_2425/firebase_options.dart';
import 'package:exemple_firebase_2425/pagines/pagina_registre.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      
      home: PaginaRegistre(),
    );
  }
}

/*
1) Tenir Node.js instalat.
    - En acabar, es pot comprobar fent:
        node -v 
        npm -v

2) Anar a la web de Firebase i clicar a "Go to console".
    - Tenir en compte amb quin compte de Google.

3) Des de la consola de Firebase, creem un projecte de 
  Firebase.

4) Anem al menú Compilación i habilitem: 
    Authentication i Firestore Database

5) En una cmd, per exemple la del VS Code, fem:
    npm install -g firebase-tools
    (això instala Firebase al dispositiu)
    Pot fer falta fer abans:
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

6) flutter pub global activate flutterfire_cli
    o dart pub global activate flutterfire_cli

7) flutterfire configure
    - Seleccionem el projecte de Firebase
        amb el que el volem vincular.
    - Deixem seleccionats només els dispositius amb els que 
        volem que funcioni l'aplicació (en aquest cas android i web).
    
    - Si no detecta la comanda flutterfire configure, és que s'ha 
        d'afegir flutterfire al path (al path de l'usuari de les 
        variables d'entorn).
    
    - La ruta per defecte és:
        C:\Users\<nom_usuari>\AppData\Local\Pub\Cache\bin
    
8) Instal·lem les dependències de Firebase que vulguem utilitzar:
    - flutter pub add firebase_core
    - flutter pub add firebase_auth
    (amb això, marxen els errors de firebase_options.dart)
*/
