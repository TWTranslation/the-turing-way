(rr-testing-driven-development)=
# Test Driven Development

Une façon de garantir que les tests ne soient pas négligés dans un projet consiste à adopter un développement piloté par les tests. C'est une approche dans laquelle les tests unitaires sont écrits avant le code. Les tests décrivent donc un « contrat » que le code est censé respecter. Cela garantit que le code sera correct (dans la mesure du possible par le contrat de test) tel qu'il est écrit, et il fournit un cadre utile pour réfléchir à la manière dont le code doit être conçu, quelles interfaces il doit fournir et comment ses algorithmes peuvent fonctionner. Cela peut être une aide mentale très satisfaisante dans le développement d'algorithmes délicats.

Une fois que les tests sont écrits, le code est développé pour qu'il passe tous les tests associés. Tester le code dès le début garantit que votre code est toujours dans un état disponible (à condition qu'il passe les tests !). Le développement piloté par les tests vous force à diviser votre code en petites unités discrètes, pour le rendre plus facile à tester ; le code doit être modulaire. Les avantages de ceci ont été discutés dans la section sur {ref}`tests unitaires<rr-testing-unittest>`.

Le développement axé sur le comportement est une approche de développement alternatif. Bref, sous le paradigme de développement piloté, nous vérifions "la chose a été faite correctement? , alors que dans le développement piloté par comportement, nous testons "la bonne chose a été faite?". Il est plus souvent utilisé dans le développement de logiciels commerciaux pour concentrer le développement sur la façon de rendre le logiciel aussi simple et efficace que possible pour les utilisateurs. L'expérience utilisateur est très rarement au cœur du code écrit à des fins de recherche, mais il y a des cas où un tel logiciel est écrit avec une large base d'utilisateurs en tête. Dans de tels cas, le développement axé sur le comportement est une voie qu'il convient d'envisager.