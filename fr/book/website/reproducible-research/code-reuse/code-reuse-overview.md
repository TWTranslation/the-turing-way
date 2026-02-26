(rr-code-reuse-recommendations)=

# Aperçu de la réutilisation du code

This section contains a checklist of recommendations for making your software more reusable.
The {ref}`rr-code-reuse-details` section contains a more in-depth explanation of each of these recommendations.
You can follow the recommendations that are more suitable for your type of software and skip the ones which are not relevant in your case.

## Repeatable Recommendations

1. Assurez-vous que vous pouvez le trouver (dans l'espace ; cela signifie que vous pouvez localiser le référentiel/projet)
2. Assurez-vous que vous pouvez le trouver (en temps; en signification: être en mesure de localiser une version particulière)
3. Make sure you can execute the same sequence of operations
4. Make sure your environment and sequence of operations is robust and no human is needed to replicate what was done
5. License your code
   - with a license that allows for reuse;
   - with a license compatible with the dependencies’ licenses
6. Make sure it is citable
7. Include necessary data
8. Write useful documentation\*

## Recommandations réexécutables

1. Retirer les bits codés en dur (comme les chemins qui n'existaient que sur le disque dur où le pipeline a été exécuté) et rendre le code modulaire
2. Test that the modules you made can take different types of input data or parameters
3. Turn the modules into a package/toolbox
4. Write useful documentation\*

## Portable Recommendations

1. Make sure you can recreate the environment where it lived
2. Write useful documentation\*

## Recommandations extensibles

1. Write useful documentation\*

## Recommandations modifiables

1. Make sure your code is readable by humans
2. Make sure comments are present
3. Write useful documentation\*

The observant reader might will notice that `Write useful documentation` is mentioned for every level of reuse.
This is because different levels of documentation are required for different levels of reuse.

## Documentation

_Different documentation requirements for different levels of reuse_

Writing useful documentation is an important requirement for all levels of reuse.
However, for the different levels of reuse, there are different documentation requirements:

The documentation:

- explains usage, specifying:
  - what the software does; (required for repeatable)
  - how it can be used; (required for repeatable)
  - what options/parameters are available. (required for repeatable)
- contains examples of how to run it. (required for repeatable)
- has installation instructions, including good descriptions of:
  - the hardware it depends on (for example GPUs); (required for portable)
  - the operating system the software has been tested on; (required for portable)
  - software requirements (such as libraries and shell settings). (required for portable)
