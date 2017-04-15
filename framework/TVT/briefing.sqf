waitUntil {!isNull player};



switch (side player) do {

	case west: {

		player createDiaryRecord ["Diary",["Yleistä","
		Tehtävässä ei ole lopputriggeriä.
		<br/>
		<font color='#66FF33'>Voitto</font>: Onnistumme puolustamaan <font color='#84e4ff'><marker name = 'hq'>HQ Rantaleiriä.</marker></font color>
		<br/>
		<font color='#FF0000'>Häviö</font>: Vihollinen sai haltuunsa HQn
		<br/>
		<br/>
		<br/>Tehtäväntekijä Tuntematon
		<br/>Päivän Viisaus
		<br/>'tavataan klo x:xx meijän toimistolla, ja se on tärkeää että tuotte KAIKKI banaanit!' - Ocelot
		"]];

		player createDiaryRecord ["Diary",["Vihollinen","
		<br/>Vihollisella on tiedustelun mukaan muutama panssaroitu ajoneuvo.
		"]];

		player createDiaryRecord ["Diary",["Tehtävä","
		Tehtävänämme on puolustaa läheistä HQta. HQn luona on väliaikainen sijoitus kapinallisten vangeille. Älkää päästäkö kapinallisia kylään.
		<br/>
		<br/>Kylä on erittäin hyvin linnoitettu.
		"]];

		player createDiaryRecord ["Diary",["Radiokanavat","
		Pitkä:
		<br/>
		<br/> Taajuus 55
		<br/>
		<br/>Lyhyet:
		<br/>
		<br/>A1,  kanava 1
		<br/>A2,  kanava 2
		<br/>A3,  kanava 3
		<br/>A4,  kanava 4
		<br/>A10, Kanava 6
		"]];

		player createDiaryRecord ["Diary",["Tilanne","
		ChDKZ joukot ovat lähestymässä CDF joukkojen tukikohtaa.
		"]];

		player createDiaryRecord ["Diary",["TÄRKEÄÄ!","
		-CDF ei saa Uida, Kävellä, Ajaa, Lentää, Kaatua, Hiipiä, Ryömiä, Kontata tai edes astua sinisillä palloilla merkatun rajan päälle tai pahimmassa tapauksessa ylittää sitä SafeStatin aikana.
		"]];
	};

	case resistance: {

		player createDiaryRecord ["Diary",["Yleistä","
		Tehtävässä ei ole lopputriggeriä.
		<br/>
		<font color='#66FF33'>Voitto</font>: Onnistumme valtaamaan <font color='#84e4ff'><marker name = 'hq'>HQ Rantaleirin.</marker></font color>
		<br/>
		<font color='#FF0000'>Häviö</font>: Emme saa haltuun HQta
		<br/>
		<br/>
		<br/>Tehtäväntekijä Tuntematon
		<br/>Päivän Viisaus
		<br/>'tavataan klo x:xx meijän toimistolla, ja se on tärkeää että tuotte KAIKKI banaanit!' - Ocelot
		"]];

		player createDiaryRecord ["Diary",["Tehtävä","
			<br/>CDF joukot ovat napanneet joitakin meidän taistelijoita. Meidän pitää näyttää heille mitä siitä seuraa.
			<br/>Tehtävänä on vallata CDF HQ ja pelastaa napatut taistelijat.
		"]];

		player createDiaryRecord ["Diary",["Vihollinen","
			<br/>Tiedustelun mukaan heillä ei pitäisi olla mitään raskaita ajoneuvoja.
		"]];

		player createDiaryRecord ["Diary",["Radiokanavat","
		Pitkä:
		<br/>
		<br/> Taajuus 55
		<br/>
		<br/>Lyhyet:
		<br/>
		<br/>A1,  kanava 1
		<br/>A2,  kanava 2
		<br/>A3,  kanava 3
		<br/>A4,  kanava 4
		<br/>A10, Kanava 6
		"]];

		player createDiaryRecord ["Diary",["Tilanne","
		ChDKZ joukot ovat lähestymässä CDF joukkojen tukikohtaa.
		"]];

		player createDiaryRecord ["Diary",["TÄRKEÄÄ!","
		-ChDKZ ei saa Uida, Kävellä, Ajaa, Lentää, Kaatua, Hiipiä, Ryömiä, Kontata tai edes astua sinisillä palloilla merkatun rajan päälle tai pahimmassa tapauksessa ylittää sitä SafeStatin aikana.
		"]];
	};
};



player createDiaryRecord ["Diary",["Kuva osapuolista","
Chernarussian Para Defence Forces (CDF)
<br/><img image='kuvat\cdf.jpg' width='400'/>
<br/>
<br/>Chernarussian Movement of the Red Star (ChDKZ)
<br/><img image='kuvat\chd.jpg' width='400'/>
<br/>
"]];