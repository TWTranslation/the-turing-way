(rr-rdm-personnel)=

## Gestion des données personnelles
Cette section donne un aperçu général des choses à considérer lorsque vous travaillez avec des données personnelles. Pour un aperçu plus pratique des outils et des pratiques qui facilitent la reproductibilité, veuillez consulter le chapitre {ref}`Projets de données sensibles<pd-sdp>`.

### Données personnelles

Les données personnelles sont des informations sur **personnes vivantes** qui peuvent être identifiées en utilisant les données que vous traitez, soit directement ou indirectement (par exemple, le nom, l'adresse ou tout autre identifiant unique comme son numéro de sécurité sociale). [Les données relatives au défunt ne sont pas considérées comme des données personnelles dans la plupart des cas sous le RGPD](https://gdpr.eu/eu-gdpr-personal-data/). Les identificateurs indirects comprennent les caractéristiques sanitaires, économiques, culturelles ou sociales. Surtout lorsqu'une certaine combinaison de ces identifiants peut être utilisée pour identifier une personne, il faut prendre soin de gérer correctement les données. Les données particulièrement sensibles incluent les données relatives à une personne :
* identité raciale/ethnique
* opinions politiques
* croyances religieuses/philosophiques
* Adhésion des syndicats
* données génétiques et biométriques
* santé physique ou mentale
* orientation sexuelle

### Politiques relatives aux données personnelles
Il existe différentes politiques en place dans différents pays pour protéger les droits des personnes sur leurs données personnelles. Par exemple, en Australie, les données personnelles sont réglementées en vertu de la [Loi sur la protection de la vie privée de l'Australie](https://www.oaic.gov.au/privacy/the-privacy-act/). Dans l'Union Européenne, le **RGPD** (General Data Protection Regulation) s'applique au traitement des données personnelles et peut vous obliger à effectuer une étude d'impact sur la protection des données ([DPIA](https://youtu.be/YRiCb3unz3g?t=988)). Le traitement signifie tout faire avec l'information d'une personne, y compris la collecte, le stockage, l'analyse, le partage, la suppression et la destruction. Pour vous assurer d'être à jour avec les exigences de gestion des données sensibles, veuillez consulter les politiques nationales et institutionnelles qui s'appliquent à votre recherche. Voir {cite}`Smith2015participantdata` pour les pratiques recommandées pour le partage des données d'essai clinique.


(rr-rdm-informé-consentement)=

### Consentement éclairé

Le consentement formé, volontaire et équitable à participer à une étude est très important pour tout projet de recherche impliquant des participants humains. C’est grâce à ce processus de consentement que les participants à la recherche peuvent comprendre ce que leur participation à une étude spécifique signifie pour eux. Chaque personne peut alors choisir de participer ou non en utilisant le formulaire de consentement. Voir aussi le Guide {ref}`pour la recherche éthique<er>`.

Notez que le formulaire de consentement éclairé est considéré comme des données personnelles et doit donc être traité avec le même soin que les autres données personnelles. Ne stockez pas les formulaires de consentement où vous stockez le reste des données que vous collectez ; utiliser par exemple un cabinet verrouillé séparément ou un dossier chiffré.

Si vous ne pouvez pas utiliser un formulaire de consentement écrit, essayez d'enregistrer votre consentement verbal.

**La documentation de consentement devrait inclure :**

* une fiche d'information de l'utilisateur et

* un formulaire de consentement signé par le participant.

La **fiche d'information des participants** est utilisée pour informer les participants de l'étude. Les informations devraient être claires et faciles à comprendre et devraient couvrir les éléments suivants :
* De quoi le projet parle.
* Ce que leur participation impliquera.
* Les risques encourus par les participants et les mesures de protection pour minimiser ces risques.
* Assurances sur la sécurité des données et la confidentialité des participants.
   * Mentionnez qui a accès aux données
* Comment les données seront utilisées dans l'étude (pour les articles, les rapports et les présentations publiés).
* Proposition de plans d'archivage des données à la fin de l'étude et possible réutilisation secondaire des données.
    * Le consentement échelonné peut être une solution ici, en permettant aux participants de choisir quel type d'informations sera partagé publiquement
* Les détails de l'organisation qui supervise la recherche.
* Qui contacter pour plus d'informations sur l'étude.

Le **formulaire de consentement** est utilisé pour vérifier que le participant comprend et accepte de participer à l'étude. Le formulaire de consentement devrait couvrir les points suivants au minimum:
* Le participant
    * a lu et compris la fiche d'information de l'utilisateur
    * a eu la possibilité de poser des questions
    * comprend que la participation est volontaire
    * comprend qu'ils peuvent se retirer de l'étude à tout moment sans donner de raison et sans pénalité
    * comprend comment les données seront gérées, partagées et archivées (comme détaillé dans la fiche d'informations)
       * pour augmenter les chances de réutilisation de vos données, ne promettez pas de supprimer les données, mais plutôt de demander un consentement pour conserver et partager les données (voir {cite}`Meyer2018personaldata`)
* Signatures du participant et du chercheur et de la date de signature

Réfléchissez et planifiez comme vous le ferez:

* collecter, stocker et gérer les données (voir {ref}`Stockage et organisation de données<rr-rdm-storage>`)

* contrôler les autorisations d'accès

* préparer des données pour l'archivage/le partage à la fin du projet si possible (voir {ref}`Partage et archivage des données<rr-rdm-sharing>`)


(rr-rdm-privacy)=

Il y a un certain nombre de stratégies que vous pouvez adopter pour **protéger la vie privée** de vos sujets de recherche :

**1. Réduire les données**

* Si des renseignements personnels ne sont pas nécessaires, ne les recueillez pas.
* Examinez périodiquement si vous conservez des renseignements d'identification inutiles.
* Lorsque les informations d'identification ne sont plus nécessaires, il n'est plus nécessaire de les supprimer, de les supprimer ou de les détruire.

**2. Limites de conservation des données**
* Décidez combien de temps vous conserverez des données identifiables avant de supprimer les identifiants directs, d'appliquer des techniques d'anonymisation plus complexes ou de supprimer complètement les données.
* Lorsque vous supprimez des données sensibles, vous devez être conscient que les méthodes standards pour supprimer des fichiers (par exemple déplacer des fichiers dans la corbeille et les vider) ne sont pas sécurisées. Ces fichiers supprimés peuvent être récupérés. Utilisez des logiciels comme BleachBit pour supprimer les données en toute sécurité.

**3. Transfert de données sécurisé**
* Avant de décider de transférer des données personnelles, vous devez vous demander si le transfert de données identifiables est nécessaire. Par exemple, les données peuvent-elles être déidentifiées ou rendues anonymes?
* Si les données ne peuvent pas être rendues non identifiables, vous devez vous assurer que vous avez le pouvoir de transférer les données personnelles, et qu'il existe des garanties appropriées pour protéger les données avant, pendant et après le transit.
* Souvent, votre université ou votre institut fournira des solutions pour le transfert sécurisé de fichiers. Communiquez avec votre équipe de recherche de données, de protection de la vie privée ou de support informatique pour obtenir des conseils.

**4. Chiffrement**
* Le cryptage offre une protection en s'assurant que seule une personne ayant la clé de chiffrement (ou le mot de passe) concernée pourra accéder au contenu.
    * Protéger au niveau du disque: Bitlocker pour Windows, FileVault pour MacOS
    * Protéger au niveau « container» (un dossier contenant plusieurs fichiers) : Veracrypt (ou Archive pour MacOS)
    * Stockage portable : Bitlocker
    * Niveau de fichier / Échanger des informations :
      * Méthode simple : utilisez 7zip, et pack avec un mot de passe
      * Plus compliqué à configurer : utiliser l'outil PGP (peut également être utilisé pour envoyer des e-mails en toute sécurité)
    * Consultez le manuel [Chiffrement de l'université de Gand pour les chercheurs](https://osf.io/nx8km/) pour plus de détails et des guides étape par étape

**5. Autorisations d'accès**
* Gestion des permissions de dossiers partagés.
* Protection par mot de passe.


**6. Anonymisation**

L'anonymisation est un processus par lequel les informations d'identification dans un jeu de données sont supprimées. Il est principalement utilisé pour permettre le partage ou la publication de données sans révéler les informations confidentielles qu'il contient, tout en limitant la perte d'informations.
* Dans la mesure du possible, les identifiants directs (comme les noms, les adresses, les numéros de téléphone et les numéros de compte) doivent être supprimés dès que les renseignements d'identification ne sont plus nécessaires. Vous pouvez supprimer les données ou les remplacer par des pseudonymes. Pour les données qualitatives, vous devriez remplacer ou généraliser les caractéristiques d'identification lors de la transcription d'entrevues.
* Les données non identifiables qui peuvent être reidentifiées à l'aide d'un fichier de liaison (par exemple, l'information liant des sujets de données à des personnes identifiables) sont connues sous le nom de données pseudonymées. REMARQUE : Dans ce cas, le fichier de liaison doit être chiffré et stocké de façon sécurisée et séparée des données de recherche déconnectées.
  * L'identification des individus dans des données pseudonymées ou déidentifiées peut toujours être possible en utilisant des combinaisons d'identification indirecte (comme l'âge, l'éducation, l'emploi, la zone géographique et les conditions médicales). De plus, les données et les sorties contenant des compteurs de petites cellules peuvent être potentiellement divulguées, en particulier lorsque des échantillons sont prélevés à partir de petites populations ou incluent des cas avec des valeurs extrêmes ou des caractéristiques relativement rares.
   * En tant que tel, lorsque vous avez l'intention de partager des données potentiellement identifiables ou les sorties générées à partir des données, vous devrez peut-être envisager des techniques d'anonymisation plus avancées telles que le contrôle de la divulgation statistique (SDC, voir [ce manuel](https://securedatagroup.org/sdc-handbook/) pour plus d'informations).
* Pour plus d'informations sur l'anonymisation, vous pouvez regarder [ce webinaire par Enrico Glerean](https://www.youtube.com/watch?v=ILXeA4fx3cI).

**7. Partage des données sensibles**

Si vous prévoyez de partager ou de publier vos données, vous devez vous assurer que vos données sont appropriées et sûres à partager. Par exemple, vous devriez vous demander si les données peuvent être correctement anonymisées, et si les données anonymes resteront utiles (voir aussi {ref}`Barrières au partage de données<rr-rdm-sharing>`Chapitre Open Research). Après avoir appliqué des méthodes pour dé-identifier et anonymiser les données sensibles, il peut encore y avoir un risque de ré-identification (voir {cite}`Meyer2018personaldata`).

Une mesure de sécurité supplémentaire, ou une alternative à l'anonimisation, consiste à appliquer des contrôles d'accès pour s'assurer que les données sont partagées de manière appropriée et sécurisée. Cela peut impliquer de trouver un référentiel de données qui peut fournir des contrôles d'accès appropriés (voir [ici](https://osf.io/tvyxz/wiki/8.%20Approved%20Protected%20Access%20Repositories/) pour une liste de dépôts d'accès protégés). Ces dépôts peuvent fournir un accès aux métadonnées du projet, qui permettent aux autres de trouver et {ref}`citer les données<cm-citable-cite>`. L'accès restreint/conditionnel fournit également aux ré-utilisateurs potentiels l'information dont ils ont besoin pour accéder aux données, ce qui rend les données {ref}`FAIR <rr-rdm-fair>`. Par exemple, les conditions d'accès aux données peuvent nécessiter le réutilisateur potentiel de données à :
  * S'inscrire et/ou fournir les coordonnées pour s'assurer que les réutilisateurs sont authentiques et conscients de leurs responsabilités
  * Fournir des informations sur la façon dont ils utilisent les données
  * Accepter les conditions (sécurité des données, confidentialité, restrictions incluses dans les formulaires de consentement)

**Ressource**
* [Protection du cours de données sensibles](https://mantra.edina.ac.uk/protectionrightsandaccess) par [MANTRA](https://mantra.edina.ac.uk)
* {cite}`Meyer2018personaldata`.
* [Présentations](https://www.youtube.com/watch?v=J9kWkzK83i4&list=PLyeHH3bEQqIbgbw75gheV27nFF2ctPPpR&index=1) par [Zosia Beckles](https://youtu.be/J9kWkzK83i4), [Michele Voznick](https://youtu.be/w5v5d6r6irs) et [Tessa Darbyshire](https://youtu.be/jEFu1ykVI_I) sur la gestion des données responsables: Légal & Aspects éthiques dans le cadre de la [Échec à l'échec des sessions](https://www.youtube.com/c/AI4ScientificDiscovery).
* [Présentation](https://www.youtube.com/watch?v=H2mv6q4WwOU&) par Rob Gommans sur le RGPD et le traitement de (Identifiable) Image, Audio et Données Vidéo à des fins de recherche scientifique.
* [Présentation](https://youtu.be/_3bufely0c0) par Stephan Heunis sur les données de recherche sur le cerveau et la confidentialité des données personnelles : conseils pratiques pour partager et protéger.
* [Présentation](https://youtu.be/eAKhI0qde2w?t=1104) par Walter Scholger sur le RGPD avec des ressources telles que des modèles de consentement éclairé (18:30 - 38:50).
* [Présentation](https://www.youtube.com/watch?v=PSe2V1KTQ8w&) sur le traitement des données personnelles par Enrico Glerean et Pa<unk> ivi Lindstro<unk> m de l'Université Aalto. Voir [ici](https://www.aalto.fi/en/services/rdm-training) pour le cours complet.
* [Présentation](https://www.youtube.com/watch?v=J457qBdQ3xo) sur le RGPD par Rosalie Salameh.
* [Présentation](https://vimeo.com/362161972) et [article](https://www.smashingmagazine.com/2017/07/privacy-by-design-framework/) sur **confidentialité par conception**.
* [Présentation](https://www.youtube.com/watch?v=2WebuDlzEIw&list=PLG87Imnep1Sln3F69_kBROUrIbT5iderf&index=2) sur les questions éthiques et juridiques dans le partage de données par Hina Zahid.
* [Diapositives](https://osf.io/5xhya/) de Hanne Elsen sur la protection de la vie privée et le RGPD dans le Cycle Research Life.
* [Matériaux Atelier](https://osf.io/em3da/) sur les procédures de désidentification de données pour le partage de données.
