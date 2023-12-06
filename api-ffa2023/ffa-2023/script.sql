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
  `sorteado` bigint DEFAULT '0',
  `fecha_hora_sorteado` datetime DEFAULT NULL,
  `participa_sorteo2` tinyint DEFAULT '1',
  `sorteado2` bigint DEFAULT '0',
  `fecha_hora_sorteado2` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=700 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE DEFINER=`root`@`localhost` TRIGGER `funcionarios_upd_before` BEFORE UPDATE ON `funcionarios` FOR EACH ROW begin
     if new.registro_entrada = 1 and old.registro_entrada = 0 then 
          set new.HoraEntrada = current_timestamp(); 
          set new.Hora_llegada = current_time(); 
     end if;

     IF OLD.sorteado = 0 AND NEW.sorteado = 1 THEN
          set new.fecha_hora_sorteado = current_time();
     END IF;

     IF OLD.sorteado2 = 0 AND NEW.sorteado2 = 1 THEN
               set new.fecha_hora_sorteado2 = current_time();
     END IF;
end;

