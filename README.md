# PM6_digitaler_Assistent
Erstellung eines digitalen Assistenten im Rahmen des Moduls "Agiles Projektmanagement" im 2. Semester.

## Arbeiten mit dem Bot in der Shell
### Übersicht der Befehle
https://docs.google.com/document/d/1rCT-cqm6D6KQsQPAex5-KUTHAzmBIQCc5bYN0xK_Nkk/edit#
### Server für die Storefront vorbereiten
Hier die Befehle nach der Reihe aufgelistet
```shell
conda activate installingrasa
rasa train
rasa run -m models --enable-api --cors "*"
```
Anschließend muss der Server für die index.html gestartet werden (Bspw. in VS Code über den integrierten Webserver)

## Docker Befehle
### Befehle 
```shell
docker build . grpsix/rasabot # Optional kann hier noch ein Name angegeben werden, wie das Docker-Image heißen soll. Hier ist grpsix/rasabot vergeben worden
docker run -it -p 8080:8080 grpsix/rasabot # Portweiterleitung für den Browser aktivieren
docker run -it -p 8080:8080 grpsix/rasabot shell # hier wird noch die Shell mit angegeben (ist wie in einem lokalen Terminal --> wird aber hier weitergegeben an den Container)
```

## Gruppenmitglieder
Anna-Lena Kubat @annalenakbt

Antje Schmollinger @Antje-Claudia

Julian Fleischmann @julianfleischmann

Olga Merz @olgaluisemerz

Rosanna Wagner @WagnerRosanna

## Branches
- master
  - Wir pushen oder mergen NIE sofort in den master-Branch!
  - Bevor in den master-Branch gepusht / gemergt wird, muss das Testing auf dem develop-Branch komplett abgeschlossen sein und ein Pull-Request erstellt werden, den mindestens 3 Teammitglieder als genehmigt markiert haben
  - Unser master-Branch enthält zu jedem Zeitpunkt eine getestete, funktionsfähige, laufende Produktions-Anwendung!

- develop
  - Unser develop-Branch entält zu jedem Zeitpunkt den aktuellen Entwicklungsstand für die "nächste Version"!
  - Wer seinen feature-Branch in den develop-Branch pushen / mergen will, erstellt einen Pull-Request, den mind. 2 Teammitglieder als genehmigt markieren müssen

- feature
  - Für jedes neue Feature das entwickelt wird, wird ein eigener feature-Branch erstellt
  - Beispiel: User_Story_1-Framework_aufsetzen
  - die feature-Branches zweigen immer vom aktuellen develop-Branch ab
 
- hotfixes
  - falls kritische Fehler in der Produktivversion auftreten, wird ein Hotfix-Branch erstellt

## Weitere Informationen Branching-Modell
Für weitere Infos und eine Anleitung der einzelnen Schritte diesem Link folgen:
https://nvie.com/posts/a-successful-git-branching-model/
