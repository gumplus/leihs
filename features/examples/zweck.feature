# language: de

Funktionalität: Zweck

  Um den Zweck einer Bestellung oder Übergabe zu sehen
  möchte ich als Verleiher
  den vom Benutzer angegebenen Zweck sehen
  
  Grundlage:
    Angenommen Personas existieren
    Und man ist "Pius"
  
  Szenario: Unabhängigkeit
    Wenn ein Zweck gespeichert wird ist er unabhängig von einer Bestellung
     Und jeder Eintrag einer Bestellung referenziert auf einen Zweck
     Und jeder Eintrag eines Vertrages kann auf einen Zweck referenzieren
  
  @javascript
  Szenario: Orte, an denen ich den Zweck sehe
    Wenn ich eine Bestellung genehmige
    Dann sehe ich den Zweck
    Wenn ich eine Aushändigung mache
    Dann sehe ich auf jeder Zeile den zugewisenen Zweck 
  
  @javascript
  Szenario: Orte, an denen ich den Zweck editieren kann
    Wenn ich eine Bestellung genehmige
    Dann kann ich den Zweck editieren
  
  @javascript  
  Szenario: Aushändigung ohne Zweck
    Wenn ich eine Aushändigung mache
    Und keine der ausgewählten Gegenstände hat einen Zweck angegeben
    Dann werde ich beim Aushändigen darauf hingewiesen einen Zweck anzugeben
    Und erst wenn ich einen Zweck angebebe
    Dann kann ich die Aushändigung durchführen

  @javascript  
  Szenario: Aushändigung mit Gegenständen teilweise ohne Zweck können durchgeführt werden
    Wenn ich eine Aushändigung mache
    Und einige der ausgewählten Gegenstände hat keinen Zweck angegeben
    Dann muss ich keinen Zweck angeben um die Aushändigung durchzuführen

  @javascript  
  Szenario: Aushändigung mit Gegenständen teilweise ohne Zweck übertragen einen angegebenen Zweck nur auf die Gegenstände ohne Zweck
    Wenn ich eine Aushändigung mache
     Und einige der ausgewählten Gegenstände hat keinen Zweck angegeben
     Und ich einen Zweck angebe
    Dann wird nur den Gegenständen ohne Zweck der angegebene Zweck zugewiesen
    
  @javascript  
  Szenario: Aushändigung mit Gegenständen die alle einen Zweck haben
    Wenn ich eine Aushändigung mache
    Und alle der ausgewählten Gegenstände haben einen Zweck angegeben
    Dann kann ich keinen weiteren Zweck angeben