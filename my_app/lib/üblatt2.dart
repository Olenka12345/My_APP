void main() {
  //Level 1 – Warm-Up//

  // Aufgabe 1,Speichere	deinen	Namen	und	dein	Alter	und	gib	beides	formatiert	aus.
  String name = "Olena";
  int alter = 99;

  print("Name: $name");
  print("Alter: $alter");

  // Aufgabe 2, Speichere	zwei	Zahlen,	berechne	ihre	Summe	und	gib	das	Ergebnis	aus.
  int zahl1 = 8;
  int zahl2 = 12;
  int summe = zahl1 + zahl2;

  print("Summe: $summe");

  //Level 2 – Logik//

  // Aufgabe 3, Überprüfe,	ob	eine	Zahl	gerade	oder	ungerade	ist.
  int zahl = 7;

  if (zahl % 2 == 0) {
    print("$zahl ist gerade");
  } else {
    print("$zahl ist ungerade");
  }

  // Aufgabe 4, Vergleiche	zwei	Zahlen	und	gib	die	größere	aus.
  int a = 15;
  int b = 9;

  if (a > b) {
    print("Die größere Zahl ist: $a");
  } else {
    print("Die größere Zahl ist: $b");
  }

  // Aufgabe 5, Gib	die	Zahlen	von	1	bis	10	mit	einer	Schleife	aus.
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  //Level 3 – Denken//

  // Aufgabe 6, Berechne	die	Summe	aller	Zahlen	von	1	bis	100.
  int gesamt = 0;

  for (int i = 1; i <= 100; i++) {
    gesamt = gesamt + i;
  }

  print("Summe von 1 bis 100: $gesamt");

  // Aufgabe 7, Schreibe	eine	Funktion,	die	eine	Zahl	verdoppelt	und	verwendesie.
  int ergebnis = verdoppeln(5);
  print("Verdoppelt: $ergebnis");

  // Aufgabe 8, Erstelle	eine	Liste	mit	Zahlen	und	gib	alle	Werte	aus.
  List<int> zahlen = [3, 6, 9, 12];

  for (int wert in zahlen) {
    print("Wert: $wert");
  }

  // Bonus,Baue	ein	kleines	Ratespiel	(Zahl	zwischen	1	und	10).
  int geheimeZahl = 6;
  int tipp = 6;

  if (tipp == geheimeZahl) {
    print("Richtig geraten!");
  } else {
    print("Leider falsch.");
  }
}

int verdoppeln(int zahl) {
  return zahl * 2;
}
