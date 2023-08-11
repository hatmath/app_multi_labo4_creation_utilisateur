
# ENTÊTE
   
    Projet:  Laboratoire_4, creation_utilisateur, projet flutter 
    Codeurs: Mathieu Hatin
    Cours : Apps multi (420-324-AH)

# LANCER L'APPLICATION

    flutter run à la racine du projet. Puis choisir l'option 2 pour rouler sous Chrome

# ÉNONCÉ/DESCRIPTION

    Laboratoire Flutter - Création d'utilisateur

        Vous êtes chargé de développer une application Flutter pour créer des utilisateurs. L'application doit comporter un `Drawer` et un formulaire de création d'utilisateur. Lorsque l'utilisateur soumet le formulaire, un `Snackbar` doit s'afficher avec le message "L'utilisateur a été créé". Le thème et l’apparence est laissée à votre choix.
    
    Exigences techniques :
        1. L'application doit avoir une `AppBar` avec un titre approprié.
        2. Le `Drawer` doit contenir un en-tête avec le nom de l'application, ainsi qu'au moins deux éléments de menu (par exemple : "Accueil" et "Paramètres"). Lorsque l'utilisateur sélectionne un élément du `Drawer`, un `print` doit afficher le nom de l'élément dans la console.
        3. Le formulaire de création d'utilisateur doit contenir deux champs de saisie de texte (`TextInputField`) : un pour l'adresse e-mail et un pour le mot de passe. Il doit aussi contenir un Radio qui demande si l’utilisateur a plus de 18 ans ou moins. Il y a une case à cocher qui demande si l’utilisateur accepte les conditions d’utilisations.
        4. Le formulaire doit également inclure un bouton "Créer" (`ElevatedButton` ou ‘TextButton’ stylisé). Lorsque l'utilisateur appuie sur ce bouton, un `Snackbar` doit s'afficher avec le message "L'utilisateur a été créé".

    Critères de réussite :
        - Le `Drawer` doit être fonctionnel et afficher correctement les éléments de menu.
        - Le formulaire de création d'utilisateur doit avoir les champs de saisie de texte appropriés et un bouton de soumission.
        - Lorsque l'utilisateur soumet le formulaire, le `Snackbar` avec le message "L'utilisateur a été créé" doit s'afficher.
        - Les actions de l'utilisateur (sélection d'éléments de menu, soumission du formulaire) doivent être traitées et les résultats doivent être affichés correctement.
    
    Instructions supplémentaires :
        - Utilisez les widgets `Scaffold`, `AppBar`, `Drawer`, `TextField`, `ElevatedButton`(ou ‘TextButton’) et `SnackBar`, RadioListTitle et Checkbox pour implémenter l'interface utilisateur.
        - Utilisez la gestion de l'état (`StatefulWidget` ou `Provider`) pour gérer les interactions de l'utilisateur et afficher les résultats appropriés.
        - Vous pouvez personnaliser le style et les messages de l'application pour correspondre à votre préférence.
        - Assurez-vous de gérer les erreurs et les validations appropriées pour les champs de saisie de texte.
        - Ajoutez toute fonctionnalité supplémentaire que vous jugez appropriée pour améliorer l'expérience utilisateur.
    
    Notez que cet énoncé de laboratoire fournit les exigences de base, mais vous êtes encouragé à ajouter des fonctionnalités supplémentaires ou à améliorer l'application selon vos compétences et votre créativité.
    
    Bonne chance dans votre laboratoire de développement Flutter !

--------------------------------------------------------------------------------------
# creation_utilisateur

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
