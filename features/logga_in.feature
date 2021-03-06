# language: sv

Egenskap: Logga in
	För att kunna spara kurser, framsteg och andra användardata,
	som en svenskastuderande,
	vill jag kunna logga in på en användarprofil.
	
	Scenario: Lyckad inloggning
		Givet att en student är registrerad
		Och loggar in med korrekt uppgifter
		Så ska studenten vara inloggad.
	
	Scenario: Misslyckad inloggning
		Givet att en student är registrerad
		Och loggar in med inkorrekt uppgifter
		Så ska studenten inte vara inloggad
		Och studenten ska meddelas att inloggningen var misslyckad.
