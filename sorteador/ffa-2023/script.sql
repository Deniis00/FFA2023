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