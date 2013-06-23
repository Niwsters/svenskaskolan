# language: sv

Egenskap: Lista kurser
	För att kunna se vilka kurser det finns att välja mellan,
	som en svenskastuderande,
	vill jag kunna se alla tillgängliga kurser i en lista.
	
	Scenario: Kurser finns
		Givet att det finns kurser i databasen
		Och att jag är på sidan för att hitta kurser
		Så ska jag se kurserna i listan
	
	Scenario: Kurser finns inte
		Givet att det inte finns kurser i databasen
		Och att jag är på sidan för att hitta kurser
		Så ska kurslistan vara tom
