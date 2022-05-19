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
### Befehle für einen eigenen Container
```shell 
docker build . grpsix/rasabot # Optional kann hier noch ein Name angegeben werden, wie das Docker-Image heißen soll. Hier ist grpsix/rasabot vergeben worden
docker run -it -p 8080:8080 grpsix/rasabot # Portweiterleitung für den Browser aktivieren
docker run -it -p 8080:8080 grpsix/rasabot shell # hier wird noch die Shell mit angegeben (ist wie in einem lokalen Terminal --> wird aber hier weitergegeben an den Container)
```

### Befehle für den empfohlenen Pre-Built Container von RASA
Arbeiten mit einem vorgefertigten RASA-Container in Docker
```shell
# 1. Official Rasa container download
docker run -it -p 8080:8080 rasa/rasa

# 2. Run the official rasa with the API
docker run -it -p 8080:8080 rasa/rasa run --enable-api

# 3. Fehler entsteht --> Grund ist, dass in dem offiziellen RASA-Container kein trainiertes NLU-Model vorhanden ist. Dieses muss erst in den Container gebracht werden

# 4. Container verlassen

# 5. Dem Container externe Laufwerke hinzufügen, sowie die Port-Weiterleitung einrichten
docker run -it -p 8080:8080 -v $(pwd):/app rasa/rasa run --enable-api --cors "*" --port 8080
# Bzw. mit Windows Powershell
docker run -it -p 8080:8080 -v ${pwd}:/app rasa/rasa run --enable-api --cors "*" --port 8080
```

#### Info:
- Container können in Dockerhub per Tag spezifisch heruntergeladen werden
- Bsp. repo/container:tag (rasa/rasa:2.8.0-full)
- --> hier sollten alle die gleiche RASA-Version haben! (gibt Abhängigkeiten zur NLU)
- --> wir verwenden die Version 3.1 (Also kompatibel mit 3.0<)
- Version kann getestet werden, indem localhost:8080/version aufgerufen wird

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
