-- ffa2023.funcionarios definition

CREATE TABLE `funcionarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_funcionario` varchar(255) NOT NULL,
  `cedula_funcionario` varchar(100) NOT NULL,
  `codigo_funcionario` bigint NOT NULL,
  `participa_sorteo` tinyint(1) NOT NULL DEFAULT '1',
  `table_entrada` bigint NOT NULL DEFAULT '0',
  `HoraEntrada` timestamp NULL DEFAULT NULL,
  `registro_entrada` bigint DEFAULT '0',
  `hora_llegada` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE DEFINER=`root`@`localhost` TRIGGER `funcionarios_upd_before` BEFORE UPDATE ON `funcionarios` FOR EACH ROW begin
	if new.registro_entrada = 1 and old.registro_entrada = 0 then 
		set new.HoraEntrada = current_timestamp(); 
		set new.Hora_llegada = current_time(); 
	end if;
end;

INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Adrian  Hiroaki Akita Hisaoka', '4597376', 8362);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alberto Rodrigo Insfran Sanabria', '7069313', 7850);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Anayeli Belen Coronel Cespedes', '4793174', 8095);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Andres Daniel Caceres Caceres', '5650535', 7886);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Arath Hilzan Garcete ', '4937685', 7989);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Camila  Araceli Gonzalez Domingez', '5863712', 8145);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Alberto Gonzalez Chavez', '3208054', 9548);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Jesús Bogado Caballero', '5104775', 7875);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Noel Negrete Pereira', '4793158', 8482);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristian Elias Garay Rivas', '4833287', 7902);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Derlis  Pinto Salvioni', '6803831', 9572);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diego  Daniel Vera  Salgado', '5159723', 8351);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edgar Fernando Roa Borja', '4940557', 7882);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edgardo Andrés Machado Gómez', '5111832', 8383);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Eduardo Luis Acevedo Nuñez', '5751420', 9615);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Elian  Antonio  Gonzalez Lopez', '4916575', 8084);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Eliana Yanina Urbina Villalba', '3923861', 9589);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Emanuel Enrique Vera Gonzalez', '4940754', 7895);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Emilio  Ramòn Nùñez Nùñez', '5875618', 8201);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Fernando  Rafael Matinez Vera', '4894131', 8151);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Gerson Matias Sosa Saucedo', '7055838', 8441);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Gisela Belen Solalinde Valiente', '5224638', 8442);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Grace Estefania Muñoz Niven', '5199968', 8361);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Gustavo Aaron Insfran Blanco', '5443197', 9619);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Gustavo Ramón Bogado Oviedo', '4655378', 7884);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Horacio Antonio Diaz Peña Cipolla', '5202302', 7988);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Hugo Jesus Paris Ramirez', '4628743', 8055);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Joaquin Esequiel Flores Olmedo', '4634778', 7933);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Jose  Enrique  Gomez Garay', '4976352', 8172);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Josè Andrès Ficorilli Vera', '3809442', 8202);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('José Gabriel Ruiz Diaz Martinez', '4725472', 7905);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Juan  José  Sanchez  Ronnebeck', '3469621', 8481);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Juan Angel Macchi Rivelli', '4640426', 8523);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Lucas Josue Villalba Romero', '5388034', 7992);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Luis Alejandro Barchello Roa', '5359168', 9547);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Marcos  Daniel Medina Britez', '4219256', 8163);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Maria Ines Amarilla Baez', '5181919', 8444);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Martin Daniel Esteban Villafañe Hansen', '4184588', 7987);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Mathias  Andres Villalba Morinigo', '5665069', 9545);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Matias  Daniel Fleitas Valdez', '5161983', 8108);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Matias Ramón Zarate Ferreira', '3532809', 8478);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Mhelliza De Jesus  Benitez Pico', '5177228', 9571);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Micaela   Farias  Delvalle', '4486751', 8350);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Micaela Noemi Zaracho Cardozo', '5919963', 7891);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Milciades  Alberto  Sosa Lugo ', '5018155', 8171);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Mirtha Noemí Gonzalez Dominguez', '5863749', 7896);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Mirtis Daiana Da Silva Benitez', '4650642', 8061);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Natalia Yanet Gonzalez Salinas', '5315436', 9618);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Nelson  Enmanuel Rodriguez ', '5149550', 8352);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Niara Jael Aponte Medina', '5443735', 8008);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Oscar  Mathias Martinez Benitez', '5251127', 8424);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Oscar Gabriel Cuenca Ojeda', '4060445', 8356);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Paola Leticia Bareiro Espinola', '5389028', 8136);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Rodrigo Martin Aponte Benitez', '4905664', 9614);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Rosicela  Estigarribia Zarza', '5495236', 8425);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ruben Giovanni Rojas Almiron', '4716300', 7907);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ruth Fabiola Rolon Aguero', '4354123', 8360);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Samira Monserrat Lopez Ruiz Diaz', '5261744', 9573);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Thalia Belén Romero Cardozo', '6564021', 8005);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Yanina  Mariel Maciel  López', '4626685', 9595);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Yanina Monserrath Rolon Benega', '6252787', 9546);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Yoon Jin Lee Chung', '5294600', 9580);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Adrian  Vazquez ', '5416296', 9588);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Adriana Carolina Acosta González', '4659143', 3478);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Agustin  Grondona Paz', '7855235', 1098);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Aida Damiana Bernal Gimenez', '5508886', 8051);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Aida Eloisa Martínez Britez', '3784802', 3486);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alam Emanuel Rodas Urunaga', '5610899', 9601);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alan Joel Carballo ', '5327096', 8010);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alba Rosana Garcete Macedo.', '3935158', 8222);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alberto Fabian Fleitas Ramirez', '5300519', 7967);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Aldo Osmar Blanco Gonzalez.', '3724150', 3704);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alejandro David Espinola Luraschi', '5213662', 8091);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alejandro Nicolas Moran Boveda', '4196457', 8167);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alex Antonio Avalos Aquino', '5854252', 8459);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alex Ronaldo Alderete Kaefer', '5960002', 8389);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alexis Ariel Godoy Mereles', '4854024', 1084);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alexis Fernando Riveros Pezoa', '5193713', 8395);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Alexis Ramón Olmedo Meza', '5208967', 8042);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Amina Arami Sanchez Gomez.', '3396258', 8477);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ana Carolina Duarte Lara', '4989045', 8385);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ana Maria Sanabria Páez', '5299846', 3712);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ana Romina Cardozo Olmedo', '7271854', 8397);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Analía Celeste Rotela Cabrera', '5149230', 3588);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Analía Soledad Grainor Barrios', '5530652', 3538);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Analiz  Villalba Vera', '5430816', 9579);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('André  Colett Rangel', '8469122', 3480);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Andrea Noemí Paiva Ortega', '5607357', 7958);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Andres Eduardo Vallejos Fernandez', '5843060', 7858);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Andres Justo Villalba García', '4768834', 8388);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Angel Alberto Arias Almiron', '4426394', 8157);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Angel Sebastian Aquino Borja', '6542073', 8476);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Angelica Diana Cubilla Godoy', '5267569', 9533);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Antonio Abel Espinoza Aguinagalde', '5053861', 2374);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Antonio Carlos Gonzalez Almada', '4574956', 8339);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Antonio Daniel Cardozo Cristaldo', '2480179', 466);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Antonio Daniel Cristaldo González', '6914590', 3465);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Antonio José Lopez Valdez', '6373768', 8396);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Any Cristhiane Berneque Villasboa', '5740073', 9568);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ariel  Gomez Alves', '4817810', 8393);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Arnaldo Javier Varga Melgarejo.', '3593010', 8224);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Arsenio David Acuña Salina', '7026663', 8105);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Artemio  Arzamendia Ayala', '5716711', 7928);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Auda Jazmin Sosa Aguilera', '4696476', 3792);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Axel Nicolas Escalante Ramirez', '6542683', 7977);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Barbara Sabrine Novelli Da Silva', '58624', 7945);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Bianca  Sanchez Muniz', '5264975', 7960);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Brian Anibal Israel Sartorio Alvarenga', '4290781', 3638);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Brian Uriel Mendoza Melgarejo', '6118952', 7949);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Bruna Leticia Ortiz Cabrera', '7093328', 7970);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Bruna Mayara Pamela Salinas Ocampo', '4916424', 8141);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Bruno Ariel Salinas Torres', '5182930', 3422);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Bruno Cesar Ramón Larrosa Bordon', '7699125', 8439);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Bruno Enmanuel Viveros Candia', '5306792', 8408);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Camila  Da Silva Sampaio.', '8446503', 5828);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Camila  Graciela Gray Lopez.', '6227145', 3804);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Camila  Soledad Britos Ibáñez', '3994771', 3574);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Camila Gissell Ortiz Muller', '4231644', 8219);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Camila Lujan Leguizamón Fernandez', '6173096', 7920);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Camila Magali Orué Dominguez', '5024106', 8110);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos  Ramón Deleón Gauto', '6002908', 3591);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos  Raúl Gimenez Zarate', '5175724', 3578);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Alberto Cardozo Ortiz', '4239724', 3699);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Alfredo Macchi Rivelli.', '3254233', 134);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Andrés Zambrano Santos', '8833706', 8409);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Antonio Armoa Carbario', '5255772', 9578);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos César García Palacios', '3611206', 2223);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Ezequiel Alexis Gamarra Troche', '5761256', 8215);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carlos Matias Amarrilla Aranda', '7723147', 8509);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carmelino  Gamarra Zaracho.', '5197445', 7985);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carmen  Ortiz Cantero', '6774611', 8009);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Carolina Magali Martinez Paiva', '4916422', 3713);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cesar Armando Ocampos Ortega', '3292568', 149);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cesar Fernando José Torres Flores', '6332915', 8332);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cesar Matias Ferreira Pineda', '6810576', 8031);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cesar Ramón Leiva Arias.', '3354914', 7980);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Chadi  Goncalves Ahmad', '609994335', 9540);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cielo Magali Baez Villamayor', '5937474', 9535);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Clara Isabel Galeano Chaparro.', '3838283', 2265);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Clara Maria Isabel Gimenez Chavez', '5701140', 8462);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Clarisse Monserrat Martinez Ocampos', '6017516', 3710);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Clotilde Maria Delvalle Gonzalez.', '4356882', 8174);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Conrado  Deo Garcia.', '2060000689', 38);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristhian Dario Bernal Arce', '3403167', 8197);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristhian Emanuel Larrea Caballero', '5410927', 7942);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristhian Ramón Arellano Gómez', '4261400', 3490);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristian David Benitez Ortega', '6205880', 9529);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristian David Paniagua Gonzalez', '4852403', 8004);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristian Fabian Flecha Vera', '4406520', 4825);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Cristian Rafael Pico Ayala', '5620697', 2353);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Daniel  Ortellado Rios', '7129340', 3432);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Daniel  Oshiro ', '7405359', 90);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Daniela Beatriz Flores Duarte', '5964069', 8404);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Debora Elizabeth Amarilla Vera', '5112121', 9622);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Deisy Raquel Vazquez Aquino', '5325834', 8129);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Denis Alexander Bernal Bernal', '6536935', 3425);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Denis Alexis Zapata Espinola', '5115830', 9605);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Denis Alfredo Ayala Britez', '6521870', 2364);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Denisse Paola Rodas Silguero', '3914689', 8410);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Derlis Antonio Frutos Saracho.', '2613134', 8164);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Derlis Joel Portillo Trinidad', '5517417', 8214);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Derlis Rene Marecos Zarate.', '2565554', 8175);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Derlys Gustavo Cabañas Vallejos', '4420601', 8080);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diana Manuela Martinez Garay', '4612740', 9577);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diana Rocio Galeano González', '4998963', 3504);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diego Armando Flor Davalos', '7070249', 7978);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diego Daniel Britez Sosa', '7610110', 3683);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diego Dario Perez Vera', '4773697', 9583);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diego Fabian Espinola Mendoza', '4001710', 3641);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Diego Felipe Nunes Eufrasio', '8641255', 3668);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Dilan Manuel Machado Peralta', '4969530', 8103);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Dorcas Noemi Ojeda Gonzalez', '7119851', 7972);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edelina  Caballero ', '5000183', 3405);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edgar  Gavilan Dominguez', '3474013', 241);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edgar David Cantero Duarte', '3540131', 3662);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edgar Fernando Aguirre Duarte', '4288984', 8064);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edgar Ramón Casco Olmedo', '2283337', 1103);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edgar Ricardo Martínez Fariña', '5062578', 3421);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edith  Emmanuel  Blanco Gonzalez', '5767783', 801);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Eduardo  Kafka Trinkel', '76132763', 7984);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Eduardo  Van Der Linden ', '8318647', 2285);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Edulfo Daniel Jara Espinola', '7629811', 8398);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Elias Giovani Romero Zelaya', '5689291', 9538);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Elias Santiago Gonzalez Ruiz Diaz', '5266710', 7913);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Elsi Jemima Sosa Oviedo', '7276201', 8463);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Elvio René Gonzalez Castillo', '4622613', 8020);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Elvis David Piñanez Cabral', '3589147', 638);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Emigdio  Alonzo Bogado', '3820015', 8335);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Emilce Karina Jimenez Rodas.', '5589843', 7999);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Enrique  Delvalle ', '5067470', 9603);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Enrique Ariel Gomez Quiñonez', '4661120', 8510);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Erica Johana Guerrero Benitez', '5998545', 8092);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Erwin José Deggeller Martinez', '4941055', 8153);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Eugenio Gabriel Moreno Gimenez', '5272786', 8034);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Evelyn Dahiana Alonso Ortiz.', '4327970', 8336);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Evelyn Noemí Denis Duarte', '5604001', 3678);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ever Angel Gimenez Fariña', '2937486', 8106);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ever David Alonso Ortiz', '4951957', 3784);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ever Ramón Alonso Molinas.', '1869310', 982);
INSERT INTO ffa2023.funcionarios
(nombre_funcionario, cedula_funcionario, codigo_funcionario)
VALUES('Ever Rolando Cabrera Martinez', '4256030', 474);