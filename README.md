# iim-esteban-swiftios

# Première partie : Tab bar controller
Le tab bar controller va gérer la tab bar sur l'application. 
On le défini comme étant la vue initial pour lancer l'application et arriver directement sur l'accueil avec la tab bar. 
On connecte enfin ce controller a 3 view controller pour créer nos différents écran ainsi que onglet sur la tab bar. 

# Deuxième partie : Bouton changer de couleur
Ce bouton ne fonctionne pas sur l'application car une erreur m'empeche de build l'application lorsque je connecte mon boutton a mon fichier controller
Mais ne vous inquietez pas j'ai quand même reflechi a la question pour changer la couleur du background de la view aléatoirement. 
3 variable sont définient : rouge bleu et vert. 
De manière aléatoire on va generer un nombre entre 1 et 255.
De ce fait on se retrouve avec un rouge bleu et vert aléatoire on peut mtn mettre ces variable dans la couleur du background et ca génère un background aléatoirement.

# Troisième partie : Page A propos
Très simple, il y a une image ainsi que des label pour le texte. 
L'image se trouve dans le dossier asset. 

# Quatrieme partie : Page Liste
On défini un modèle de donnée dans le fichier Model, ici ToDo. 
Dans le controller on va definir ce modèle dans une variable pour pouvoir y stocker nos données. 
Une fonction d'appel API qui necessite une URL ainsi qu'une session qu'elle va partager et la dataTask. 
Cette dataTask va analyser la réponse et ainsi décoder le JSON et mettre la donnée dans notre variable. 
Ainsi on va pouvoir configurer notre tableView en donnant un nombre de ligne au choix ainsi que d'appliquer la donnée title dans le textLabel de la cellule prototype. 
