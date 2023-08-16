import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Création d\'utilisateur'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Nom de l\'application'),
            ),
            ListTile(
              title: Text('Accueil'),
              onTap: () {
                print('Accueil');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Paramètres'),
              onTap: () {
                print('Paramètres');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Formulaire(),
    );
  }
}

class Formulaire extends StatefulWidget{
   @override
  _MonFormulaireState createState() => _MonFormulaireState();

}

class _MonFormulaireState extends State<Formulaire>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _motdepasseController = TextEditingController();


  bool _isOver18 = false;
  bool _acceptTerms = false;
  late Utilisateur _utilisateur;

  String? _validateEmail(String? value) {
    String test = value ?? "";
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$');
    if (!emailRegExp.hasMatch(test)) {
      return 'Veuillez entrer une adresse e-mail valide.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
  children: [
    TextFormField(
      decoration: InputDecoration(labelText: 'Adresse e-mail'),
      controller: _emailController,
      keyboardType: TextInputType.emailAddress, // Utiliser le clavier d'adresse e-mail
      validator: _validateEmail,
      
    ),
    TextField(
      decoration: InputDecoration(labelText: 'Mot de passe'),
      controller: _motdepasseController,
      obscureText: true,
    ),
    RadioListTile(
      title: Text('Plus de 18 ans'),
      value: true,
      groupValue: _isOver18,
      onChanged: (value) {
        setState(() {
          _isOver18 = value ?? false;
        });
      }
    ),
    
    CheckboxListTile(
      title: Text('Accepter les conditions d\'utilisation'),
      value: _acceptTerms,
      onChanged: (value) {
        setState(() {
          _acceptTerms = value ?? false;
        }); 
      }
    ),
    ElevatedButton(
      onPressed: () {
        if (_acceptTerms) {
          
          _utilisateur = Utilisateur(_emailController.text,_motdepasseController.text, _isOver18, _acceptTerms);
          print(_utilisateur);

          final snackBar = SnackBar(
              content: Text(_utilisateur.toString()),
              duration: Duration(seconds: 3), // Durée d'affichage du Snackbar
              action: SnackBarAction(
                label: 'Close',
                onPressed: () {
                  // Code à exécuter lorsque le bouton "Close" est pressé
                },
              ),
            );

            // Afficher le Snackbar en utilisant ScaffoldMessenger
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Text('Créer'),
    ),
  ],
);

  }

}

class Utilisateur{
  String courriel = "";
  String motdepasse = "";
  bool majeur = false;
  bool acceptTerms = false;

  Utilisateur(this.courriel, this.motdepasse, this.majeur, this.acceptTerms);
  @override
  String toString() {
    
    return "L'utilisateur $courriel avec le mot de passe $motdepasse a été créé";
  }
}