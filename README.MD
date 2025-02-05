# Universal Bootstrapper 🚀

Un bootstrapper moderne et élégant pour télécharger et installer automatiquement la dernière version de votre application depuis GitHub Releases.

![Preview](preview.png)

## ✨ Caractéristiques

- 🎨 Interface moderne avec animations fluides
- 📥 Téléchargement automatique de la dernière release depuis GitHub
- 🔄 Barre de progression avec animations
- 🌈 Effets visuels et transitions élégantes
- 🎯 Support des fichiers .zip et .rar
- 📂 Option de chemin d'installation personnalisé
- 🚀 Option de lancement automatique après installation
- ⏰ Affichage de l'heure en temps réel
- 🌙 Design sombre moderne

## 🛠️ Prérequis

- Windows 7 ou supérieur
- [.NET 6.0 Runtime](https://dotnet.microsoft.com/download/dotnet/6.0)
- Visual Studio 2022 (pour le développement)

## 📥 Installation

1. Clonez le repository :
```bash
git clone https://github.com/votre-username/Universal-Bootstrapper.git
```

2. Ouvrez la solution dans Visual Studio 2022
3. Restaurez les packages NuGet
4. Compilez le projet

## ⚙️ Configuration

Modifiez le fichier `Config.cs` pour configurer votre bootstrapper :

```csharp
public static class Config
{
    public static string GithubUsername { get; } = "votre-username";
    public static string GithubRepository { get; } = "votre-repo";
    public static string ExecutableName { get; } = "votre-executable.exe";
}
```

## 🚀 Utilisation

1. Créez une release sur GitHub avec votre fichier .zip ou .rar
2. Le bootstrapper :
   - Téléchargera automatiquement la dernière version
   - Extraira les fichiers
   - Lancera l'application si l'option est cochée

## 🎨 Personnalisation

### Couleurs
- Couleur principale : `#00A2FF`
- Couleur secondaire : `#FF00FF`
- Arrière-plan : `#1E1E1E` à `#252830`

### Animations
- Animations de fade-in au démarrage
- Effets de survol sur le titre et les boutons
- Animation de la barre de progression
- Transitions fluides pour tous les éléments

## 📦 Structure du Projet

```
Universal-Bootstrapper/
├── Resources/
│   └── icon.ico
├── Bootstrapper-ui.xaml
├── Bootstrapper-ui.xaml.cs
├── Config.cs
├── App.xaml
└── App.xaml.cs
```

## 🔧 Fonctionnalités Techniques

- Gestion asynchrone des téléchargements
- Support des archives .zip et .rar
- Gestion des erreurs et des timeouts
- Interface utilisateur responsive
- Animations XAML optimisées
- Support du drag & drop pour la fenêtre

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :

1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push sur la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## 📝 License

Distribué sous la licence MIT. Voir `LICENSE` pour plus d'informations.

## 🙏 Crédits

- Développé par [Votre Nom]
- Interface inspirée des designs modernes Windows
- Icônes et animations personnalisées

## 📞 Support

Pour toute question ou problème :
1. Ouvrez une issue sur GitHub
2. Consultez la [documentation](wiki-link)
3. Contactez-nous via [email/discord]

---
⭐ N'oubliez pas de mettre une étoile si vous aimez ce projet ! 
