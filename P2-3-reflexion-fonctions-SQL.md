# 1 Problèmes
## 1.1 
    On laisse le choix des id (clef primaires) pour la table "user" et activity.
    Il faut donc connaitre les id existant pour ne pas faire de doublon au risque
    d'avoir une erreur.
## 1.2
    Lors de la création de la table "user" on a défini username comme étant 
    un argument de type VARING, dans cette fonction on le définit en tant que 
    VARCHAR. De même pour l'attribut title de la table activity.
## 1.3
    L'utilisation d'un SELECT a la place du RETURNING était aussi un problème.
## 1.4
    L'absence de valeur défaut permet de passer des lignes avec des arguments
    NULL et si ceux-ci sont spécifié NOT NULL alors une erreur sera générée.

# 2 Solutions
Les solutions portent le numéro du problème correspondant.
## 2.1
    IL faudrait automatiser la décision des id en prenant, par exemple 
    l'id de la dernière ligne et l'incrémenter (possible puisqu'ils sont du
    type bigint).
## 2.2
    IL faut tout simplement faire correspondre les types
## 2.3
    Le problème a été corrigé ave le fix #3
## 2.4
    Il suffit d’insérer des valeur défaut avec 'DEFAULT' dans la fonction.



