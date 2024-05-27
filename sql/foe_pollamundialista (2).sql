-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 06:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foe_pollamundialista`
--

-- --------------------------------------------------------

--
-- Table structure for table `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `archivo_cedulas` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `archivos`
--

INSERT INTO `archivos` (`id`, `archivo_cedulas`) VALUES
(1, 'cedul.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `cedulas`
--

CREATE TABLE `cedulas` (
  `id` int(11) NOT NULL,
  `cedula` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activo` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1',
  `clave` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cedulas`
--

INSERT INTO `cedulas` (`id`, `cedula`, `nombre`, `activo`, `clave`) VALUES
(1, '38284216', 'GUZMAN ARGUELLO ESPERANZA', '1', ''),
(2, '93390913', 'CRUZ PEDRAZA JHON JAIRO', '1', ''),
(3, '10177244', 'POVEDA PINEDA HENRY', '1', ''),
(4, '38360374', 'PARRA RODRIGUEZ CELIA LISSETTE', '1', ''),
(5, '14213956', 'HERRERA RODRIGUEZ JAIME', '1', ''),
(6, '39564817', 'SILVA MONCALEANO ADRIANA', '1', ''),
(7, '39566625', 'SILVA AMAYA MARIA JENNY', '1', ''),
(8, '65728555', 'RAMOS CIFUENTES ROSS MERY', '1', ''),
(9, '65745156', 'ALVAREZ TRIANA ALEYDA', '1', ''),
(10, '65752462', 'GARCIA CARDONA CECILIA', '1', ''),
(11, '65763692', 'CRUZ CAICEDO NELLY PATRICIA', '1', ''),
(12, '65770426', 'PULECIO HERNANDEZ CLEMENCIA', '1', ''),
(13, '65728224', 'MACHADO MORENO DORIS', '1', ''),
(14, '12125800', 'MATIZ  JULIO CESAR', '1', ''),
(15, '14239516', 'MEDINA BARRAGAN HUMBERTO', '1', ''),
(16, '28544925', 'ESPINOSA JIMENEZ DIANA LORENA', '1', ''),
(17, '28546426', 'JIMENEZ DE ESPINOSA NUBIA STELLA', '1', ''),
(18, '28680470', 'MOSOS DE PEREZ RUBY', '1', ''),
(19, '39700958', 'GOMEZ APONTE GLADYS STELLA', '1', ''),
(20, '38219462', 'GARAY DE OVALLE NOHORA', '1', ''),
(21, '38220440', 'VILLALBA  MARIA DEL CARMEN', '1', ''),
(22, '93405791', 'RINCON ROA DIEGO FELIPE', '1', ''),
(23, '14219324', 'QUI¥ONEZ CARDENAS JOSE ANTONIO', '1', ''),
(24, '38363930', 'BELTRAN VASQUEZ DIANA CAROLIA', '1', ''),
(25, '14011148', 'VALENCIA CARDENAS WILLIAM ALEXANDER', '1', ''),
(26, '93398950', 'CORRAL SANABRIA CARLOS ENRIQUE', '1', ''),
(27, '65744425', 'BARRETO LOZANO ROSA DE JESUS', '1', ''),
(28, '28551013', 'BARRERA NIETO CAROLINA DEL PILAR', '1', ''),
(29, '93383601', 'MATEUS CASTRO CESAR AUGUSTO', '1', ''),
(30, '38140312', 'MOGOLLON MOGOLLON DIANA FERNANDA', '1', ''),
(31, '65498598', 'MENDEZ DIAZ LIGIA', '1', ''),
(32, '28540420', 'LASTRA CARBONEL PAOLA ANDREA', '1', ''),
(33, '65728581', 'MONTAÑA VILLALOBOS GLORIA C.', '1', ''),
(34, '93397078', 'BETANCOURT DIAZ AUNER', '1', ''),
(35, '1105670273', 'SORIA NIETO EDWIN KENIER', '1', ''),
(36, '1110482371', 'CALLE MURILLO JULIANA MARCELA DEL PILAR', '1', ''),
(37, '1110463645', 'CAICEDO CRUZ LUIS ANTONIO', '1', ''),
(38, '1110460575', 'RIVERA GUZMAN JUAN GUILLERMO', '1', ''),
(39, '1098698208', 'PEDROZO REMOLINA YULY ANDREA', '1', ''),
(40, '53154871', 'URREA CASTELLANOS SINDY DAHIANA', '1', ''),
(41, '65747095', 'DENEBY VERGARA LUZ', '1', ''),
(42, '1110464482', 'FLOREZ GONZALEZ NEYDA JULIETTE', '1', ''),
(43, '28551873', 'ECHEVERRY PRADA LEDI JOHANA', '1', ''),
(44, '65731582', 'FRANCO GARZON BEATRIZ', '1', ''),
(45, '1121840299', 'SANCHEZ SANCHEZ ANGELICA LILIANA', '1', ''),
(46, '65742115', 'YARA ACOSTA ARACELY', '1', ''),
(47, '65631565', 'SAENZ CRUZ ANDREA LICETH', '1', ''),
(48, '1110489179', 'VIDAL MUÑOZ GERMAN EDUARDO', '1', ''),
(49, '24434023', 'GIRALDO SOTO LUZ MARIA', '1', ''),
(50, '24437409', 'GOMEZ GIRALDO ADRIANA MARIA', '1', ''),
(51, '1110468705', 'MENDOZA SAENZ DIEGO ARMANDO', '1', ''),
(52, '1105684013', 'MONTEALEGRE REYES DANIEL', '1', ''),
(53, '1106782930', 'ACOSTA PEREZ AURA NATALI', '1', ''),
(54, '1110545098', 'OVIEDO PEÑA ANDRES FELIPE', '1', ''),
(55, '65744264', 'BETANCOURT MORENO LUCY', '1', ''),
(56, '26431533', 'MARIN GOMEZ ANDREA', '1', ''),
(57, '1030561799', 'TOCORA MONTENEGRO ANGIE KATHERINE', '1', ''),
(58, '1110485860', 'QUINTERO LONDOÑO MARYI SUSAN', '1', ''),
(59, '65737013', 'ROJAS ROJAS JACQUELINE', '1', ''),
(60, '1110532727', 'MORALES CALERO CRISTIAN FERNANDO', '1', ''),
(61, '28548259', 'LOPEZ CARDONA MONICA', '1', ''),
(62, '1110464884', 'ORTIZ YATE GERMAN DANIEL', '1', ''),
(63, '50939308', 'RAMOS PEÑATA LIVEY DEL CARMEN', '1', ''),
(64, '1110493857', 'MORALES MUÑOZ GIOVANNY ALFONSO', '1', ''),
(65, '1110500498', 'ZAMBRANO CIFUENTES CARLOS ALBERTO', '1', ''),
(66, '1098101464', 'SANCHEZ GODOY CARMEN ZULAY', '1', ''),
(67, '38143103', 'OCAMPO JIMENEZ MARY', '1', ''),
(68, '93391288', 'RICO CASTAÑO FREDY ALEXANDER', '1', ''),
(69, '1015410507', 'FARFAN MUÑOZ SANTIAGO', '1', ''),
(70, '1081917330', 'BAQUERO LUNA LEIDY ROCIO', '1', ''),
(71, '93236491', 'LINARES LOZANO JOSE LUIS', '1', ''),
(72, '39679662', 'MONTIEL TAPIERO ANDREA CAROLINA', '1', ''),
(73, '1110485484', 'AGAMEZ GOMEZ ELIANA ANDREA', '1', ''),
(74, '1110561298', 'BUSTAMANTE MORA NATHALY', '1', ''),
(75, '1110532562', 'TELLEZ LOPEZ KEVIN ANDRES', '1', ''),
(76, '1106484423', 'ROA MARTINEZ GELVER ANDREY', '1', ''),
(77, '1105685223', 'SAZA RAMIREZ MAGDA CATHERINE', '1', ''),
(78, '1110494605', 'CASTILLO PERDOMO JUAN CAMILO ANDRES', '1', ''),
(79, '1110499237', 'VARON JARA DIANA MARCELA', '1', ''),
(80, '1110569445', 'OSPINA VIVAS YADIR', '1', ''),
(81, '93412046', 'GOMEZ SUAREZ GERMAN ALEJANDRO', '1', ''),
(82, '1110572592', 'CARVAJAL CASTAÑO DANIELA', '1', ''),
(83, '1110510314', 'CAMERO TAVERA BLEYMER DIRCEW', '1', ''),
(84, '1110486379', 'MURILLO ARIZA JOHAN SEBASTIAN', '1', ''),
(85, '52254025', 'PATIÑO FORERO CLAUDIA ISABEL', '1', ''),
(86, '1110540663', 'GUZMAN GUERRERO YUDDY KATHERINE', '1', ''),
(87, '1110567416', 'REYES ROJAS CRISTIAN CAMILO', '1', ''),
(88, '5822038', 'OTAVO GALEANO HUMBERTO ANDRES', '1', ''),
(89, '28537591', 'BARRETO HURTADO JUDY KATHERINE', '1', ''),
(90, '1110544525', 'RAMIREZ  ERIKA XIMENA', '1', ''),
(91, '1110446016', 'CAPERA AVILA JAIME ALBERTO', '1', ''),
(92, '1110477681', 'GARCIA HERRERA OMAR', '1', ''),
(93, '65782419', 'GARCIA ZABALA DIANA PATRICIA', '1', ''),
(94, '1110524910', 'ESPITIA GONZALEZ ELIANA MARCELA', '1', ''),
(95, '28551196', 'LONDOÑO NIETO DIANA CAROLINA', '1', ''),
(96, '1110521501', 'BURITICA VILLALOBOS LIGIA DEL PILAR', '1', ''),
(97, '1110548104', 'SANCHEZ PATIÑO EDWARD FABIAN', '1', ''),
(98, '1110517434', 'PEREZ DUARTE JUAN DAVID', '1', ''),
(99, '1110595957', 'RIVERA BLANCO LAURA STEFANYA', '1', ''),
(100, '1080292412', 'CORDOBA PASTRANA YULI BRIYID', '1', ''),
(101, '1110519449', 'SALGUERO ARANA ANDREA JULIETH', '1', ''),
(102, '14399092', 'MORENO MORENO GERMAN ALBERTO', '1', ''),
(103, '28538730', 'DUARTE URREGO IVON VIVIANA', '1', ''),
(104, '1053828984', 'TORRES RAMIREZ JUAN CAMILO', '1', ''),
(105, '1030578066', 'CARO ROMERO JOHANA MARCELA', '1', ''),
(106, '1110555222', 'PORTELA VALDES LUIS MIGUEL', '1', ''),
(107, '1110554714', 'RUIZ SALCEDO JEIMMY CRISTINA', '1', ''),
(108, '1110529517', 'ACOSTA LOPEZ OSCAR SAMUEL', '1', ''),
(109, '1106399217', 'BARON OME STEVEN', '1', ''),
(110, '1110453912', 'SANCHEZ GUTIERREZ SANDRA JIMENA', '1', ''),
(111, '1110455165', 'SUAREZ MEDINA HERWIN', '1', ''),
(112, '1110470122', 'PATARROYO QUINTANA CATALINA', '1', ''),
(113, '1110583029', 'CRUZ OCAMPO DANIELA', '1', ''),
(114, '1110546017', 'GARCIA CAICEDO ALEXANDRA', '1', ''),
(115, '1032356603', 'AREVALO  LEIDY PATRICIA', '1', ''),
(116, '1110598005', 'RODRIGUEZ SANTILLANA VICTORIA', '1', ''),
(117, '1110537356', 'ARGUELLES JIMENEZ BRAYAN SAMUEL', '1', ''),
(118, '1110554039', 'SOLORZANO HERNANDEZ KAREN DANIELA', '1', ''),
(119, '1007723387', 'OYOLA GUTIERREZ ALEXA YOHANA', '1', ''),
(120, '1110552151', 'ROCHA MENESES OSCAR HERNAN', '1', ''),
(121, '1110581683', 'BUITRAGO LOZANO DANIELO FERNANDO', '1', ''),
(122, '65753820', 'GUEVARA VILLA DIANA PATRICIA', '1', ''),
(123, '52262702', 'TRUJILLO AYERBE MILAGROS', '1', ''),
(124, '93125204', 'PRADA SAENZ JOSUE MANUEL', '1', ''),
(125, '79951443', 'PINZON MUÑOZ JESUS ANTONIO', '1', ''),
(126, '14233566', 'REYES ESPINOSA LUIS ALFONSO', '1', ''),
(127, '11316539', 'NOSSA OSPINA FREDY HERDY', '1', ''),
(128, '65697088', 'LUNA CARVAJAL JUDITH', '1', ''),
(129, '65645262', 'AYALA NUÑEZ LEIDY SOLANDA', '1', ''),
(130, '1105672243', 'ARIAS SANCHEZ ADAM CAMILO', '1', ''),
(131, '1070598193', 'CORZO BENAVIDEZ ANA MILENA', '1', ''),
(132, '1110521289', 'SUAZA CARDONA PAULA DANIELA', '1', ''),
(133, '1110470883', 'NUÑEZ CORTES IVAN ENRIQUE', '1', ''),
(134, '65814500', 'BURITICA IZQUIERDO LEANDRA', '1', ''),
(135, '65829904', 'TOTENA RODRIGUEZ SANDRA VERONICA', '1', ''),
(136, '1109264374', 'CANIZALES MORENO OSCAR ENRIQUE', '1', ''),
(137, '1106780017', 'GARCIA REINOSO YERSON DAVID', '1', ''),
(138, '1110458061', 'GUZMAN L ROBERTO ANTONIO', '1', ''),
(139, '1106779872', 'ARENAS CASTILLA PEDRO', '1', ''),
(140, '1106780248', 'SALGADO MORALES MONICA ALEXANDRA', '1', ''),
(141, '1106784472', 'RIOS ROMERO JHON HAROLD', '1', ''),
(142, '1106781363', 'SANCHEZ SANCHEZ FAISURY', '1', ''),
(143, '14012031', 'ACUÑA CESPEDES CARLOS ANDRES', '1', ''),
(144, '1106782342', 'CUELLAR MORENO WILMER ALDEMAR', '1', ''),
(145, '1106777629', 'TOVAR BRIÑEZ DORIS BEATRIZ', '1', ''),
(146, '52086473', 'RAMIREZ REYES SANDRA MILENA', '1', ''),
(147, '52315171', 'GARCIA CRUZ CLAUDIA LILIANA', '1', ''),
(148, '1070605481', 'JARAMILLO URQUIZA ESTEFANIA', '1', ''),
(149, '14251113', 'VIDAL LIEVANO LUIS ARNOLDO', '1', ''),
(150, '1110481094', 'PINZON PERALTA LEYDI KATHERINE', '1', ''),
(151, '27984844', 'BARBOSA GONZALEZ IRMA LAUDITH', '1', ''),
(152, '1017182797', 'MEJIA RODRIGUEZ KATHERINE LILIANA', '1', ''),
(153, '1024567033', 'DIAZ CARRILLO ELIANA YIRETH', '1', ''),
(154, '1069175030', 'SANCHEZ MARTINEZ ANGGIE JOHANA', '1', ''),
(155, '1070619930', 'OSPINA ARROYO ANDRES FELIPE', '1', ''),
(156, '1012371958', 'YAIR GONZALEZ', '1', ''),
(157, '28948857', 'RODRIGUEZ MENDOZA EDNA MARGARITA', '1', ''),
(158, '79959538', 'CORONADO MORENO FREDDY ANDREY', '0', ''),
(159, '79108219', 'GUILOMBO CAÑON HERNAN', '1', ''),
(160, '1100973339', 'JUAN SEBASTIAN SANDOVAL VARGAS', '1', ''),
(161, '123321', 'NOMBRE Y APELLIDO DE PRUEBA', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `clasificados`
--

CREATE TABLE `clasificados` (
  `clasificado_id` int(11) NOT NULL,
  `clasificado_octavos_a1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_a2` varchar(255) DEFAULT NULL,
  `clasificado_octavos_b1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_b2` varchar(255) DEFAULT NULL,
  `clasificado_octavos_c1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_c2` varchar(255) DEFAULT NULL,
  `clasificado_octavos_d1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_d2` varchar(255) DEFAULT NULL,
  `clasificado_octavos_e1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_e2` varchar(255) DEFAULT NULL,
  `clasificado_octavos_f1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_f2` varchar(255) DEFAULT NULL,
  `clasificado_octavos_g1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_g2` varchar(255) DEFAULT NULL,
  `clasificado_octavos_h1` varchar(255) DEFAULT NULL,
  `clasificado_octavos_h2` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e1` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e2` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e3` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e4` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e5` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e6` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e7` varchar(255) DEFAULT NULL,
  `clasificado_cuartos_e8` varchar(255) DEFAULT NULL,
  `clasificado_semis_e1` varchar(255) DEFAULT NULL,
  `clasificado_semis_e2` varchar(255) DEFAULT NULL,
  `clasificado_semis_e3` varchar(255) DEFAULT NULL,
  `clasificado_semis_e4` varchar(255) DEFAULT NULL,
  `clasificado_cuarto` varchar(255) DEFAULT NULL,
  `clasificado_tercero` varchar(255) DEFAULT NULL,
  `clasificado_subcampeon` varchar(255) DEFAULT NULL,
  `clasificado_campeon` varchar(255) DEFAULT NULL,
  `clasificado_jugador` varchar(255) DEFAULT NULL,
  `clasificado_valla` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `clasificados`
--

INSERT INTO `clasificados` (`clasificado_id`, `clasificado_octavos_a1`, `clasificado_octavos_a2`, `clasificado_octavos_b1`, `clasificado_octavos_b2`, `clasificado_octavos_c1`, `clasificado_octavos_c2`, `clasificado_octavos_d1`, `clasificado_octavos_d2`, `clasificado_octavos_e1`, `clasificado_octavos_e2`, `clasificado_octavos_f1`, `clasificado_octavos_f2`, `clasificado_octavos_g1`, `clasificado_octavos_g2`, `clasificado_octavos_h1`, `clasificado_octavos_h2`, `clasificado_cuartos_e1`, `clasificado_cuartos_e2`, `clasificado_cuartos_e3`, `clasificado_cuartos_e4`, `clasificado_cuartos_e5`, `clasificado_cuartos_e6`, `clasificado_cuartos_e7`, `clasificado_cuartos_e8`, `clasificado_semis_e1`, `clasificado_semis_e2`, `clasificado_semis_e3`, `clasificado_semis_e4`, `clasificado_cuarto`, `clasificado_tercero`, `clasificado_subcampeon`, `clasificado_campeon`, `clasificado_jugador`, `clasificado_valla`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '14', '1', '', '15', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `configuracion`
--

CREATE TABLE `configuracion` (
  `config_id` int(11) NOT NULL,
  `config_valorcuota` varchar(255) DEFAULT NULL,
  `config_interes` varchar(255) DEFAULT NULL,
  `config_horasminimo` varchar(2) DEFAULT NULL,
  `config_gruposmarcador` varchar(255) DEFAULT NULL,
  `config_gruposequipo` varchar(255) DEFAULT NULL,
  `config_gruposempate` varchar(255) DEFAULT NULL,
  `config_1puestooctavos` varchar(255) DEFAULT NULL,
  `config_2puestooctavos` varchar(255) DEFAULT NULL,
  `config_octavosmarcador` varchar(255) DEFAULT NULL,
  `config_octavosequipo` varchar(255) DEFAULT NULL,
  `config_cuartosclasificado` varchar(255) DEFAULT NULL,
  `config_cuartosmarcador` varchar(255) DEFAULT NULL,
  `config_cuartosganador` varchar(255) DEFAULT NULL,
  `config_semisclasificado` varchar(255) DEFAULT NULL,
  `config_semismarcador` varchar(255) DEFAULT NULL,
  `config_semisequipo` varchar(255) DEFAULT NULL,
  `config_finalesmarcadores` varchar(255) DEFAULT NULL,
  `config_campeon` varchar(255) DEFAULT NULL,
  `config_subcampeon` varchar(255) DEFAULT NULL,
  `config_tercero` varchar(255) DEFAULT NULL,
  `config_cuarto` varchar(255) DEFAULT NULL,
  `config_goleador` varchar(255) DEFAULT NULL,
  `config_valla` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `configuracion`
--

INSERT INTO `configuracion` (`config_id`, `config_valorcuota`, `config_interes`, `config_horasminimo`, `config_gruposmarcador`, `config_gruposequipo`, `config_gruposempate`, `config_1puestooctavos`, `config_2puestooctavos`, `config_octavosmarcador`, `config_octavosequipo`, `config_cuartosclasificado`, `config_cuartosmarcador`, `config_cuartosganador`, `config_semisclasificado`, `config_semismarcador`, `config_semisequipo`, `config_finalesmarcadores`, `config_campeon`, `config_subcampeon`, `config_tercero`, `config_cuarto`, `config_goleador`, `config_valla`) VALUES
(1, '50719', '1.14', '3', '150', '20', '10', '100', '10', '200', '30', '150', '200', '30', '150', '250', '40', '300', '500', '250', '200', '50', '150', '150');

-- --------------------------------------------------------

--
-- Table structure for table `contenido`
--

CREATE TABLE `contenido` (
  `contenido_id` int(11) NOT NULL,
  `contenido_seccion` int(11) DEFAULT NULL,
  `contenido_tipo` int(11) DEFAULT NULL,
  `contenido_padre` int(11) DEFAULT NULL,
  `contenido_columna_alineacion` int(11) DEFAULT NULL,
  `contenido_columna` varchar(255) DEFAULT NULL,
  `contenido_columna_espacios` int(11) DEFAULT NULL,
  `contenido_disenio` int(11) DEFAULT NULL,
  `contenido_borde` int(11) DEFAULT NULL,
  `contenido_estado` int(11) DEFAULT NULL,
  `contenido_fecha` date DEFAULT NULL,
  `contenido_titulo` varchar(500) DEFAULT NULL,
  `contenido_titulo_ver` int(11) DEFAULT NULL,
  `contenido_imagen` varchar(500) DEFAULT NULL,
  `contenido_archivo` varchar(255) DEFAULT NULL,
  `contenido_fondo_imagen` varchar(50) DEFAULT NULL,
  `contenido_fondo_imagen_tipo` int(11) DEFAULT NULL,
  `contenido_fondo_color` varchar(100) DEFAULT NULL,
  `contenido_introduccion` text DEFAULT NULL,
  `contenido_descripcion` text DEFAULT NULL,
  `contenido_enlace` varchar(500) DEFAULT NULL,
  `contenido_enlace_abrir` int(11) DEFAULT NULL,
  `contenido_vermas` varchar(100) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contenido`
--

INSERT INTO `contenido` (`contenido_id`, `contenido_seccion`, `contenido_tipo`, `contenido_padre`, `contenido_columna_alineacion`, `contenido_columna`, `contenido_columna_espacios`, `contenido_disenio`, `contenido_borde`, `contenido_estado`, `contenido_fecha`, `contenido_titulo`, `contenido_titulo_ver`, `contenido_imagen`, `contenido_archivo`, `contenido_fondo_imagen`, `contenido_fondo_imagen_tipo`, `contenido_fondo_color`, `contenido_introduccion`, `contenido_descripcion`, `contenido_enlace`, `contenido_enlace_abrir`, `contenido_vermas`, `orden`) VALUES
(1, 4, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Terminos', 1, 'ico-terminos1.png', '', '', 0, '', '', '<p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"no_cel\">\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<div class=\"si_cel\">\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', '', 0, '', 1),
(2, 3, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Premios', 1, 'ico-premios2.png', '', '', 0, '', '', '<div class=\"container\">\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Premios por Inscripci&oacute;n</p>\r\n<p style=\"text-align: center;\">Podr&aacute; participar en el sorteo de&nbsp; TV, Camisetas de la selecci&oacute;n, Balones, cajas de l&aacute;minas PANINI &nbsp;solo por inscribirse.</p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Se realizaran 2 sorteos:</p>\r\n<ul style=\"text-align: center;\">\r\n<li>30 de abril y 30 de mayo<br><br></li>\r\n</ul>\r\n<p class=\"no_cel\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" src=\"../../upload/Banner-.jpg\" alt=\"Banner\"></p>\r\n<p class=\"si_cel\" style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\">Premiaci&oacute;n final</p>\r\n<p style=\"text-align: center;\">Es la premiaci&oacute;n final a las personas que mayor n&uacute;mero de puntos haya acumulado a lo largo de su participaci&oacute;n en la polla mundialista.<br><br></p>\r\n</div>\r\n<p class=\"no_cel\"><img class=\"n1ed--selected\" style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/Premios.jpg\" alt=\"Premios\"></p>\r\n<p class=\"si_cel\">&nbsp;</p>', '', 0, '', 2),
(3, 7, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Partidos', 1, 'partidos1.png', '', '', 0, '', '', '', '', 0, '', 3),
(4, 5, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Grupos', 1, 'grupos1.png', '', '', 0, '', '', '', '', 0, '', 4),
(5, 6, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'ClasficaciÃ³n', 1, 'ico-clasificacion1.png', '', '', 0, '', '', '', '', 0, '', 5),
(6, 8, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Jugar Polla', 1, '', '', '', 0, '', '', '', '', 0, '', 6),
(7, 9, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Octavos', 1, '', '', '', 0, '', '', '', '', 0, '', 7),
(8, 10, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Cuartos', 1, '', '', '', 0, '', '', '', '', 0, '', 8),
(9, 10, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Cuartos', 1, '', '', '', 0, '', '', '', '', 0, '', 9),
(10, 11, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Semifinal', 1, '', '', '', 0, '', '', '', '', 0, '', 10),
(11, 12, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Final', 1, '', '', '', 0, '', '', '', '', 0, '', 11),
(12, 13, 3, 0, 0, '', 0, 0, 0, 1, '2024-05-15', 'Otros', 1, '', '', '', 0, '', '', '', '', 0, '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `cuartos`
--

CREATE TABLE `cuartos` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `e1` varchar(11) DEFAULT NULL,
  `e2` varchar(11) DEFAULT NULL,
  `e3` varchar(11) DEFAULT NULL,
  `e4` varchar(11) DEFAULT NULL,
  `e5` varchar(11) DEFAULT NULL,
  `e6` varchar(11) DEFAULT NULL,
  `e7` varchar(11) DEFAULT NULL,
  `e8` varchar(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cuartos`
--

INSERT INTO `cuartos` (`id`, `usuario`, `e1`, `e2`, `e3`, `e4`, `e5`, `e6`, `e7`, `e8`, `fecha`) VALUES
(2, 1, '1', '14', '', '', '', '', '', '', '2024-05-20 12:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `enlaces`
--

CREATE TABLE `enlaces` (
  `enlaces_id` int(11) NOT NULL,
  `enlaces_titulo` varchar(255) DEFAULT NULL,
  `enlaces_link` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(4) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `bandera` varchar(200) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `pj` int(11) DEFAULT NULL,
  `pg` int(11) DEFAULT NULL,
  `pe` int(11) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `gf` int(11) DEFAULT NULL,
  `gc` int(11) DEFAULT NULL,
  `gd` int(11) DEFAULT NULL,
  `fp` int(11) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `equipos`
--

INSERT INTO `equipos` (`id`, `codigo`, `nombre`, `bandera`, `grupo`, `orden`, `pj`, `pg`, `pe`, `pp`, `gf`, `gc`, `gd`, `fp`, `puntos`) VALUES
(1, 'ARG', 'ARGENTINA', 'obxjg3rq-nbwcl0de1.png', 1, 1, 1, 0, 1, 0, 2, 2, 0, 0, 1),
(2, 'PER', 'PER&Uacute;', 'um9j2zt0-6azroxfp1.png', 1, 2, 1, 0, 1, 0, 2, 2, 0, 0, 1),
(3, 'CND', 'CANAD&Aacute;', 'bymi0wan-eqlgvn18.png', 1, 3, 1, 0, 1, 0, 2, 2, 0, 0, 1),
(4, 'CHL', 'CHILE', '6v3sirme-dyps3tqd.png', 1, 4, 1, 0, 1, 0, 2, 2, 0, 0, 1),
(5, 'ECU', 'ECUADOR', 'nun1o8jc-ipf97vq3.png', 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'VNZ', 'VENEZUELA', '6esamvs0-jclzerll.png', 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'JMC', 'JAMAICA', 'jamaica.png', 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'MXC', 'M&Eacute;XICO', 'hv6zuupq-ipf97vq3.png', 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'BOL', 'BOLIVIA', 'ewviltht-ik5zg8xj.png', 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'URU', 'URUGUAY', 'pvtmslht-wdz4jmrq.png', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'USA', 'EE. UU.', 'xfxmid8k-mpdhokt3.png', 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'PNM', 'PANAM&Aacute;', 'wyjftaa6-6yxdoua1.png', 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'PRG', 'PARAGUAY', 'omtyzru0-amy8ktbk.png', 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'COL', 'COLOMBIA', 'y70axoth-c6kvdo5f.png', 4, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'BRA', 'BRASIL', 's4kz1kjc-88latdnt.png', 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'CTR', 'COSTA RICA', 'wyjftaa6-6yxdoua1.png', 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fases`
--

CREATE TABLE `fases` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `fecha1` datetime DEFAULT NULL,
  `fecha2` datetime DEFAULT NULL,
  `enlace` varchar(255) DEFAULT NULL,
  `nombreenlace` varchar(255) DEFAULT NULL,
  `estado` int(5) DEFAULT NULL,
  `orden` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fases`
--

INSERT INTO `fases` (`id`, `titulo`, `fecha1`, `fecha2`, `enlace`, `nombreenlace`, `estado`, `orden`) VALUES
(1, 'FASE 1', NULL, NULL, '', 'Fase 1', 1, 1),
(2, 'Octavos de final', NULL, NULL, 'octavos', 'Octavos', 0, 2),
(3, 'Cuartos de final', '2024-05-26 12:00:00', '2024-05-28 12:00:00', 'cuartos', 'Cuartos', 1, 3),
(4, 'Semifinales', '2024-05-26 10:45:00', '2024-05-27 10:45:00', 'semifinal', 'Semis', 1, 4),
(5, 'Final', NULL, NULL, 'final', 'Final', 1, 5),
(6, 'otros', NULL, NULL, 'otros', 'Otros', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `final`
--

CREATE TABLE `final` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `campeon` varchar(11) DEFAULT NULL,
  `subcampeon` varchar(11) DEFAULT NULL,
  `tercero` varchar(11) DEFAULT NULL,
  `cuarto` varchar(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grupos`
--

INSERT INTO `grupos` (`id`, `nombre`, `orden`) VALUES
(1, 'Grupo A', 1),
(2, 'Grupo B', 2),
(3, 'Grupo C', 3),
(4, 'Grupo D', 4);

-- --------------------------------------------------------

--
-- Table structure for table `info_pagina`
--

CREATE TABLE `info_pagina` (
  `info_pagina_id` bigint(20) NOT NULL,
  `info_pagina_facebook` varchar(255) DEFAULT NULL,
  `info_pagina_instagram` varchar(255) DEFAULT NULL,
  `info_pagina_twitter` varchar(255) DEFAULT NULL,
  `info_pagina_pinterest` varchar(255) DEFAULT NULL,
  `info_pagina_youtube` varchar(255) DEFAULT NULL,
  `info_pagina_flickr` varchar(255) DEFAULT NULL,
  `info_pagina_linkedin` varchar(255) DEFAULT NULL,
  `info_pagina_google` varchar(255) DEFAULT NULL,
  `info_pagina_telefono` varchar(255) DEFAULT NULL,
  `info_pagina_whatsapp` varchar(255) DEFAULT NULL,
  `info_pagina_correos_contacto` varchar(255) DEFAULT NULL,
  `info_pagina_direccion_contacto` text DEFAULT NULL,
  `info_pagina_informacion_contacto` text DEFAULT NULL,
  `info_pagina_informacion_contacto_footer` text DEFAULT NULL,
  `info_pagina_latitud` varchar(255) DEFAULT NULL,
  `info_pagina_longitud` varchar(255) DEFAULT NULL,
  `info_pagina_zoom` varchar(255) DEFAULT NULL,
  `info_pagina_descripcion` text DEFAULT NULL,
  `info_pagina_tags` text DEFAULT NULL,
  `info_pagina_robot` varchar(500) DEFAULT NULL,
  `info_pagina_sitemap` varchar(500) DEFAULT NULL,
  `info_pagina_scripts` text DEFAULT NULL,
  `info_pagina_metricas` text DEFAULT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `info_pagina_host` varchar(200) NOT NULL,
  `info_pagina_port` int(11) NOT NULL,
  `info_pagina_username` varchar(200) NOT NULL,
  `info_pagina_password` varchar(200) NOT NULL,
  `info_pagina_correo_remitente` varchar(200) NOT NULL,
  `info_pagina_nombre_remitente` varchar(200) NOT NULL,
  `info_pagina_correo_oculto` varchar(200) NOT NULL,
  `info_pagina_titulo_legal` varchar(200) NOT NULL,
  `info_pagina_descripcion_legal` longtext NOT NULL,
  `info_pagina_favicon` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `info_pagina`
--

INSERT INTO `info_pagina` (`info_pagina_id`, `info_pagina_facebook`, `info_pagina_instagram`, `info_pagina_twitter`, `info_pagina_pinterest`, `info_pagina_youtube`, `info_pagina_flickr`, `info_pagina_linkedin`, `info_pagina_google`, `info_pagina_telefono`, `info_pagina_whatsapp`, `info_pagina_correos_contacto`, `info_pagina_direccion_contacto`, `info_pagina_informacion_contacto`, `info_pagina_informacion_contacto_footer`, `info_pagina_latitud`, `info_pagina_longitud`, `info_pagina_zoom`, `info_pagina_descripcion`, `info_pagina_tags`, `info_pagina_robot`, `info_pagina_sitemap`, `info_pagina_scripts`, `info_pagina_metricas`, `orden`, `info_pagina_host`, `info_pagina_port`, `info_pagina_username`, `info_pagina_password`, `info_pagina_correo_remitente`, `info_pagina_nombre_remitente`, `info_pagina_correo_oculto`, `info_pagina_titulo_legal`, `info_pagina_descripcion_legal`, `info_pagina_favicon`) VALUES
(1, 'https://www.facebook.com/FOEBBVACol/?locale=es_LA', '', 'https://twitter.com/foebbva', '', '', '', '', '', 'PBX: (57) (1) 327 53 00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 1, '1', '1', '1', '1', '1', '', '', 'logoarbol2.png');

-- --------------------------------------------------------

--
-- Table structure for table `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `equipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `tipo`, `equipo`) VALUES
(1, 'GUZMAN Nahuel', 2, 'Argentina'),
(2, 'MERCADO Gabriel', 1, 'Argentina'),
(3, 'TAGLIAFICO Nicolas', 1, 'Argentina'),
(4, 'ANSALDI Cristian', 1, 'Argentina'),
(5, 'BIGLIA Lucas', 1, 'Argentina'),
(6, 'FAZIO Federico', 1, 'Argentina'),
(7, 'BANEGA Ever', 1, 'Argentina'),
(8, 'ACUNA Marcos', 1, 'Argentina'),
(9, 'HIGUAIN Gonzalo', 1, 'Argentina'),
(10, 'MESSI Lionel', 1, 'Argentina'),
(11, 'DI MARIA Angel', 1, 'Argentina'),
(12, 'ARMANI Franco', 2, 'Argentina'),
(13, 'MEZA Maximiliano', 1, 'Argentina'),
(14, 'MASCHERANO Javier', 1, 'Argentina'),
(15, 'LANZINI Manuel', 1, 'Argentina'),
(16, 'ROJO Marcos', 1, 'Argentina'),
(17, 'OTAMENDI Nicolas', 1, 'Argentina'),
(18, 'SALVIO Eduardo', 1, 'Argentina'),
(19, 'AGUERO Sergio', 1, 'Argentina'),
(20, 'LO CELSO Giovani', 1, 'Argentina'),
(21, 'DYBALA Paulo', 1, 'Argentina'),
(22, 'PAVON Cristian', 1, 'Argentina'),
(23, 'CABALLERO Wilfredo', 2, 'Argentina'),
(24, 'RYAN Mathew', 2, 'Australia'),
(25, 'DEGENEK Milos', 1, 'Australia'),
(26, 'MEREDITH James', 1, 'Australia'),
(27, 'CAHILL Tim', 1, 'Australia'),
(28, 'MILLIGAN Mark', 1, 'Australia'),
(29, 'JURMAN Matthew', 1, 'Australia'),
(30, 'LECKIE Mathew', 1, 'Australia'),
(31, 'LUONGO Massimo', 1, 'Australia'),
(32, 'JURIC Tomi', 1, 'Australia'),
(33, 'KRUSE Robbie', 1, 'Australia'),
(34, 'NABBOUT Andrew', 1, 'Australia'),
(35, 'JONES Brad', 2, 'Australia'),
(36, 'MOOY Aaron', 1, 'Australia'),
(37, 'MacLAREN Jamie', 1, 'Australia'),
(38, 'JEDINAK Mile', 1, 'Australia'),
(39, 'BEHICH Aziz', 1, 'Australia'),
(40, 'ARZANI Daniel', 1, 'Australia'),
(41, 'VUKOVIC Danny', 2, 'Australia'),
(42, 'RISDON Joshua', 1, 'Australia'),
(43, 'SAINSBURY Trent', 1, 'Australia'),
(44, 'PETRATOS Dimitrios', 1, 'Australia'),
(45, 'IRVINE Jackson', 1, 'Australia'),
(46, 'ROGIC Tom', 1, 'Australia'),
(47, 'COURTOIS Thibaut', 2, 'Belgica'),
(48, 'ALDERWEIRELD Toby', 1, 'Belgica'),
(49, 'VERMAELEN Thomas', 1, 'Belgica'),
(50, 'KOMPANY Vincent', 1, 'Belgica'),
(51, 'VERTONGHEN Jan', 1, 'Belgica'),
(52, 'WITSEL Axel', 1, 'Belgica'),
(53, 'DE BRUYNE Kevin', 1, 'Belgica'),
(54, 'FELLAINI Marouane', 1, 'Belgica'),
(55, 'LUKAKU Romelu', 1, 'Belgica'),
(56, 'HAZARD Eden', 1, 'Belgica'),
(57, 'CARRASCO Yannick', 1, 'Belgica'),
(58, 'MIGNOLET Simon', 2, 'Belgica'),
(59, 'CASTEELS Koen', 2, 'Belgica'),
(60, 'MERTENS Dries', 1, 'Belgica'),
(61, 'MEUNIER Thomas', 1, 'Belgica'),
(62, 'HAZARD Thorgan', 1, 'Belgica'),
(63, 'TIELEMANS Youri', 1, 'Belgica'),
(64, 'JANUZAJ Adnan', 1, 'Belgica'),
(65, 'DEMBELE Moussa', 1, 'Belgica'),
(66, 'BOYATA Dedryck', 1, 'Belgica'),
(67, 'BATSHUAYI Michy', 1, 'Belgica'),
(68, 'CHADLI Nacer', 1, 'Belgica'),
(69, 'DENDONCKER Leander', 1, 'Belgica'),
(70, 'ALISSON', 2, 'Brasil'),
(71, 'THIAGO SILVA', 1, 'Brasil'),
(72, 'MIRANDA', 1, 'Brasil'),
(73, 'PEDRO GEROMEL', 1, 'Brasil'),
(74, 'CASEMIRO', 1, 'Brasil'),
(75, 'FILIPE LUIS', 1, 'Brasil'),
(76, 'DOUGLAS COSTA', 1, 'Brasil'),
(77, 'RENATO AUGUSTO', 1, 'Brasil'),
(78, 'GABRIEL JESUS', 1, 'Brasil'),
(79, 'NEYMAR', 1, 'Brasil'),
(80, 'PHILIPPE COUTINHO', 1, 'Brasil'),
(81, 'MARCELO', 1, 'Brasil'),
(82, 'MARQUINHOS', 1, 'Brasil'),
(83, 'DANILO', 1, 'Brasil'),
(84, 'PAULINHO', 1, 'Brasil'),
(85, 'CASSIO', 2, 'Brasil'),
(86, 'FERNANDINHO', 1, 'Brasil'),
(87, 'FRED', 1, 'Brasil'),
(88, 'WILLIAN', 1, 'Brasil'),
(89, 'ROBERTO FIRMINO', 1, 'Brasil'),
(90, 'TAISON', 1, 'Brasil'),
(91, 'FAGNER', 1, 'Brasil'),
(92, 'EDERSON', 2, 'Brasil'),
(93, 'OSPINA David', 2, 'Colombia'),
(94, 'ZAPATA Cristian', 1, 'Colombia'),
(95, 'MURILLO Oscar', 1, 'Colombia'),
(96, 'ARIAS Santiago', 1, 'Colombia'),
(97, 'BARRIOS  Wilmar', 1, 'Colombia'),
(98, 'SANCHEZ Carlos', 1, 'Colombia'),
(99, 'BACCA Carlos', 1, 'Colombia'),
(100, 'AGUILAR Abel', 1, 'Colombia'),
(101, 'FALCAO Radamel', 1, 'Colombia'),
(102, 'RODRIGUEZ James', 1, 'Colombia'),
(103, 'CUADRADO Juan', 1, 'Colombia'),
(104, 'VARGAS Camilo', 2, 'Colombia'),
(105, 'MINA Yerry', 1, 'Colombia'),
(106, 'MURIEL Luis', 1, 'Colombia'),
(107, 'URIBE Mateus', 1, 'Colombia'),
(108, 'LERMA Jefferson', 1, 'Colombia'),
(109, 'MOJICA Johan', 1, 'Colombia'),
(110, 'FABRA Frank', 1, 'Colombia'),
(111, 'BORJA Miguel', 1, 'Colombia'),
(112, 'QUINTERO Juan', 1, 'Colombia'),
(113, 'IZQUIERDO Jose', 1, 'Colombia'),
(114, 'CUADRADO Jose', 2, 'Colombia'),
(115, 'SANCHEZ Davinson', 1, 'Colombia'),
(116, 'NAVAS Keylor', 2, 'Costa Rica'),
(117, 'ACOSTA Johnny', 1, 'Costa Rica'),
(118, 'GONZALEZ Giancarlo', 1, 'Costa Rica'),
(119, 'SMITH Ian', 1, 'Costa Rica'),
(120, 'BORGES Celso', 1, 'Costa Rica'),
(121, 'DUARTE Oscar', 1, 'Costa Rica'),
(122, 'BOLANOS Christian', 1, 'Costa Rica'),
(123, 'OVIEDO Bryan', 1, 'Costa Rica'),
(124, 'COLINDRES Daniel', 1, 'Costa Rica'),
(125, 'RUIZ Bryan', 1, 'Costa Rica'),
(126, 'VENEGAS Johan', 1, 'Costa Rica'),
(127, 'CAMPBELL Joel', 1, 'Costa Rica'),
(128, 'WALLACE Rodney', 1, 'Costa Rica'),
(129, 'AZOFEIFA Randall', 1, 'Costa Rica'),
(130, 'CALVO Francisco', 1, 'Costa Rica'),
(131, 'GAMBOA Cristian', 1, 'Costa Rica'),
(132, 'TEJEDA Yeltsin', 1, 'Costa Rica'),
(133, 'PEMBERTON Patrick', 2, 'Costa Rica'),
(134, 'WASTON Kendall', 1, 'Costa Rica'),
(135, 'GUZMAN David', 1, 'Costa Rica'),
(136, 'URENA Marcos', 1, 'Costa Rica'),
(137, 'MATARRITA Ronald', 1, 'Costa Rica'),
(138, 'MOREIRA Leonel', 2, 'Costa Rica'),
(139, 'LIVAKOVIC Dominik', 2, 'Croacia'),
(140, 'VRSALJKO Sime', 1, 'Croacia'),
(141, 'STRINIC Ivan', 1, 'Croacia'),
(142, 'PERISIC Ivan', 1, 'Croacia'),
(143, 'CORLUKA Vedran', 1, 'Croacia'),
(144, 'LOVREN Dejan', 1, 'Croacia'),
(145, 'RAKITIC Ivan', 1, 'Croacia'),
(146, 'KOVACIC Mateo', 1, 'Croacia'),
(147, 'KRAMARIC Andrej', 1, 'Croacia'),
(148, 'MODRIC Luka', 1, 'Croacia'),
(149, 'BROZOVIC Marcelo', 1, 'Croacia'),
(150, 'KALINIC Lovre', 2, 'Croacia'),
(151, 'JEDVAJ Tin', 1, 'Croacia'),
(152, 'BRADARIC Filip', 1, 'Croacia'),
(153, 'CALETA-CAR Duje', 1, 'Croacia'),
(154, 'KALINIC Nikola', 1, 'Croacia'),
(155, 'MANDZUKIC Mario', 1, 'Croacia'),
(156, 'REBIC Ante', 1, 'Croacia'),
(157, 'BADELJ Milan', 1, 'Croacia'),
(158, 'PJACA Marko', 1, 'Croacia'),
(159, 'VIDA Domagoj', 1, 'Croacia'),
(160, 'PIVARIC Josip', 1, 'Croacia'),
(161, 'SUBASIC Danijel', 2, 'Croacia'),
(162, 'SCHMEICHEL Kasper', 2, 'Dinamarca'),
(163, 'KROHN-DEHLI Michael', 1, 'Dinamarca'),
(164, 'VESTERGAARD Jannik', 1, 'Dinamarca'),
(165, 'KJAER Simon', 1, 'Dinamarca'),
(166, 'KNUDSEN Jonas', 1, 'Dinamarca'),
(167, 'CHRISTENSEN Andreas', 1, 'Dinamarca'),
(168, 'KVIST William', 1, 'Dinamarca'),
(169, 'DELANEY Thomas', 1, 'Dinamarca'),
(170, 'JORGENSEN Nicolai', 1, 'Dinamarca'),
(171, 'ERIKSEN Christian', 1, 'Dinamarca'),
(172, 'BRAITHWAITE Martin', 1, 'Dinamarca'),
(173, 'DOLBERG Kasper', 1, 'Dinamarca'),
(174, 'JORGENSEN Mathias', 1, 'Dinamarca'),
(175, 'DALSGAARD Henrik', 1, 'Dinamarca'),
(176, 'FISCHER Viktor', 1, 'Dinamarca'),
(177, 'LOSSL Jonas', 2, 'Dinamarca'),
(178, 'STRYGER LARSEN Jens', 1, 'Dinamarca'),
(179, 'LERAGER Lukas', 1, 'Dinamarca'),
(180, 'SCHONE Lasse', 1, 'Dinamarca'),
(181, 'POULSEN Yussuf Yurary', 1, 'Dinamarca'),
(182, 'CORNELIUS Andreas', 1, 'Dinamarca'),
(183, 'RONNOW Frederik', 2, 'Dinamarca'),
(184, 'SISTO Pione', 1, 'Dinamarca'),
(185, 'ESSAM EL HADARY', 2, 'Egipto'),
(186, 'ALI GABR', 1, 'Egipto'),
(187, 'AHMED ELMOHAMADY', 1, 'Egipto'),
(188, 'OMAR GABER', 1, 'Egipto'),
(189, 'SAM MORSY', 1, 'Egipto'),
(190, 'AHMED HEGAZY', 1, 'Egipto'),
(191, 'AHMED FATHI', 1, 'Egipto'),
(192, 'TAREK HAMED', 1, 'Egipto'),
(193, 'MARWAN MOHSEN', 1, 'Egipto'),
(194, 'MOHAMED SALAH', 1, 'Egipto'),
(195, 'KAHRABA', 1, 'Egipto'),
(196, 'AYMAN ASHRAF', 1, 'Egipto'),
(197, 'MOHAMED ABDELSHAFY', 1, 'Egipto'),
(198, 'RAMADAN SOBHY', 1, 'Egipto'),
(199, 'MAHMOUD HAMDY', 1, 'Egipto'),
(200, 'SHERIF EKRAMY', 2, 'Egipto'),
(201, 'MOHAMED ELNENY', 1, 'Egipto'),
(202, 'SHIKABALA', 1, 'Egipto'),
(203, 'ABDALLA SAID', 1, 'Egipto'),
(204, 'SAMIR SAAD', 1, 'Egipto'),
(205, 'TREZEGUET', 1, 'Egipto'),
(206, 'AMR WARDA', 1, 'Egipto'),
(207, 'MOHAMED ELSHENAWY', 2, 'Egipto'),
(208, 'PICKFORD Jordan', 2, 'Inglaterra'),
(209, 'WALKER Kyle', 1, 'Inglaterra'),
(210, 'ROSE Danny', 1, 'Inglaterra'),
(211, 'DIER Eric', 1, 'Inglaterra'),
(212, 'STONES John', 1, 'Inglaterra'),
(213, 'MAGUIRE Harry', 1, 'Inglaterra'),
(214, 'LINGARD Jesse', 1, 'Inglaterra'),
(215, 'HENDERSON Jordan', 1, 'Inglaterra'),
(216, 'KANE Harry', 1, 'Inglaterra'),
(217, 'STERLING Raheem', 1, 'Inglaterra'),
(218, 'VARDY Jamie', 1, 'Inglaterra'),
(219, 'TRIPPIER Kieran', 1, 'Inglaterra'),
(220, 'BUTLAND Jack', 2, 'Inglaterra'),
(221, 'WELBECK Danny', 1, 'Inglaterra'),
(222, 'CAHILL Gary', 1, 'Inglaterra'),
(223, 'JONES Phil', 1, 'Inglaterra'),
(224, 'DELPH Fabian', 1, 'Inglaterra'),
(225, 'YOUNG Ashley', 1, 'Inglaterra'),
(226, 'RASHFORD Marcus', 1, 'Inglaterra'),
(227, 'ALLI Dele', 1, 'Inglaterra'),
(228, 'LOFTUS-CHEEK Ruben', 1, 'Inglaterra'),
(229, 'ALEXANDER-ARNOLD Trent', 1, 'Inglaterra'),
(230, 'POPE Nick', 2, 'Inglaterra'),
(231, 'LLORIS Hugo', 2, 'Francia'),
(232, 'PAVARD Benjamin', 1, 'Francia'),
(233, 'KIMPEMBE Presnel', 1, 'Francia'),
(234, 'VARANE Raphael', 1, 'Francia'),
(235, 'UMTITI Samuel', 1, 'Francia'),
(236, 'POGBA Paul', 1, 'Francia'),
(237, 'GRIEZMANN Antoine', 1, 'Francia'),
(238, 'LEMAR Thomas', 1, 'Francia'),
(239, 'GIROUD Olivier', 1, 'Francia'),
(240, 'MBAPPE Kylian', 1, 'Francia'),
(241, 'DEMBELE Ousmane', 1, 'Francia'),
(242, 'TOLISSO Corentin', 1, 'Francia'),
(243, 'KANTE Ngolo', 1, 'Francia'),
(244, 'MATUIDI Blaise', 1, 'Francia'),
(245, 'NZONZI Steven', 1, 'Francia'),
(246, 'MANDANDA Steve', 2, 'Francia'),
(247, 'RAMI Adil', 1, 'Francia'),
(248, 'FEKIR Nabil', 1, 'Francia'),
(249, 'SIDIBE Djibril', 1, 'Francia'),
(250, 'THAUVIN Florian', 1, 'Francia'),
(251, 'HERNANDEZ Lucas', 1, 'Francia'),
(252, 'MENDY Benjamin', 1, 'Francia'),
(253, 'AREOLA Alphonse', 2, 'Francia'),
(254, 'NEUER Manuel', 2, 'Alemania'),
(255, 'PLATTENHARDT Marvin', 1, 'Alemania'),
(256, 'HECTOR Jonas', 1, 'Alemania'),
(257, 'GINTER Matthias', 1, 'Alemania'),
(258, 'HUMMELS Mats', 1, 'Alemania'),
(259, 'KHEDIRA Sami', 1, 'Alemania'),
(260, 'DRAXLER Julian', 1, 'Alemania'),
(261, 'KROOS Toni', 1, 'Alemania'),
(262, 'WERNER Timo', 1, 'Alemania'),
(263, 'OEZIL Mesut', 1, 'Alemania'),
(264, 'REUS Marco', 1, 'Alemania'),
(265, 'TRAPP Kevin', 2, 'Alemania'),
(266, 'MUELLER Thomas', 1, 'Alemania'),
(267, 'GORETZKA Leon', 1, 'Alemania'),
(268, 'SUELE Niklas', 1, 'Alemania'),
(269, 'RUEDIGER Antonio', 1, 'Alemania'),
(270, 'BOATENG Jerome', 1, 'Alemania'),
(271, 'KIMMICH Joshua', 1, 'Alemania'),
(272, 'RUDY Sebastian', 1, 'Alemania'),
(273, 'BRANDT Julian', 1, 'Alemania'),
(274, 'GUENDOGAN Ilkay', 1, 'Alemania'),
(275, 'TER STEGEN Marc-Andre', 2, 'Alemania'),
(276, 'GOMEZ Mario', 1, 'Alemania'),
(277, 'HALLDORSSON Hannes', 2, 'Islandia'),
(278, 'SAEVARSSON Birkir', 1, 'Islandia'),
(279, 'FRIDJONSSON Samuel', 1, 'Islandia'),
(280, 'GUDMUNDSSON Albert', 1, 'Islandia'),
(281, 'INGASON Sverrir', 1, 'Islandia'),
(282, 'SIGURDSSON Ragnar', 1, 'Islandia'),
(283, 'GUDMUNDSSON Johann', 1, 'Islandia'),
(284, 'BJARNASON Birkir', 1, 'Islandia'),
(285, 'SIGURDARSON Bjorn', 1, 'Islandia'),
(286, 'SIGURDSSON Gylfi', 1, 'Islandia'),
(287, 'FINNBOGASON Alfred', 1, 'Islandia'),
(288, 'SCHRAM Frederik', 2, 'Islandia'),
(289, 'RUNARSSON Runar', 2, 'Islandia'),
(290, 'ARNASON Kari', 1, 'Islandia'),
(291, 'EYJOLFSSON Holmar', 1, 'Islandia'),
(292, 'SKULASON Olafur', 1, 'Islandia'),
(293, 'GUNNARSSON Aron', 1, 'Islandia'),
(294, 'MAGNUSSON Hordur', 1, 'Islandia'),
(295, 'GISLASON Rurik', 1, 'Islandia'),
(296, 'HALLFREDSSON Emil', 1, 'Islandia'),
(297, 'TRAUSTASON Arnor', 1, 'Islandia'),
(298, 'BODVARSSON Jon', 1, 'Islandia'),
(299, 'SKULASON Ari', 1, 'Islandia'),
(300, 'BEIRANVAND Ali', 2, 'Iran'),
(301, 'TORABI Mehdi', 1, 'Iran'),
(302, 'HAJI SAFI Ehsan', 1, 'Iran'),
(303, 'CHESHMI Roozbeh', 1, 'Iran'),
(304, 'MOHAMMADI Milad', 1, 'Iran'),
(305, 'EZATOLAHI Saeid', 1, 'Iran'),
(306, 'SHOJAEI Masoud', 1, 'Iran'),
(307, 'POURALIGANJI Morteza', 1, 'Iran'),
(308, 'EBRAHIMI Omid', 1, 'Iran'),
(309, 'ANSARIFARD Karim', 1, 'Iran'),
(310, 'AMIRI Vahid', 1, 'Iran'),
(311, 'MAZAHERI Rashid', 2, 'Iran'),
(312, 'KHANZADEH Mohammad Reza', 1, 'Iran'),
(313, 'GHODDOS  Saman', 1, 'Iran'),
(314, 'MONTAZERI Pejman', 1, 'Iran'),
(315, 'GHOOCHANNEJHAD Reza', 1, 'Iran'),
(316, 'TAREMI Mehdi', 1, 'Iran'),
(317, 'JAHANBAKHSH Alireza', 1, 'Iran'),
(318, 'HOSSEINI Majid', 1, 'Iran'),
(319, 'AZMOUN Sardar', 1, 'Iran'),
(320, 'DEJAGAH Ashkan', 1, 'Iran'),
(321, 'ABEDZADEH Amir', 2, 'Iran'),
(322, 'REZAEIAN Ramin', 1, 'Iran'),
(323, 'KAWASHIMA Eiji', 2, 'Japon'),
(324, 'UEDA Naomichi', 1, 'Japon'),
(325, 'SHOJI Gen', 1, 'Japon'),
(326, 'HONDA Keisuke', 1, 'Japon'),
(327, 'NAGATOMO Yuto', 1, 'Japon'),
(328, 'ENDO Wataru', 1, 'Japon'),
(329, 'SHIBASAKI Gaku', 1, 'Japon'),
(330, 'HARAGUCHI Genki', 1, 'Japon'),
(331, 'OKAZAKI Shinji', 1, 'Japon'),
(332, 'KAGAWA Shinji', 1, 'Japon'),
(333, 'USAMI Takashi', 1, 'Japon'),
(334, 'HIGASHIGUCHI Masaaki', 2, 'Japon'),
(335, 'MUTO Yoshinori', 1, 'Japon'),
(336, 'INUI Takashi', 1, 'Japon'),
(337, 'OSAKO Yuya', 1, 'Japon'),
(338, 'YAMAGUCHI Hotaru', 1, 'Japon'),
(339, 'HASEBE Makoto', 1, 'Japon'),
(340, 'OSHIMA Ryota', 1, 'Japon'),
(341, 'SAKAI Hiroki', 1, 'Japon'),
(342, 'MAKINO Tomoaki', 1, 'Japon'),
(343, 'SAKAI Gotoku', 1, 'Japon'),
(344, 'YOSHIDA Maya', 1, 'Japon'),
(345, 'NAKAMURA Kosuke', 2, 'Japon'),
(346, 'KIM Seunggyu', 2, 'Korea'),
(347, 'LEE Yong', 1, 'Korea'),
(348, 'JUNG Seunghyun', 1, 'Korea'),
(349, 'OH Bansuk', 1, 'Korea'),
(350, 'YUN Youngsun', 1, 'Korea'),
(351, 'PARK Jooho', 1, 'Korea'),
(352, 'SON Heungmin', 1, 'Korea'),
(353, 'JU Sejong', 1, 'Korea'),
(354, 'KIM Shinwook', 1, 'Korea'),
(355, 'LEE Seungwoo', 1, 'Korea'),
(356, 'HWANG Heechan', 1, 'Korea'),
(357, 'KIM Minwoo', 1, 'Korea'),
(358, 'KOO Jacheol', 1, 'Korea'),
(359, 'HONG Chul', 1, 'Korea'),
(360, 'JUNG Wooyoung', 1, 'Korea'),
(361, 'KI Sungyueng', 1, 'Korea'),
(362, 'LEE Jaesung', 1, 'Korea'),
(363, 'MOON Seonmin', 1, 'Korea'),
(364, 'KIM Younggwon', 1, 'Korea'),
(365, 'JANG Hyunsoo', 1, 'Korea'),
(366, 'KIM Jinhyeon', 2, 'Korea'),
(367, 'GO Yohan', 1, 'Korea'),
(368, 'JO Hyeonwoo', 2, 'Korea'),
(369, 'CORONA Jose', 2, 'Mexico'),
(370, 'AYALA Hugo', 1, 'Mexico'),
(371, 'SALCEDO Carlos', 1, 'Mexico'),
(372, 'MARQUEZ Rafael', 1, 'Mexico'),
(373, 'REYES Diego', 1, 'Mexico'),
(374, 'DOS SANTOS Jonathan', 1, 'Mexico'),
(375, 'LAYUN Miguel', 1, 'Mexico'),
(376, 'FABIAN Marco', 1, 'Mexico'),
(377, 'JIMENEZ Raul', 1, 'Mexico'),
(378, 'DOS SANTOS Giovani', 1, 'Mexico'),
(379, 'VELA Carlos', 1, 'Mexico'),
(380, 'TALAVERA Alfredo', 2, 'Mexico'),
(381, 'OCHOA Guillermo', 2, 'Mexico'),
(382, 'HERNANDEZ Javier', 1, 'Mexico'),
(383, 'MORENO Hector', 1, 'Mexico'),
(384, 'HERRERA Hector', 1, 'Mexico'),
(385, 'CORONA Jesus', 1, 'Mexico'),
(386, 'GUARDADO Andres', 1, 'Mexico'),
(387, 'PERALTA Oribe', 1, 'Mexico'),
(388, 'AQUINO Javier', 1, 'Mexico'),
(389, 'ALVAREZ Edson', 1, 'Mexico'),
(390, 'LOZANO Hirving', 1, 'Mexico'),
(391, 'GALLARDO Jesus', 1, 'Mexico'),
(392, 'BOUNOU Yassine', 2, 'Marruecos'),
(393, 'HAKIMI Achraf', 1, 'Marruecos'),
(394, 'MENDYL Hamza', 1, 'Marruecos'),
(395, 'DA COSTA Manuel', 1, 'Marruecos'),
(396, 'BENATIA Mehdi', 1, 'Marruecos'),
(397, 'SAISS Romain', 1, 'Marruecos'),
(398, 'ZIYACH Hakim', 1, 'Marruecos'),
(399, 'EL AHMADI Karim', 1, 'Marruecos'),
(400, 'EL KAABI Ayoub', 1, 'Marruecos'),
(401, 'BELHANDA Younes', 1, 'Marruecos'),
(402, 'FAJR Faycal', 1, 'Marruecos'),
(403, 'EL KAJOUI Monir', 2, 'Marruecos'),
(404, 'BOUTAIB Khalid', 1, 'Marruecos'),
(405, 'BOUSSOUFA Mbark', 1, 'Marruecos'),
(406, 'AIT BENNASSER Youssef', 1, 'Marruecos'),
(407, 'AMRABAT Noureddine', 1, 'Marruecos'),
(408, 'DIRAR Nabil', 1, 'Marruecos'),
(409, 'HARIT Amine', 1, 'Marruecos'),
(410, 'EN NESYRI Youssef', 1, 'Marruecos'),
(411, 'BOUHADDOUZ Aziz', 1, 'Marruecos'),
(412, 'AMRABAT Sofyan', 1, 'Marruecos'),
(413, 'TAGNAOUTI Ahmed', 2, 'Marruecos'),
(414, 'CARCELA Mehdi', 1, 'Marruecos'),
(415, 'EZENWA Ikechukwu', 2, 'Nigeria'),
(416, 'IDOWU Bryan', 1, 'Nigeria'),
(417, 'ECHIEJILE Elderson', 1, 'Nigeria'),
(418, 'NDIDI Onyinye', 1, 'Nigeria'),
(419, 'EKONG William', 1, 'Nigeria'),
(420, 'BALOGUN Leon', 1, 'Nigeria'),
(421, 'MUSA Ahmed', 1, 'Nigeria'),
(422, 'ETEBO Oghenekaro', 1, 'Nigeria'),
(423, 'IGHALO Odion', 1, 'Nigeria'),
(424, 'MIKEL John Obi', 1, 'Nigeria'),
(425, 'MOSES Victor', 1, 'Nigeria'),
(426, 'SHEHU Abdullahi', 1, 'Nigeria'),
(427, 'NWANKWO Simeon', 1, 'Nigeria'),
(428, 'IHEANACHO Kelechi', 1, 'Nigeria'),
(429, 'OBI Joel', 1, 'Nigeria'),
(430, 'AKPEYI Daniel', 2, 'Nigeria'),
(431, 'ONAZI Ogenyi', 1, 'Nigeria'),
(432, 'IWOBI Alex', 1, 'Nigeria'),
(433, 'OGU John', 1, 'Nigeria'),
(434, 'AWAZIEM Chidozie', 1, 'Nigeria'),
(435, 'EBUEHI Tyronne', 1, 'Nigeria'),
(436, 'OMERUO Kenneth', 1, 'Nigeria'),
(437, 'UZOHO Francis', 2, 'Nigeria'),
(438, 'PENEDO Jaime', 2, 'Panama'),
(439, 'MURILLO Michael', 1, 'Panama'),
(440, 'CUMMINGS Harold', 1, 'Panama'),
(441, 'ESCOBAR Fidel', 1, 'Panama'),
(442, 'TORRES Roman', 1, 'Panama'),
(443, 'GOMEZ Gabriel', 1, 'Panama'),
(444, 'PEREZ Blas', 1, 'Panama'),
(445, 'BARCENAS Edgar', 1, 'Panama'),
(446, 'TORRES Gabriel', 1, 'Panama'),
(447, 'DIAZ Ismael', 1, 'Panama'),
(448, 'COOPER Armando', 1, 'Panama'),
(449, 'CALDERON Jose', 2, 'Panama'),
(450, 'MACHADO Adolfo', 1, 'Panama'),
(451, 'PIMENTEL Valentin', 1, 'Panama'),
(452, 'DAVIS Eric', 1, 'Panama'),
(453, 'ARROYO Abdiel', 1, 'Panama'),
(454, 'OVALLE Luis', 1, 'Panama'),
(455, 'TEJADA Luis', 1, 'Panama'),
(456, 'QUINTERO Alberto', 1, 'Panama'),
(457, 'GODOY Anibal', 1, 'Panama'),
(458, 'RODRIGUEZ Jose Luis', 1, 'Panama'),
(459, 'RODRIGUEZ Alex', 2, 'Panama'),
(460, 'BALOY Felipe', 1, 'Panama'),
(461, 'GALLESE Pedro', 2, 'Peru'),
(462, 'RODRIGUEZ Alberto', 1, 'Peru'),
(463, 'CORZO Aldo', 1, 'Peru'),
(464, 'SANTAMARIA Anderson', 1, 'Peru'),
(465, 'ARAUJO Miguel', 1, 'Peru'),
(466, 'TRAUCO Miguel', 1, 'Peru'),
(467, 'HURTADO Paolo', 1, 'Peru'),
(468, 'CUEVA Christian', 1, 'Peru'),
(469, 'GUERRERO Paolo', 1, 'Peru'),
(470, 'FARFAN Jefferson', 1, 'Peru'),
(471, 'RUIDIAZ Raul', 1, 'Peru'),
(472, 'CACEDA Carlos', 2, 'Peru'),
(473, 'TAPIA Renato', 1, 'Peru'),
(474, 'POLO Andy', 1, 'Peru'),
(475, 'RAMOS Christian', 1, 'Peru'),
(476, 'CARTAGENA Wilder', 1, 'Peru'),
(477, 'ADVINCULA Luis', 1, 'Peru'),
(478, 'CARRILLO Andre', 1, 'Peru'),
(479, 'YOTUN Yoshimar', 1, 'Peru'),
(480, 'FLORES Edison', 1, 'Peru'),
(481, 'CARVALLO Jose', 2, 'Peru'),
(482, 'LOYOLA Nilson', 1, 'Peru'),
(483, 'AQUINO Pedro', 1, 'Peru'),
(484, 'SZCZESNY Wojciech', 2, 'Polonia'),
(485, 'PAZDAN Michal', 1, 'Polonia'),
(486, 'JEDRZEJCZYK Artur', 1, 'Polonia'),
(487, 'CIONEK Thiago', 1, 'Polonia'),
(488, 'BEDNAREK Jan', 1, 'Polonia'),
(489, 'GORALSKI Jacek', 1, 'Polonia'),
(490, 'MILIK Arkadiusz', 1, 'Polonia'),
(491, 'LINETTY Karol', 1, 'Polonia'),
(492, 'LEWANDOWSKI Robert', 1, 'Polonia'),
(493, 'KRYCHOWIAK Grzegorz', 1, 'Polonia'),
(494, 'GROSICKI Kamil', 1, 'Polonia'),
(495, 'BIALKOWSKI Bartosz', 2, 'Polonia'),
(496, 'RYBUS Maciej', 1, 'Polonia'),
(497, 'TEODORCZYK Lukasz', 1, 'Polonia'),
(498, 'GLIK Kamil', 1, 'Polonia'),
(499, 'BLASZCZYKOWSKI Jakub', 1, 'Polonia'),
(500, 'PESZKO Slawomir', 1, 'Polonia'),
(501, 'BERESZYNSKI Bartosz', 1, 'Polonia'),
(502, 'ZIELINSKI Piotr', 1, 'Polonia'),
(503, 'PISZCZEK Lukasz', 1, 'Polonia'),
(504, 'KURZAWA Rafal', 1, 'Polonia'),
(505, 'FABIANSKI Lukasz', 2, 'Polonia'),
(506, 'KOWNACKI Dawid', 1, 'Polonia'),
(507, 'RUI PATRICIO', 2, 'Portugal'),
(508, 'BRUNO ALVES', 1, 'Portugal'),
(509, 'PEPE', 1, 'Portugal'),
(510, 'MANUEL FERNANDES', 1, 'Portugal'),
(511, 'RAPHAEL GUERREIRO', 1, 'Portugal'),
(512, 'JOSE FONTE', 1, 'Portugal'),
(513, 'CRISTIANO RONALDO', 1, 'Portugal'),
(514, 'JOAO MOUTINHO', 1, 'Portugal'),
(515, 'ANDRE SILVA', 1, 'Portugal'),
(516, 'JOAO MARIO', 1, 'Portugal'),
(517, 'BERNARDO SILVA', 1, 'Portugal'),
(518, 'ANTHONY LOPES', 2, 'Portugal'),
(519, 'RUBEN DIAS', 1, 'Portugal'),
(520, 'WILLIAM', 1, 'Portugal'),
(521, 'RICARDO', 1, 'Portugal'),
(522, 'BRUNO FERNANDES', 1, 'Portugal'),
(523, 'GONCALO GUEDES', 1, 'Portugal'),
(524, 'GELSON MARTINS', 1, 'Portugal'),
(525, 'MARIO RUI', 1, 'Portugal'),
(526, 'RICARDO QUARESMA', 1, 'Portugal'),
(527, 'CEDRIC', 1, 'Portugal'),
(528, 'BETO', 2, 'Portugal'),
(529, 'ADRIEN SILVA', 1, 'Portugal'),
(530, 'AKINFEEV Igor', 2, 'Rusia'),
(531, 'MARIO FERNANDES', 1, 'Rusia'),
(532, 'KUTEPOV Ilya', 1, 'Rusia'),
(533, 'IGNASHEVICH Sergey', 1, 'Rusia'),
(534, 'SEMENOV Andrey', 1, 'Rusia'),
(535, 'CHERYSHEV Denis', 1, 'Rusia'),
(536, 'KUZIAEV Daler', 1, 'Rusia'),
(537, 'GAZINSKY Iury', 1, 'Rusia'),
(538, 'DZAGOEV Alan', 1, 'Rusia'),
(539, 'SMOLOV Fedor', 1, 'Rusia'),
(540, 'ZOBNIN Roman', 1, 'Rusia'),
(541, 'LUNEV Andrei', 2, 'Rusia'),
(542, 'KUDRIASHOV Fedor', 1, 'Rusia'),
(543, 'GRANAT Vladimir', 1, 'Rusia'),
(544, 'MIRANCHUK Alexey', 1, 'Rusia'),
(545, 'MIRANCHUK Anton', 1, 'Rusia'),
(546, 'GOLOVIN Aleksandr', 1, 'Rusia'),
(547, 'ZHIRKOV Yury', 1, 'Rusia'),
(548, 'SAMEDOV Alexander', 1, 'Rusia'),
(549, 'GABULOV Vladimir', 2, 'Rusia'),
(550, 'EROKHIN Aleksandr', 1, 'Rusia'),
(551, 'DZYUBA Artem', 1, 'Rusia'),
(552, 'SMOLNIKOV Igor', 1, 'Rusia'),
(553, 'ABDULLAH ALMUAIOUF', 2, 'Arabia Saudita'),
(554, 'MANSOUR ALHARBI', 1, 'Arabia Saudita'),
(555, 'OSAMA HAWSAWI', 1, 'Arabia Saudita'),
(556, 'ALI ALBULAYHI', 1, 'Arabia Saudita'),
(557, 'OMAR OTHMAN', 1, 'Arabia Saudita'),
(558, 'MOHAMMED ALBURAYK', 1, 'Arabia Saudita'),
(559, 'SALMAN ALFARAJ', 1, 'Arabia Saudita'),
(560, 'YAHIA ALSHEHRI', 1, 'Arabia Saudita'),
(561, 'HATAN BAHBIR', 1, 'Arabia Saudita'),
(562, 'MOHAMMED ALSAHLAWI', 1, 'Arabia Saudita'),
(563, 'ABDULMALEK ALKHAIBRI', 1, 'Arabia Saudita'),
(564, 'MOHAMED KANNO', 1, 'Arabia Saudita'),
(565, 'YASIR ALSHAHRANI', 1, 'Arabia Saudita'),
(566, 'ABDULLAH OTAYF', 1, 'Arabia Saudita'),
(567, 'ABDULLAH ALKHAIBARI', 1, 'Arabia Saudita'),
(568, 'HUSSAIN ALMOQAHWI', 1, 'Arabia Saudita'),
(569, 'TAISEER ALJASSAM', 1, 'Arabia Saudita'),
(570, 'SALEM ALDAWSARI', 1, 'Arabia Saudita'),
(571, 'FAHAD ALMUWALLAD', 1, 'Arabia Saudita'),
(572, 'MUHANNAD ASIRI', 1, 'Arabia Saudita'),
(573, 'YASSER ALMOSAILEM', 2, 'Arabia Saudita'),
(574, 'MOHAMMED ALOWAIS', 2, 'Arabia Saudita'),
(575, 'MOTAZ HAWSAWI', 1, 'Arabia Saudita'),
(576, 'DIALLO Abdoulaye', 2, 'Senegal'),
(577, 'CISS Saliou', 1, 'Senegal'),
(578, 'KOULIBALY Kalidou', 1, 'Senegal'),
(579, 'MBODJI Kara', 1, 'Senegal'),
(580, 'GUEYE Idrissa Gana', 1, 'Senegal'),
(581, 'SANE Salif', 1, 'Senegal'),
(582, 'SOW Moussa', 1, 'Senegal'),
(583, 'KOUYATE Cheikhou', 1, 'Senegal'),
(584, 'DIOUF Mame', 1, 'Senegal'),
(585, 'MANE Sadio', 1, 'Senegal'),
(586, 'NDOYE Cheikh', 1, 'Senegal'),
(587, 'SABALY Youssouf', 1, 'Senegal'),
(588, 'NDIAYE Alfred', 1, 'Senegal'),
(589, 'KONATE Moussa', 1, 'Senegal'),
(590, 'SAKHO Diafra', 1, 'Senegal'),
(591, 'NDIAYE Khadim', 2, 'Senegal'),
(592, 'NDIAYE Pape Alioune', 1, 'Senegal'),
(593, 'SARR Ismaila', 1, 'Senegal'),
(594, 'NIANG Mbaye', 1, 'Senegal'),
(595, 'BALDE Keita', 1, 'Senegal'),
(596, 'GASSAMA Lamine', 1, 'Senegal'),
(597, 'WAGUE Moussa', 1, 'Senegal'),
(598, 'GOMIS Alfred', 2, 'Senegal'),
(599, 'STOJKOVIC Vladimir', 2, 'Serbia'),
(600, 'RUKAVINA Antonio', 1, 'Serbia'),
(601, 'TOSIC Dusko', 1, 'Serbia'),
(602, 'MILIVOJEVIC Luka', 1, 'Serbia'),
(603, 'SPAJIC Uros', 1, 'Serbia'),
(604, 'IVANOVIC Branislav', 1, 'Serbia'),
(605, 'ZIVKOVIC Andrija', 1, 'Serbia'),
(606, 'PRIJOVIC Aleksandar', 1, 'Serbia'),
(607, 'MITROVIC Aleksandar', 1, 'Serbia'),
(608, 'TADIC Dusan', 1, 'Serbia'),
(609, 'KOLAROV Aleksandar', 1, 'Serbia'),
(610, 'RAJKOVIC Predrag', 2, 'Serbia'),
(611, 'VELJKOVIC Milos', 1, 'Serbia'),
(612, 'RODIC Milan', 1, 'Serbia'),
(613, 'MILENKOVIC Nikola', 1, 'Serbia'),
(614, 'GRUJIC Marko', 1, 'Serbia'),
(615, 'KOSTIC Filip', 1, 'Serbia'),
(616, 'RADONJIC Nemanja', 1, 'Serbia'),
(617, 'JOVIC Luka', 1, 'Serbia'),
(618, 'MILINKOVIC-SAVIC Sergej', 1, 'Serbia'),
(619, 'MATIC Nemanja', 1, 'Serbia'),
(620, 'LJAJIC Adem', 1, 'Serbia'),
(621, 'DMITROVIC Marko', 2, 'Serbia'),
(622, 'DE GEA David', 2, 'España'),
(623, 'CARVAJAL Dani', 1, 'España'),
(624, 'PIQUE Gerard', 1, 'España'),
(625, 'NACHO', 1, 'España'),
(626, 'BUSQUETS Sergio', 1, 'España'),
(627, 'INIESTA Andres', 1, 'España'),
(628, 'SAUL', 1, 'España'),
(629, 'KOKE', 1, 'España'),
(630, 'RODRIGO', 1, 'España'),
(631, 'THIAGO', 1, 'España'),
(632, 'VAZQUEZ Lucas', 1, 'España'),
(633, 'ODRIOZOLA Alvaro', 1, 'España'),
(634, 'ARRIZABALAGA Kepa', 2, 'España'),
(635, 'AZPILICUETA Cesar', 1, 'España'),
(636, 'RAMOS Sergio', 1, 'España'),
(637, 'MONREAL Nacho', 1, 'España'),
(638, 'ASPAS Iago', 1, 'España'),
(639, 'ALBA Jordi', 1, 'España'),
(640, 'COSTA Diego', 1, 'España'),
(641, 'ASENSIO Marco', 1, 'España'),
(642, 'SILVA David', 1, 'España'),
(643, 'ISCO', 1, 'España'),
(644, 'REINA Pepe', 2, 'España'),
(645, 'OLSEN Robin', 2, 'Suecia'),
(646, 'LUSTIG Mikael', 1, 'Suecia'),
(647, 'LINDELOF Victor', 1, 'Suecia'),
(648, 'GRANQVIST Andreas', 1, 'Suecia'),
(649, 'OLSSON Martin', 1, 'Suecia'),
(650, 'AUGUSTINSSON Ludwig', 1, 'Suecia'),
(651, 'LARSSON Sebastian', 1, 'Suecia'),
(652, 'EKDAL Albin', 1, 'Suecia'),
(653, 'BERG Marcus', 1, 'Suecia'),
(654, 'FORSBERG Emil', 1, 'Suecia'),
(655, 'GUIDETTI John', 1, 'Suecia'),
(656, 'JOHNSSON Karl-Johan', 2, 'Suecia'),
(657, 'SVENSSON Gustav', 1, 'Suecia'),
(658, 'HELANDER Filip', 1, 'Suecia'),
(659, 'HILJEMARK Oscar', 1, 'Suecia'),
(660, 'KRAFTH Emil', 1, 'Suecia'),
(661, 'CLAESSON Viktor', 1, 'Suecia'),
(662, 'JANSSON Pontus', 1, 'Suecia'),
(663, 'ROHDEN Marcus', 1, 'Suecia'),
(664, 'TOIVONEN Ola', 1, 'Suecia'),
(665, 'DURMAZ Jimmy', 1, 'Suecia'),
(666, 'THELIN Isaac Kiese', 1, 'Suecia'),
(667, 'NORDFELDT Kristoffer', 2, 'Suecia'),
(668, 'SOMMER Yann', 2, 'Suiza'),
(669, 'LICHTSTEINER Stephan', 1, 'Suiza'),
(670, 'MOUBANDJE Francois', 1, 'Suiza'),
(671, 'ELVEDI Nico', 1, 'Suiza'),
(672, 'AKANJI Manuel', 1, 'Suiza'),
(673, 'LANG Michael', 1, 'Suiza'),
(674, 'EMBOLO Breel', 1, 'Suiza'),
(675, 'FREULER Remo', 1, 'Suiza'),
(676, 'SEFEROVIC Haris', 1, 'Suiza'),
(677, 'XHAKA Granit', 1, 'Suiza'),
(678, 'BEHRAMI Valon', 1, 'Suiza'),
(679, 'MVOGO Yvon', 2, 'Suiza'),
(680, 'RODRIGUEZ Ricardo', 1, 'Suiza'),
(681, 'ZUBER Steven', 1, 'Suiza'),
(682, 'DZEMAILI Blerim', 1, 'Suiza'),
(683, 'FERNANDES Gelson', 1, 'Suiza'),
(684, 'ZAKARIA Denis', 1, 'Suiza'),
(685, 'GAVRANOVIC Mario', 1, 'Suiza'),
(686, 'DRMIC Josip', 1, 'Suiza'),
(687, 'DJOUROU Johan', 1, 'Suiza'),
(688, 'BUERKI Roman', 2, 'Suiza'),
(689, 'SCHAER Fabian', 1, 'Suiza'),
(690, 'SHAQIRI Xherdan', 1, 'Suiza'),
(691, 'BEN MUSTAPHA Farouk', 2, 'Tunez'),
(692, 'BEN YOUSSEF Syam', 1, 'Tunez'),
(693, 'BEN ALOUANE Yohan', 1, 'Tunez'),
(694, 'MERIAH Yassine', 1, 'Tunez'),
(695, 'HADDADI Oussama', 1, 'Tunez'),
(696, 'BEDOUI Rami', 1, 'Tunez'),
(697, 'KHAOUI Saifeddine', 1, 'Tunez'),
(698, 'BEN YOUSSEF Fakhreddine', 1, 'Tunez'),
(699, 'BADRI Anice', 1, 'Tunez'),
(700, 'KHAZRI Wahbi', 1, 'Tunez'),
(701, 'BRONN Dylan', 1, 'Tunez'),
(702, 'MAALOUL Ali', 1, 'Tunez'),
(703, 'SASSI Ferjani', 1, 'Tunez'),
(704, 'BEN AMOR Mohamed', 1, 'Tunez'),
(705, 'KHALIL Ahmed', 1, 'Tunez'),
(706, 'MATHLOUTHI Aymen', 2, 'Tunez'),
(707, 'SKHIRI Ellyes', 1, 'Tunez'),
(708, 'SRARFI Bassem', 1, 'Tunez'),
(709, 'KHALIFA Saber', 1, 'Tunez'),
(710, 'CHAALELI Ghaylen', 1, 'Tunez'),
(711, 'NAGUEZ Hamdi', 1, 'Tunez'),
(712, 'HASSEN Mouez', 2, 'Tunez'),
(713, 'SLITI Naim', 1, 'Tunez'),
(714, 'MUSLERA Fernando', 2, 'Uruguay'),
(715, 'GIMENEZ Jose', 1, 'Uruguay'),
(716, 'GODIN Diego', 1, 'Uruguay'),
(717, 'VARELA Guillermo', 1, 'Uruguay'),
(718, 'BENTANCUR Rodrigo', 1, 'Uruguay'),
(719, 'RODRIGUEZ Cristian', 1, 'Uruguay'),
(720, 'NANDEZ Nahitan', 1, 'Uruguay'),
(721, 'SUAREZ Luis', 1, 'Uruguay'),
(722, 'DE ARRASCAETA Giorgian', 1, 'Uruguay'),
(723, 'STUANI Cristhian', 1, 'Uruguay'),
(724, 'CAMPANA Martin', 2, 'Uruguay'),
(725, 'SILVA Gaston', 1, 'Uruguay'),
(726, 'TORREIRA Lucas', 1, 'Uruguay'),
(727, 'VECINO Matias', 1, 'Uruguay'),
(728, 'PEREIRA Maximiliano', 1, 'Uruguay'),
(729, 'LAXALT Diego', 1, 'Uruguay'),
(730, 'GOMEZ Maximiliano', 1, 'Uruguay'),
(731, 'COATES Sebastian', 1, 'Uruguay'),
(732, 'URRETAVISCAYA Jonathan', 1, 'Uruguay'),
(733, 'CAVANI Edinson', 1, 'Uruguay'),
(734, 'CACERES Martin', 1, 'Uruguay'),
(735, 'SILVA Martin', 2, 'Uruguay');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `log_usuario` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `log_tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `log_fecha` datetime DEFAULT NULL,
  `log_log` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(1, 'admin', 'CREAR BANNER', '2024-05-03 15:11:17', 'Array\n(\n    [publicidad_seccion] => 1\n    [publicidad_nombre] => Banner 1\n    [publicidad_nombre2] => \n    [publicidad_fecha] => 2024-05-03\n    [publicidad_nombre_ver] => \n    [publicidad_imagen] => banner-omega-polla.jpg\n    [publicidad_imagenresponsive] => banner-omega-polla1.jpg\n    [publicidad_video] => \n    [publicidad_color_fondo] => \n    [publicidad_posicion] => \n    [publicidad_descripcion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [publicidad_estado] => 1\n    [publicidad_click] => 0\n    [publicidad_enlace] => #\n    [publicidad_tipo_enlace] => 1\n    [publicidad_texto_enlace] => \n    [publicidad_enlace_alineacion] => \n    [publicidad_id] => 1\n)\n'),
(2, 'admin', 'CREAR BANNER', '2024-05-03 15:12:13', 'Array\n(\n    [publicidad_seccion] => 1\n    [publicidad_nombre] => Banner 2\n    [publicidad_nombre2] => \n    [publicidad_fecha] => 2024-05-03\n    [publicidad_nombre_ver] => \n    [publicidad_imagen] => banner-omega-polla2.jpg\n    [publicidad_imagenresponsive] => banner-omega-polla3.jpg\n    [publicidad_video] => \n    [publicidad_color_fondo] => \n    [publicidad_posicion] => \n    [publicidad_descripcion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [publicidad_estado] => 1\n    [publicidad_click] => 0\n    [publicidad_enlace] => \n    [publicidad_tipo_enlace] => 0\n    [publicidad_texto_enlace] => \n    [publicidad_enlace_alineacion] => \n    [publicidad_id] => 2\n)\n'),
(3, 'admin', 'CREAR CONTENIDO', '2024-05-03 15:47:06', 'Array\n(\n    [contenido_seccion] => 2\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Inscribase\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_descripcion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 1\n)\n'),
(4, 'admin', 'CREAR CONTENIDO', '2024-05-03 15:47:47', 'Array\n(\n    [contenido_seccion] => 3\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Premios\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => ico-premios.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_descripcion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 2\n)\n'),
(5, 'admin', 'CREAR CONTENIDO', '2024-05-03 15:50:09', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Términos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => ico-terminos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_descripcion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 3\n)\n'),
(6, 'admin', 'EDITAR CONTENIDO', '2024-05-03 15:52:36', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Términos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => ico-terminos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => <script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"no_cel\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<div class=\"si_cel\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1m.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1m.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segundam.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartosm.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinalm.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/finalm.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otrosm.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p><script src=\"//cdn.public.flmngr.com/FLMNFLMN/widgets.js\"></script>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 3\n)\n'),
(7, 'admin', 'EDITAR CONTENIDO', '2024-05-03 15:55:12', 'Array\n(\n    [contenido_seccion] => 3\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Premios\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => ico-premios.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <div class=\"container\">\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Premios por Inscripci&oacute;n</p>\r\n<p style=\"text-align: center;\">Podr&aacute; participar en el sorteo de&nbsp; TV, Camisetas de la selecci&oacute;n, Balones, cajas de l&aacute;minas PANINI &nbsp;solo por inscribirse.</p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Se realizaran 2 sorteos:</p>\r\n<ul>\r\n<li style=\"text-align: center;\">30 de abril y 30 de mayo<br><br></li>\r\n</ul>\r\n<p class=\"no_cel\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" src=\"../../upload/Banner-.jpg\" alt=\"Banner\"></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\">Premiaci&oacute;n final</p>\r\n<p style=\"text-align: center;\">Es la premiaci&oacute;n final a las personas que mayor n&uacute;mero de puntos haya acumulado a lo largo de su participaci&oacute;n en la polla mundialista.<br><br></p>\r\n</div>\r\n<p class=\"no_cel\"><img style=\"max-width: 100%;\" src=\"../../upload/Premios.jpg\" alt=\"Premios\"></p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 2\n)\n'),
(8, 'admin', 'EDITAR CONTENIDO', '2024-05-03 16:17:49', 'Array\n(\n    [contenido_seccion] => 2\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Inscribase\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 1\n)\n'),
(9, 'admin', 'EDITAR CONTENIDO', '2024-05-03 16:17:57', 'Array\n(\n    [contenido_seccion] => 3\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Premios\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-premios.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <div class=\"container\">\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Premios por Inscripción</p>\r\n<p style=\"text-align: center;\">Podrá participar en el sorteo de  TV, Camisetas de la selección, Balones, cajas de láminas PANINI  solo por inscribirse.</p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Se realizaran 2 sorteos:</p>\r\n<ul>\r\n<li style=\"text-align: center;\">30 de abril y 30 de mayo<br><br></li>\r\n</ul>\r\n<p class=\"no_cel\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" src=\"../../upload/Banner-.jpg\" alt=\"Banner\"></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\">Premiación final</p>\r\n<p style=\"text-align: center;\">Es la premiación final a las personas que mayor número de puntos haya acumulado a lo largo de su participación en la polla mundialista.<br><br></p>\r\n</div>\r\n<p class=\"no_cel\"><img style=\"max-width: 100%;\" src=\"../../upload/Premios.jpg\" alt=\"Premios\"></p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 2\n)\n'),
(10, 'admin', 'EDITAR CONTENIDO', '2024-05-03 16:18:10', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Términos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-terminos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"no_cel\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<div class=\"si_cel\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1m.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1m.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segundam.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartosm.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinalm.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/finalm.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otrosm.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 3\n)\n'),
(11, 'admin', 'EDITAR CONTENIDO', '2024-05-03 16:32:20', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Términos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-terminos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 3\n)\n'),
(12, 'admin', 'EDITAR CONTENIDO', '2024-05-03 16:33:44', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Términos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-terminos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 3\n)\n');
INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(13, 'admin', 'EDITAR CONTENIDO', '2024-05-03 16:34:58', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-03\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Términos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-terminos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"\">\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img class=\"n1ed--selected\" style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 3\n)\n'),
(14, 'admin', 'CREAR CONTENIDO', '2024-05-06 09:35:06', 'Array\n(\n    [contenido_seccion] => 5\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-06\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Grupos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => icono-grupos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 4\n)\n'),
(15, 'admin', 'EDITAR CONTENIDO', '2024-05-06 09:35:13', 'Array\n(\n    [contenido_seccion] => 5\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-06\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Grupos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => icono-grupos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 4\n)\n'),
(16, 'admin', 'CREAR CONTENIDO', '2024-05-06 10:00:55', 'Array\n(\n    [contenido_seccion] => 6\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-06\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Clasificación\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => ico-clasificacion.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 5\n)\n'),
(17, 'admin', 'EDITAR CONTENIDO', '2024-05-06 10:01:05', 'Array\n(\n    [contenido_seccion] => 6\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-06\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Clasificación\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-clasificacion.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 5\n)\n'),
(18, 'admin', 'CREAR CONTENIDO', '2024-05-06 11:33:26', 'Array\n(\n    [contenido_seccion] => 7\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-06\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Partidos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => partidos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 6\n)\n'),
(19, 'admin', 'EDITAR CONTENIDO', '2024-05-06 11:33:33', 'Array\n(\n    [contenido_seccion] => 7\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-06\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Partidos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => partidos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 6\n)\n'),
(20, 'admin', 'EDITAR CONTENIDO', '2024-05-06 11:33:50', 'Array\n(\n    [contenido_seccion] => 5\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-06\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Grupos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => grupos.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 4\n)\n'),
(21, 'admin', 'EDITAR ARCHIVO', '2024-05-06 16:03:52', 'Array\n(\n    [archivo_cedulas] => bd_polla.xlsx\n    [id] => 1\n)\n'),
(22, 'admin', 'LOGIN', '2024-05-06 17:49:33', ''),
(23, 'admin', 'LOGIN', '2024-05-06 17:50:59', ''),
(24, 'admin', 'LOGIN', '2024-05-06 19:28:47', ''),
(25, 'admin', 'EDITAR USUARIO', '2024-05-06 19:39:52', 'Array\n(\n    [user_names] => JUAN SEBASTI&Aacute;N&Ntilde; SANDOVAL VARGAS\n    [user_lastnames] => \n    [user_email] => juansesdvsf@gmail.com\n    [user_idnumber] => 1100973339\n    [user_city] => \n    [user_country] => \n    [user_phone] => \n    [user_address] => \n    [user_level] => 0\n    [user_state] => 1\n    [user_user] => 1100973339\n    [user_password] => 1234\n    [user_delete] => 0\n    [user_current_user] => 0\n    [user_zona] => \n    [user_celular] => 123123123\n    [user_puntos] => 0\n    [user_marcadores] => 0\n    [user_ganadores] => 0\n    [user_otros] => 0\n    [user_total] => 0\n    [user_cuotas] => 1\n    [user_paso] => 4\n    [user_fecha] => 2024-05-06\n    [user_id] => 16\n)\n'),
(26, 'admin', 'EDITAR USUARIO', '2024-05-06 19:47:38', 'Array\n(\n    [user_names] => JUAN SESANDOVAL VARGAS\n    [user_lastnames] => \n    [user_email] => juansesdvsf@gmail.com\n    [user_idnumber] => 1100973339\n    [user_city] => \n    [user_country] => \n    [user_phone] => \n    [user_address] => \n    [user_level] => 0\n    [user_state] => 1\n    [user_user] => 1100973339\n    [user_password] => 1234\n    [user_delete] => 0\n    [user_current_user] => 0\n    [user_zona] => \n    [user_celular] => 123123123\n    [user_puntos] => 0\n    [user_marcadores] => 0\n    [user_ganadores] => 0\n    [user_otros] => 0\n    [user_total] => 0\n    [user_cuotas] => 1\n    [user_paso] => 4\n    [user_fecha] => 2024-05-06\n    [user_id] => 16\n)\n'),
(27, 'admin', 'EDITAR USUARIO', '2024-05-06 19:48:11', 'Array\n(\n    [user_names] => JUAN SEBASTI&Aacute;N&Ntilde; SANDOVAL VARGAS\n    [user_lastnames] => \n    [user_email] => juansesdvsf@gmail.com\n    [user_idnumber] => 1100973339\n    [user_city] => \n    [user_country] => \n    [user_phone] => \n    [user_address] => \n    [user_level] => 0\n    [user_state] => 1\n    [user_user] => 1100973339\n    [user_password] => 1234\n    [user_delete] => 0\n    [user_current_user] => 0\n    [user_zona] => \n    [user_celular] => 123123123\n    [user_puntos] => 0\n    [user_marcadores] => 0\n    [user_ganadores] => 0\n    [user_otros] => 0\n    [user_total] => 0\n    [user_cuotas] => 1\n    [user_paso] => 4\n    [user_fecha] => 2024-05-06\n    [user_id] => 16\n)\n'),
(28, 'admin', 'EDITAR USUARIO', '2024-05-06 19:48:48', 'Array\n(\n    [user_names] => JUAN SEBASTI&Aacute;N&Ntilde; SANDOVAL VARGAS\n    [user_lastnames] => \n    [user_email] => juansesdvsf@gmail.com\n    [user_idnumber] => 1100973339\n    [user_city] => \n    [user_country] => \n    [user_phone] => \n    [user_address] => \n    [user_level] => 2\n    [user_state] => 1\n    [user_user] => 1100973339\n    [user_password] => 1234\n    [user_delete] => 0\n    [user_current_user] => 0\n    [user_zona] => \n    [user_celular] => 123123123\n    [user_puntos] => 0\n    [user_marcadores] => 0\n    [user_ganadores] => 0\n    [user_otros] => 0\n    [user_total] => 0\n    [user_cuotas] => 1\n    [user_paso] => 4\n    [user_fecha] => 2024-05-06\n    [user_id] => 16\n)\n'),
(29, 'admin', 'EDITAR USUARIO', '2024-05-06 21:19:03', 'Array\n(\n    [user_names] => JUAN SEBASTI&Aacute;N&Ntilde; SANDOVAL VARGAS\n    [user_lastnames] => \n    [user_email] => juansesdvsf@gmail.com\n    [user_idnumber] => 1100973339\n    [user_city] => \n    [user_country] => \n    [user_phone] => \n    [user_address] => \n    [user_level] => 2\n    [user_state] => 1\n    [user_user] => 1100973339\n    [user_password] => 123\n    [user_delete] => 0\n    [user_current_user] => 0\n    [user_zona] => \n    [user_celular] => 123123123\n    [user_puntos] => 0\n    [user_marcadores] => 0\n    [user_ganadores] => 0\n    [user_otros] => 0\n    [user_total] => 0\n    [user_cuotas] => 1\n    [user_paso] => 4\n    [user_fecha] => 2024-05-06\n    [user_id] => 16\n)\n'),
(30, 'admin', 'CREAR USUARIO', '2024-05-06 21:20:15', 'Array\n(\n    [user_state] => 0\n    [user_date] => 2024-05-06\n    [user_names] => 312\n    [user_cedula] => 123\n    [user_email] => validador@correo.com\n    [user_telefono] => 23123\n    [user_level] => 2\n    [user_user] => 321\n    [user_password] => 23\n    [user_delete] => 1\n    [user_current_user] => 1\n    [user_code] => 1\n)\n'),
(31, 'admin', 'ACTUALIZAR USUARIO', '2024-05-06 21:20:26', 'Array\n(\n    [user_state] => 0\n    [user_date] => 2024-05-06\n    [user_names] => 312\n    [user_cedula] => 123\n    [user_email] => validador@correo.com\n    [user_telefono] => 23123\n    [user_level] => 2\n    [user_user] => 321\n    [user_password] => 123\n    [user_delete] => 1\n    [user_current_user] => 1\n    [user_code] => 1\n    [user_id] => 4\n)\n'),
(32, 'admin', 'BORRAR USUARIO', '2024-05-06 21:20:30', 'Array\n(\n    [user_id] => 4\n)\n'),
(33, 'admin', 'EDITAR USUARIO', '2024-05-06 21:27:34', 'Array\n(\n    [user_names] => JUAN SEBASTI&Aacute;N&Ntilde; SANDOVAL VARGAS\n    [user_lastnames] => \n    [user_email] => juansesdvsf@gmail.com\n    [user_idnumber] => 1100973339\n    [user_city] => \n    [user_country] => \n    [user_phone] => \n    [user_address] => \n    [user_level] => 2\n    [user_state] => 1\n    [user_user] => 1100973339\n    [user_password] => 1111\n    [user_delete] => 0\n    [user_current_user] => 0\n    [user_zona] => \n    [user_celular] => 123123123\n    [user_puntos] => 0\n    [user_marcadores] => 0\n    [user_ganadores] => 0\n    [user_otros] => 0\n    [user_total] => 0\n    [user_cuotas] => 1\n    [user_paso] => 4\n    [user_fecha] => 2024-05-06\n    [user_id] => 16\n)\n'),
(34, 'admin', 'LOGIN', '2024-05-07 10:41:47', ''),
(35, 'admin', 'CREAR CONTENIDO', '2024-05-07 10:42:28', 'Array\n(\n    [contenido_seccion] => 8\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Polla\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => balonoro.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 7\n)\n'),
(36, 'admin', 'EDITAR CONTENIDO', '2024-05-07 10:42:37', 'Array\n(\n    [contenido_seccion] => 8\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Polla\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => balonoro.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 7\n)\n'),
(37, 'admin', 'EDITAR PARTIDO', '2024-05-07 12:20:33', 'Array\n(\n    [numero] => 1\n    [equipo1] => 31\n    [equipo2] => 33\n    [fecha] => 2024-05-08\n    [hora] => 10:00:00\n    [fase] => 1\n    [valor1] => 5\n    [valor2] => 0\n    [ganador] => 31\n    [id] => 1\n)\n'),
(38, 'admin', 'CREAR PARTIDO', '2024-05-07 12:36:07', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-07\n    [hora] => 13:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 1\n)\n'),
(39, 'admin', 'EDITAR PARTIDO', '2024-05-07 14:45:22', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-07\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 1\n)\n'),
(40, 'admin', '', '2024-05-07 14:54:06', ''),
(41, 'admin', '', '2024-05-07 14:54:13', ''),
(42, 'admin', 'EDITAR PARTIDO', '2024-05-07 15:07:27', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-07\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 3\n    [valor2] => 2\n    [ganador] => 1\n    [id] => 1\n)\n'),
(43, 'admin', 'CREAR CONFIG', '2024-05-07 16:32:46', 'Array\n(\n    [config_valorcuota] => 50719\n    [config_interes] => 1.14\n    [config_gruposmarcador] => 150\n    [config_gruposequipo] => 20\n    [config_gruposempate] => 10\n    [config_1puestooctavos] => 100\n    [config_2puestooctavos] => 10\n    [config_octavosmarcador] => 200\n    [config_octavosequipo] => 30\n    [config_cuartosclasificado] => 150\n    [config_cuartosmarcador] => 200\n    [config_cuartosganador] => 30\n    [config_semisclasificado] => 150\n    [config_semismarcador] => 250\n    [config_semisequipo] => 40\n    [config_finalesmarcadores] => 300\n    [config_campeon] => 500\n    [config_subcampeon] => 250\n    [config_tercero] => 200\n    [config_cuarto] => 50\n    [config_goleador] => 150\n    [config_valla] => 150\n    [config_id] => 1\n)\n'),
(44, 'admin', 'CREAR CONTENIDO', '2024-05-07 17:10:35', 'Array\n(\n    [contenido_seccion] => 9\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Octavos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 8\n)\n'),
(45, 'admin', 'CREAR CONTENIDO', '2024-05-07 17:11:31', 'Array\n(\n    [contenido_seccion] => 10\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Cuartos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 9\n)\n'),
(46, 'admin', 'CREAR CONTENIDO', '2024-05-07 17:11:51', 'Array\n(\n    [contenido_seccion] => 11\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Semifinales\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 10\n)\n'),
(47, 'admin', 'CREAR CONTENIDO', '2024-05-07 17:12:13', 'Array\n(\n    [contenido_seccion] => 12\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Semifinal\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 11\n)\n'),
(48, 'admin', 'CREAR CONTENIDO', '2024-05-07 17:12:29', 'Array\n(\n    [contenido_seccion] => 13\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Otros\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 12\n)\n'),
(49, 'admin', 'EDITAR FASE', '2024-05-07 17:14:26', 'Array\n(\n    [estado] => 1\n    [titulo] => FASE 1\n    [fecha1] => \n    [fecha2] => \n    [id] => 1\n)\n'),
(50, 'admin', 'EDITAR FASE', '2024-05-07 17:14:37', 'Array\n(\n    [estado] => 1\n    [titulo] => Octavos de final\n    [fecha1] => \n    [fecha2] => \n    [id] => 2\n)\n'),
(51, 'admin', 'EDITAR FASE', '2024-05-07 17:14:44', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => \n    [fecha2] => \n    [id] => 3\n)\n'),
(52, 'admin', 'EDITAR FASE', '2024-05-07 17:14:49', 'Array\n(\n    [estado] => 1\n    [titulo] => Semifinales\n    [fecha1] => \n    [fecha2] => \n    [id] => 4\n)\n'),
(53, 'admin', 'EDITAR FASE', '2024-05-07 17:14:54', 'Array\n(\n    [estado] => 1\n    [titulo] => Final\n    [fecha1] => \n    [fecha2] => \n    [id] => 5\n)\n'),
(54, 'admin', 'EDITAR FASE', '2024-05-07 17:21:01', 'Array\n(\n    [estado] => 0\n    [titulo] => Octavos de final\n    [fecha1] => 0000-00-00 00:00:00\n    [fecha2] => 0000-00-00 00:00:00\n    [id] => 2\n)\n'),
(55, 'admin', '', '2024-05-07 22:52:02', ''),
(56, 'admin', '', '2024-05-07 22:52:10', ''),
(57, 'admin', '', '2024-05-07 22:52:13', ''),
(58, 'admin', 'EDITAR FASE', '2024-05-07 22:59:06', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-07T23:00\n    [fecha2] => 2024-05-07T23:02\n    [id] => 3\n)\n'),
(59, 'admin', 'EDITAR FASE', '2024-05-07 23:02:18', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-07T23:00\n    [fecha2] => 2024-05-07T23:05\n    [id] => 3\n)\n'),
(60, 'admin', 'EDITAR FASE', '2024-05-07 23:04:25', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-07T23:00\n    [fecha2] => 2024-05-07T23:03\n    [id] => 3\n)\n'),
(61, 'admin', 'EDITAR FASE', '2024-05-07 23:05:29', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-07T23:00\n    [fecha2] => 2024-05-07T23:07\n    [id] => 3\n)\n'),
(62, 'admin', 'EDITAR FASE', '2024-05-07 23:09:14', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-07T23:00\n    [fecha2] => 2024-05-07T23:11\n    [id] => 3\n)\n'),
(63, 'admin', 'EDITAR FASE', '2024-05-08 08:43:13', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-07T23:00\n    [fecha2] => 2024-05-09T23:11\n    [id] => 3\n)\n'),
(64, 'admin', '', '2024-05-08 08:52:27', ''),
(65, 'admin', '', '2024-05-08 08:54:46', ''),
(66, 'admin', '', '2024-05-08 08:57:06', ''),
(67, 'admin', '', '2024-05-08 08:59:53', ''),
(68, 'admin', 'EDITAR FASE', '2024-05-08 09:03:33', 'Array\n(\n    [estado] => 1\n    [titulo] => Semifinales\n    [fecha1] => 2024-05-08T09:03\n    [fecha2] => 2024-05-10T09:03\n    [id] => 4\n)\n'),
(69, 'admin', 'EDITAR FASE', '2024-05-08 09:03:41', 'Array\n(\n    [estado] => 1\n    [titulo] => Final\n    [fecha1] => 2024-05-08T09:03\n    [fecha2] => 2024-05-10T09:03\n    [id] => 5\n)\n'),
(70, 'admin', 'EDITAR FASE', '2024-05-08 09:03:48', 'Array\n(\n    [estado] => 1\n    [titulo] => Otros\n    [fecha1] => 2024-05-08T09:03\n    [fecha2] => 2024-05-11T09:03\n    [id] => 6\n)\n'),
(71, 'admin', 'EDITAR FASE', '2024-05-08 09:03:59', 'Array\n(\n    [estado] => 0\n    [titulo] => Octavos de final\n    [fecha1] => 2024-05-07T09:03\n    [fecha2] => 2024-05-11T09:03\n    [id] => 2\n)\n'),
(72, 'admin', 'EDITAR FASE', '2024-05-08 09:04:09', 'Array\n(\n    [estado] => 1\n    [titulo] => FASE 1\n    [fecha1] => 2024-05-07T09:04\n    [fecha2] => 2024-05-11T09:04\n    [id] => 1\n)\n'),
(73, 'admin', 'EDITAR FASE', '2024-05-08 09:04:18', 'Array\n(\n    [estado] => 1\n    [titulo] => FASE 1\n    [fecha1] => 2024-05-07T09:04\n    [fecha2] => 2024-05-11T09:04\n    [id] => 1\n)\n'),
(74, 'admin', 'EDITAR FASE', '2024-05-08 09:31:42', 'Array\n(\n    [estado] => 1\n    [titulo] => Semifinales\n    [fecha1] => 2024-05-07T09:03\n    [fecha2] => 2024-05-10T09:03\n    [id] => 4\n)\n'),
(75, 'admin', '', '2024-05-08 09:34:00', ''),
(76, 'admin', '', '2024-05-08 09:34:21', ''),
(77, 'admin', '', '2024-05-08 09:34:33', ''),
(78, 'admin', 'EDITAR CONTENIDO', '2024-05-08 09:38:28', 'Array\n(\n    [contenido_seccion] => 12\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-07\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Final\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 11\n)\n'),
(79, 'admin', '', '2024-05-08 09:41:21', ''),
(80, 'admin', '', '2024-05-08 09:41:53', ''),
(81, 'admin', '', '2024-05-08 10:02:13', ''),
(82, 'admin', '', '2024-05-08 10:02:46', ''),
(83, 'admin', '', '2024-05-08 10:04:08', ''),
(84, 'admin', '', '2024-05-08 10:05:21', ''),
(85, 'admin', '', '2024-05-08 10:06:06', ''),
(86, 'admin', '', '2024-05-08 10:06:26', ''),
(87, 'admin', '', '2024-05-08 10:11:08', ''),
(88, 'admin', 'EDITAR PARTIDO', '2024-05-08 10:37:45', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 3\n    [valor2] => 2\n    [ganador] => 1\n    [id] => 1\n)\n'),
(89, 'admin', '', '2024-05-08 10:38:04', ''),
(90, 'admin', '', '2024-05-08 10:38:33', ''),
(91, 'admin', '', '2024-05-08 10:51:47', ''),
(92, 'admin', '', '2024-05-08 10:52:05', ''),
(93, 'admin', '', '2024-05-08 10:52:25', ''),
(94, 'admin', '', '2024-05-08 10:52:34', ''),
(95, 'admin', 'EDITAR PARTIDO', '2024-05-08 11:53:52', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 3\n    [valor2] => 3\n    [ganador] => -1\n    [id] => 1\n)\n'),
(96, 'admin', 'EDITAR PARTIDO', '2024-05-08 11:54:05', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 3\n    [valor2] => 4\n    [ganador] => 2\n    [id] => 1\n)\n'),
(97, 'admin', 'EDITAR PARTIDO', '2024-05-08 12:05:35', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 3\n    [valor2] => 3\n    [ganador] => -1\n    [id] => 1\n)\n'),
(98, 'admin', '', '2024-05-08 12:05:58', ''),
(99, 'admin', 'EDITAR PARTIDO', '2024-05-08 12:06:15', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 0\n    [ganador] => 1\n    [id] => 1\n)\n'),
(100, 'admin', 'EDITAR PARTIDO', '2024-05-08 12:06:35', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(101, 'admin', 'CREAR PARTIDO', '2024-05-08 12:53:29', 'Array\n(\n    [numero] => 2\n    [equipo1] => 3\n    [equipo2] => 5\n    [fecha] => 2024-05-09\n    [hora] => 14:00:00\n    [fase] => 2\n    [valor1] => 3\n    [valor2] => 2\n    [ganador] => 3\n    [id] => 2\n)\n'),
(102, 'admin', '', '2024-05-08 12:54:42', ''),
(103, 'admin', '', '2024-05-08 12:54:42', ''),
(104, 'admin', 'EDITAR PARTIDO', '2024-05-08 14:33:39', 'Array\n(\n    [numero] => 2\n    [equipo1] => 3\n    [equipo2] => 5\n    [fecha] => 2024-05-09\n    [hora] => 14:00:00\n    [fase] => 2\n    [valor1] => 3\n    [valor2] => 2\n    [ganador] => 3\n    [id] => 2\n)\n'),
(105, 'admin', 'EDITAR PARTIDO', '2024-05-08 14:33:41', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(106, 'admin', '', '2024-05-08 14:57:16', ''),
(107, 'admin', '', '2024-05-08 14:57:16', ''),
(108, '1100973339', '', '2024-05-08 14:57:29', ''),
(109, '1100973339', '', '2024-05-08 14:57:29', ''),
(110, '1100973339', '', '2024-05-08 14:57:33', ''),
(111, '1100973339', '', '2024-05-08 14:57:33', ''),
(112, 'admin', '', '2024-05-08 15:17:45', ''),
(113, 'admin', '', '2024-05-08 15:17:45', ''),
(114, 'admin', 'LOGIN', '2024-05-08 16:18:09', ''),
(115, 'admin', 'CREAR CLASIFICADO', '2024-05-08 17:13:42', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 24\n    [clasificado_cuartos_e7] => 44\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 0\n    [clasificado_semis_e2] => 0\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(116, 'admin', 'EDITAR PARTIDO', '2024-05-08 20:54:22', 'Array\n(\n    [numero] => 2\n    [equipo1] => 3\n    [equipo2] => 5\n    [fecha] => 2024-05-09\n    [hora] => 14:00:00\n    [fase] => 2\n    [valor1] => 3\n    [valor2] => 2\n    [ganador] => 3\n    [id] => 2\n)\n'),
(117, 'admin', 'LOGIN', '2024-05-09 08:29:35', ''),
(118, 'admin', 'LOGIN', '2024-05-09 08:30:53', ''),
(119, 'admin', 'EDITAR PARTIDO', '2024-05-09 09:45:56', 'Array\n(\n    [numero] => 2\n    [equipo1] => 3\n    [equipo2] => 5\n    [fecha] => 2024-05-09\n    [hora] => 14:00:00\n    [fase] => 2\n    [valor1] => 3\n    [valor2] => 1\n    [ganador] => 3\n    [id] => 2\n)\n'),
(120, 'admin', 'EDITAR PARTIDO', '2024-05-09 09:47:23', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 3\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(121, 'admin', '', '2024-05-09 11:24:45', ''),
(122, 'admin', 'EDITAR CLASIFICADO', '2024-05-09 11:36:06', 'Array\n(\n    [clasificado_octavos_a1] => 33\n    [clasificado_octavos_a2] => 34\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 0\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 24\n    [clasificado_cuartos_e7] => 44\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 0\n    [clasificado_semis_e2] => 0\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(123, 'admin', '', '2024-05-09 11:36:26', ''),
(124, 'admin', 'EDITAR FASE', '2024-05-09 15:31:06', 'Array\n(\n    [estado] => 1\n    [titulo] => Otros\n    [fecha1] => 2024-05-09T15:33\n    [fecha2] => 2024-05-11T09:03\n    [id] => 6\n)\n'),
(125, 'admin', 'EDITAR PARTIDO', '2024-05-09 15:32:36', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-05-08\n    [hora] => 15:00:00\n    [fase] => 1\n    [valor1] => 3\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(126, 'admin', 'EDITAR PARTIDO', '2024-05-09 15:34:44', 'Array\n(\n    [numero] => 2\n    [equipo1] => 3\n    [equipo2] => 5\n    [fecha] => 2024-05-09\n    [hora] => 14:00:00\n    [fase] => 2\n    [valor1] => 3\n    [valor2] => 1\n    [ganador] => 3\n    [id] => 2\n)\n'),
(127, 'admin', 'EDITAR CLASIFICADO', '2024-05-09 16:01:51', 'Array\n(\n    [clasificado_octavos_a1] => 33\n    [clasificado_octavos_a2] => 34\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 24\n    [clasificado_cuartos_e7] => 44\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 0\n    [clasificado_semis_e2] => 0\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(128, 'admin', 'CREAR GRUPO', '2024-05-10 12:40:06', 'Array\n(\n    [nombre] => Grupo A\n    [id] => 1\n)\n'),
(129, 'admin', 'CREAR GRUPO', '2024-05-10 12:40:15', 'Array\n(\n    [nombre] => Grupo B\n    [id] => 2\n)\n'),
(130, 'admin', 'CREAR GRUPO', '2024-05-10 12:40:24', 'Array\n(\n    [nombre] => Grupo C\n    [id] => 3\n)\n'),
(131, 'admin', 'CREAR GRUPO', '2024-05-10 12:40:32', 'Array\n(\n    [nombre] => Grupo D\n    [id] => 4\n)\n'),
(132, 'admin', 'CREAR EQUIPO', '2024-05-10 12:47:50', 'Array\n(\n    [codigo] => ARG\n    [nombre] => Argentina\n    [bandera] => \n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 1\n)\n'),
(133, 'admin', 'CREAR EQUIPO', '2024-05-10 12:48:42', 'Array\n(\n    [codigo] => PER\n    [nombre] => PER&Uacute;\n    [bandera] => \n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 2\n)\n'),
(134, 'admin', 'CREAR EQUIPO', '2024-05-10 12:49:26', 'Array\n(\n    [codigo] => CHL\n    [nombre] => CHILE\n    [bandera] => \n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 3\n)\n'),
(135, 'admin', 'CREAR EQUIPO', '2024-05-10 12:49:40', 'Array\n(\n    [codigo] => CND\n    [nombre] => CANAD&Aacute;\n    [bandera] => \n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 4\n)\n'),
(136, 'admin', 'CREAR EQUIPO', '2024-05-10 12:52:24', 'Array\n(\n    [codigo] => ECU\n    [nombre] => ECUADOR\n    [bandera] => \n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 5\n)\n'),
(137, 'admin', 'CREAR EQUIPO', '2024-05-10 12:52:39', 'Array\n(\n    [codigo] => VNZ\n    [nombre] => VENEZUELA\n    [bandera] => \n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 6\n)\n'),
(138, 'admin', 'CREAR EQUIPO', '2024-05-10 12:53:23', 'Array\n(\n    [codigo] => JMC\n    [nombre] => JAMAICA\n    [bandera] => jamaica.png\n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 7\n)\n'),
(139, 'admin', 'CREAR EQUIPO', '2024-05-10 12:53:45', 'Array\n(\n    [codigo] => ECU\n    [nombre] => ECUADOR\n    [bandera] => \n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 8\n)\n'),
(140, 'admin', 'BORRAR EQUIPO', '2024-05-10 12:53:54', 'Array\n(\n    [id] => 8\n    [codigo] => ECU\n    [nombre] => ECUADOR\n    [bandera] => \n    [grupo] => 2\n    [orden] => 8\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n)\n'),
(141, 'admin', 'CREAR EQUIPO', '2024-05-10 12:54:30', 'Array\n(\n    [codigo] => MXC\n    [nombre] => M&Eacute;XICO\n    [bandera] => hv6zuupq-ipf97vq3.png\n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 9\n)\n'),
(142, 'admin', 'CREAR EQUIPO', '2024-05-10 12:55:26', 'Array\n(\n    [codigo] => BOL\n    [nombre] => BOLIVIA\n    [bandera] => ewviltht-ik5zg8xj.png\n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 10\n)\n'),
(143, 'admin', 'CREAR EQUIPO', '2024-05-10 12:55:47', 'Array\n(\n    [codigo] => URU\n    [nombre] => URUGUAY\n    [bandera] => pvtmslht-wdz4jmrq.png\n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 11\n)\n'),
(144, 'admin', 'CREAR EQUIPO', '2024-05-10 12:56:11', 'Array\n(\n    [codigo] => USA\n    [nombre] => EE. UU.\n    [bandera] => xfxmid8k-mpdhokt3.png\n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 12\n)\n'),
(145, 'admin', 'CREAR EQUIPO', '2024-05-10 12:56:28', 'Array\n(\n    [codigo] => PNM\n    [nombre] => PANAM&Aacute;\n    [bandera] => wyjftaa6-6yxdoua1.png\n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 13\n)\n'),
(146, 'admin', 'CREAR EQUIPO', '2024-05-10 12:57:17', 'Array\n(\n    [codigo] => PRG\n    [nombre] => PARAGUAY\n    [bandera] => omtyzru0-amy8ktbk.png\n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 14\n)\n');
INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(147, 'admin', 'CREAR EQUIPO', '2024-05-10 12:57:42', 'Array\n(\n    [codigo] => COL\n    [nombre] => COLOMBIA\n    [bandera] => y70axoth-c6kvdo5f.png\n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 15\n)\n'),
(148, 'admin', 'CREAR EQUIPO', '2024-05-10 12:58:00', 'Array\n(\n    [codigo] => BRA\n    [nombre] => BRASIL\n    [bandera] => s4kz1kjc-88latdnt.png\n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 16\n)\n'),
(149, 'admin', 'CREAR EQUIPO', '2024-05-10 12:59:14', 'Array\n(\n    [codigo] => CTR\n    [nombre] => COSTA RICA\n    [bandera] => ssvtj7ne-kfxjzrxu.png\n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 17\n)\n'),
(150, 'admin', 'EDITAR EQUIPO', '2024-05-10 14:22:13', 'Array\n(\n    [codigo] => ARG\n    [nombre] => Argentina\n    [bandera] => obxjg3rq-nbwcl0de.png\n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 1\n)\n'),
(151, 'admin', 'EDITAR EQUIPO', '2024-05-10 14:22:24', 'Array\n(\n    [codigo] => PER\n    [nombre] => PER&Uacute;\n    [bandera] => um9j2zt0-6azroxfp.png\n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 2\n)\n'),
(152, 'admin', 'EDITAR EQUIPO', '2024-05-10 14:22:34', 'Array\n(\n    [codigo] => CHL\n    [nombre] => CHILE\n    [bandera] => 6v3sirme-dyps3tqd.png\n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 3\n)\n'),
(153, 'admin', 'EDITAR EQUIPO', '2024-05-10 14:22:50', 'Array\n(\n    [codigo] => CND\n    [nombre] => CANAD&Aacute;\n    [bandera] => bymi0wan-eqlgvn18.png\n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 4\n)\n'),
(154, 'admin', 'EDITAR EQUIPO', '2024-05-10 14:23:01', 'Array\n(\n    [codigo] => ECU\n    [nombre] => ECUADOR\n    [bandera] => nun1o8jc-ipf97vq3.png\n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 5\n)\n'),
(155, 'admin', 'EDITAR EQUIPO', '2024-05-10 14:23:16', 'Array\n(\n    [codigo] => VNZ\n    [nombre] => VENEZUELA\n    [bandera] => 6esamvs0-jclzerll.png\n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 6\n)\n'),
(156, 'admin', 'CREAR PARTIDO', '2024-05-10 14:28:18', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-06-06\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 1\n)\n'),
(157, 'admin', 'CREAR PARTIDO', '2024-05-10 14:29:14', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 2\n)\n'),
(158, 'admin', 'EDITAR PARTIDO', '2024-05-10 14:29:24', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(159, 'admin', 'CREAR PARTIDO', '2024-05-10 14:30:02', 'Array\n(\n    [numero] => 3\n    [equipo1] => 5\n    [equipo2] => 6\n    [fecha] => 2024-06-22\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 3\n)\n'),
(160, 'admin', 'CREAR PARTIDO', '2024-05-10 14:30:44', 'Array\n(\n    [numero] => 4\n    [equipo1] => 9\n    [equipo2] => 7\n    [fecha] => 2024-06-22\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 4\n)\n'),
(161, 'admin', 'CREAR PARTIDO', '2024-05-10 14:36:17', 'Array\n(\n    [numero] => 5\n    [equipo1] => 12\n    [equipo2] => 10\n    [fecha] => 2024-06-23\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 5\n)\n'),
(162, 'admin', 'EDITAR PARTIDO', '2024-05-10 14:37:04', 'Array\n(\n    [numero] => 5\n    [equipo1] => 12\n    [equipo2] => 10\n    [fecha] => 2024-06-23\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 5\n)\n'),
(163, 'admin', 'CREAR PARTIDO', '2024-05-10 14:37:54', 'Array\n(\n    [numero] => 6\n    [equipo1] => 11\n    [equipo2] => 13\n    [fecha] => 2024-06-23\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 6\n)\n'),
(164, 'admin', 'CREAR PARTIDO', '2024-05-10 14:38:34', 'Array\n(\n    [numero] => 7\n    [equipo1] => 15\n    [equipo2] => 14\n    [fecha] => 2024-06-24\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 7\n)\n'),
(165, 'admin', 'CREAR PARTIDO', '2024-05-10 14:39:02', 'Array\n(\n    [numero] => 8\n    [equipo1] => 16\n    [equipo2] => 17\n    [fecha] => 2024-06-24\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 8\n)\n'),
(166, 'admin', '', '2024-05-10 14:48:34', ''),
(167, 'admin', '', '2024-05-10 14:48:34', ''),
(168, 'admin', '', '2024-05-10 14:48:34', ''),
(169, 'admin', '', '2024-05-10 14:48:34', ''),
(170, 'admin', '', '2024-05-10 14:48:34', ''),
(171, 'admin', 'EDITAR FASE', '2024-05-10 15:18:01', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-07T23:00\n    [fecha2] => 2024-05-11T23:11\n    [id] => 3\n)\n'),
(172, 'admin', 'EDITAR EQUIPO', '2024-05-10 15:18:28', 'Array\n(\n    [codigo] => ARG\n    [nombre] => ARGENTINA\n    [bandera] => obxjg3rq-nbwcl0de.png\n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 1\n)\n'),
(173, 'admin', 'CREAR PARTIDO', '2024-05-10 15:19:06', 'Array\n(\n    [numero] => 9\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-06-25\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 9\n)\n'),
(174, 'admin', 'CREAR PARTIDO', '2024-05-10 15:19:59', 'Array\n(\n    [numero] => 10\n    [equipo1] => 3\n    [equipo2] => 1\n    [fecha] => 2024-06-25\n    [hora] => 20:19\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 10\n)\n'),
(175, 'admin', 'CREAR PARTIDO', '2024-05-10 15:20:43', 'Array\n(\n    [numero] => 11\n    [equipo1] => 5\n    [equipo2] => 7\n    [fecha] => 2024-05-26\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 11\n)\n'),
(176, 'admin', 'CREAR PARTIDO', '2024-05-10 15:22:57', 'Array\n(\n    [numero] => 12\n    [equipo1] => 6\n    [equipo2] => 9\n    [fecha] => 2024-06-26\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 12\n)\n'),
(177, 'admin', 'CREAR PARTIDO', '2024-05-10 15:23:44', 'Array\n(\n    [numero] => 13\n    [equipo1] => 13\n    [equipo2] => 9\n    [fecha] => 2024-06-27\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 13\n)\n'),
(178, 'admin', 'CREAR PARTIDO', '2024-05-10 15:24:16', 'Array\n(\n    [numero] => 14\n    [equipo1] => 11\n    [equipo2] => 10\n    [fecha] => 2024-06-27\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 14\n)\n'),
(179, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:25:01', 'Array\n(\n    [numero] => 13\n    [equipo1] => 13\n    [equipo2] => 12\n    [fecha] => 2024-06-27\n    [hora] => 17:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 13\n)\n'),
(180, 'admin', 'CREAR PARTIDO', '2024-05-10 15:25:37', 'Array\n(\n    [numero] => 15\n    [equipo1] => 15\n    [equipo2] => 17\n    [fecha] => 2024-06-28\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 15\n)\n'),
(181, 'admin', 'CREAR PARTIDO', '2024-05-10 15:25:58', 'Array\n(\n    [numero] => 16\n    [equipo1] => 14\n    [equipo2] => 16\n    [fecha] => 2024-06-28\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 16\n)\n'),
(182, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:27:07', 'Array\n(\n    [numero] => 11\n    [equipo1] => 5\n    [equipo2] => 7\n    [fecha] => 2024-06-26\n    [hora] => 17:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 11\n)\n'),
(183, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:28:17', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(184, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:29:34', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 18:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(185, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:29:48', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 16:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(186, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:31:01', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 15:31\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(187, 'admin', '', '2024-05-10 15:43:57', ''),
(188, 'admin', '', '2024-05-10 15:43:57', ''),
(189, 'admin', '', '2024-05-10 15:43:57', ''),
(190, 'admin', '', '2024-05-10 15:43:57', ''),
(191, 'admin', '', '2024-05-10 15:43:57', ''),
(192, 'admin', '', '2024-05-10 15:43:57', ''),
(193, 'admin', '', '2024-05-10 15:43:57', ''),
(194, 'admin', '', '2024-05-10 15:43:57', ''),
(195, 'admin', '', '2024-05-10 15:43:57', ''),
(196, 'admin', '', '2024-05-10 15:43:57', ''),
(197, 'admin', '', '2024-05-10 15:43:57', ''),
(198, 'admin', '', '2024-05-10 15:43:57', ''),
(199, 'admin', '', '2024-05-10 15:43:57', ''),
(200, 'admin', '', '2024-05-10 15:43:57', ''),
(201, 'admin', '', '2024-05-10 15:43:57', ''),
(202, 'admin', '', '2024-05-10 15:43:57', ''),
(203, 'admin', '', '2024-05-10 15:44:01', ''),
(204, 'admin', '', '2024-05-10 15:44:01', ''),
(205, 'admin', '', '2024-05-10 15:44:01', ''),
(206, 'admin', '', '2024-05-10 15:44:01', ''),
(207, 'admin', '', '2024-05-10 15:44:01', ''),
(208, 'admin', '', '2024-05-10 15:44:01', ''),
(209, 'admin', '', '2024-05-10 15:44:01', ''),
(210, 'admin', '', '2024-05-10 15:44:01', ''),
(211, 'admin', '', '2024-05-10 15:44:01', ''),
(212, 'admin', '', '2024-05-10 15:44:01', ''),
(213, 'admin', '', '2024-05-10 15:44:02', ''),
(214, 'admin', '', '2024-05-10 15:44:02', ''),
(215, 'admin', '', '2024-05-10 15:44:02', ''),
(216, 'admin', '', '2024-05-10 15:44:02', ''),
(217, 'admin', '', '2024-05-10 15:44:02', ''),
(218, 'admin', '', '2024-05-10 15:44:02', ''),
(219, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:58:30', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 18:31\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(220, 'admin', 'EDITAR PARTIDO', '2024-05-10 15:58:56', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(221, 'admin', 'EDITAR CONFIG', '2024-05-10 16:02:10', 'Array\n(\n    [config_valorcuota] => 50719\n    [config_interes] => 1.14\n    [config_horasminimo] => 3\n    [config_gruposmarcador] => 150\n    [config_gruposequipo] => 20\n    [config_gruposempate] => 10\n    [config_1puestooctavos] => 100\n    [config_2puestooctavos] => 10\n    [config_octavosmarcador] => 200\n    [config_octavosequipo] => 30\n    [config_cuartosclasificado] => 150\n    [config_cuartosmarcador] => 200\n    [config_cuartosganador] => 30\n    [config_semisclasificado] => 150\n    [config_semismarcador] => 250\n    [config_semisequipo] => 40\n    [config_finalesmarcadores] => 300\n    [config_campeon] => 500\n    [config_subcampeon] => 250\n    [config_tercero] => 200\n    [config_cuarto] => 50\n    [config_goleador] => 150\n    [config_valla] => 150\n    [config_id] => 1\n)\n'),
(222, 'admin', 'EDITAR PARTIDO', '2024-05-10 16:08:30', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 19:09\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 1\n)\n'),
(223, 'admin', '', '2024-05-10 16:09:58', ''),
(224, 'admin', '', '2024-05-10 16:09:58', ''),
(225, 'admin', '', '2024-05-10 16:09:58', ''),
(226, 'admin', '', '2024-05-10 16:09:58', ''),
(227, 'admin', '', '2024-05-10 16:09:58', ''),
(228, 'admin', '', '2024-05-10 16:09:58', ''),
(229, 'admin', '', '2024-05-10 16:09:58', ''),
(230, 'admin', '', '2024-05-10 16:09:58', ''),
(231, 'admin', '', '2024-05-10 16:09:58', ''),
(232, 'admin', '', '2024-05-10 16:09:58', ''),
(233, 'admin', '', '2024-05-10 16:09:58', ''),
(234, 'admin', '', '2024-05-10 16:09:58', ''),
(235, 'admin', '', '2024-05-10 16:09:58', ''),
(236, 'admin', '', '2024-05-10 16:09:58', ''),
(237, 'admin', '', '2024-05-10 16:09:58', ''),
(238, 'admin', '', '2024-05-10 16:09:58', ''),
(239, 'admin', '', '2024-05-10 16:10:03', ''),
(240, 'admin', '', '2024-05-10 16:10:03', ''),
(241, 'admin', '', '2024-05-10 16:10:03', ''),
(242, 'admin', '', '2024-05-10 16:10:03', ''),
(243, 'admin', '', '2024-05-10 16:10:03', ''),
(244, 'admin', '', '2024-05-10 16:10:03', ''),
(245, 'admin', '', '2024-05-10 16:10:03', ''),
(246, 'admin', '', '2024-05-10 16:10:03', ''),
(247, 'admin', '', '2024-05-10 16:10:03', ''),
(248, 'admin', '', '2024-05-10 16:10:03', ''),
(249, 'admin', '', '2024-05-10 16:10:03', ''),
(250, 'admin', '', '2024-05-10 16:10:03', ''),
(251, 'admin', '', '2024-05-10 16:10:03', ''),
(252, 'admin', '', '2024-05-10 16:10:03', ''),
(253, 'admin', '', '2024-05-10 16:10:03', ''),
(254, 'admin', '', '2024-05-10 16:10:11', ''),
(255, 'admin', '', '2024-05-10 16:10:11', ''),
(256, 'admin', '', '2024-05-10 16:10:11', ''),
(257, 'admin', '', '2024-05-10 16:10:11', ''),
(258, 'admin', '', '2024-05-10 16:10:11', ''),
(259, 'admin', '', '2024-05-10 16:10:11', ''),
(260, 'admin', '', '2024-05-10 16:10:11', ''),
(261, 'admin', '', '2024-05-10 16:10:11', ''),
(262, 'admin', '', '2024-05-10 16:10:11', ''),
(263, 'admin', '', '2024-05-10 16:10:11', ''),
(264, 'admin', '', '2024-05-10 16:10:11', ''),
(265, 'admin', '', '2024-05-10 16:10:11', ''),
(266, 'admin', '', '2024-05-10 16:10:11', ''),
(267, 'admin', '', '2024-05-10 16:10:11', ''),
(268, 'admin', '', '2024-05-10 16:10:11', ''),
(269, 'admin', '', '2024-05-10 16:10:18', ''),
(270, 'admin', '', '2024-05-10 16:10:18', ''),
(271, 'admin', '', '2024-05-10 16:10:18', ''),
(272, 'admin', '', '2024-05-10 16:10:18', ''),
(273, 'admin', '', '2024-05-10 16:10:18', ''),
(274, 'admin', '', '2024-05-10 16:10:18', ''),
(275, 'admin', '', '2024-05-10 16:10:18', ''),
(276, 'admin', '', '2024-05-10 16:10:18', ''),
(277, 'admin', '', '2024-05-10 16:10:18', ''),
(278, 'admin', '', '2024-05-10 16:10:18', ''),
(279, 'admin', '', '2024-05-10 16:10:18', ''),
(280, 'admin', '', '2024-05-10 16:10:18', ''),
(281, 'admin', '', '2024-05-10 16:10:18', ''),
(282, 'admin', '', '2024-05-10 16:10:18', ''),
(283, 'admin', '', '2024-05-10 16:10:18', ''),
(284, 'admin', '', '2024-05-10 16:15:17', ''),
(285, 'admin', '', '2024-05-10 16:15:17', ''),
(286, 'admin', '', '2024-05-10 16:15:17', ''),
(287, 'admin', '', '2024-05-10 16:15:17', ''),
(288, 'admin', '', '2024-05-10 16:15:17', ''),
(289, 'admin', '', '2024-05-10 16:15:17', ''),
(290, 'admin', '', '2024-05-10 16:15:17', ''),
(291, 'admin', '', '2024-05-10 16:15:17', ''),
(292, 'admin', '', '2024-05-10 16:15:17', ''),
(293, 'admin', '', '2024-05-10 16:15:17', ''),
(294, 'admin', '', '2024-05-10 16:15:17', ''),
(295, 'admin', '', '2024-05-10 16:15:17', ''),
(296, 'admin', '', '2024-05-10 16:15:17', ''),
(297, 'admin', '', '2024-05-10 16:15:17', ''),
(298, 'admin', '', '2024-05-10 16:15:17', ''),
(299, 'admin', '', '2024-05-10 16:15:27', ''),
(300, 'admin', '', '2024-05-10 16:15:27', ''),
(301, 'admin', '', '2024-05-10 16:15:27', ''),
(302, 'admin', '', '2024-05-10 16:15:27', ''),
(303, 'admin', '', '2024-05-10 16:15:27', ''),
(304, 'admin', '', '2024-05-10 16:15:27', ''),
(305, 'admin', '', '2024-05-10 16:15:27', ''),
(306, 'admin', '', '2024-05-10 16:15:27', ''),
(307, 'admin', '', '2024-05-10 16:15:27', ''),
(308, 'admin', '', '2024-05-10 16:15:27', ''),
(309, 'admin', '', '2024-05-10 16:15:27', ''),
(310, 'admin', '', '2024-05-10 16:15:27', ''),
(311, 'admin', '', '2024-05-10 16:15:27', ''),
(312, 'admin', '', '2024-05-10 16:15:27', ''),
(313, 'admin', '', '2024-05-10 16:15:27', ''),
(314, 'admin', '', '2024-05-10 16:21:45', ''),
(315, 'admin', '', '2024-05-10 16:21:45', ''),
(316, 'admin', '', '2024-05-10 16:21:45', ''),
(317, 'admin', '', '2024-05-10 16:21:45', ''),
(318, 'admin', '', '2024-05-10 16:21:45', ''),
(319, 'admin', '', '2024-05-10 16:21:45', ''),
(320, 'admin', '', '2024-05-10 16:21:45', ''),
(321, 'admin', '', '2024-05-10 16:21:45', ''),
(322, 'admin', '', '2024-05-10 16:21:45', ''),
(323, 'admin', '', '2024-05-10 16:21:45', ''),
(324, 'admin', '', '2024-05-10 16:21:45', ''),
(325, 'admin', '', '2024-05-10 16:21:45', ''),
(326, 'admin', '', '2024-05-10 16:21:45', ''),
(327, 'admin', '', '2024-05-10 16:21:45', ''),
(328, 'admin', '', '2024-05-10 16:21:46', ''),
(329, 'admin', '', '2024-05-10 16:22:15', ''),
(330, 'admin', '', '2024-05-10 16:22:15', ''),
(331, 'admin', '', '2024-05-10 16:22:15', ''),
(332, 'admin', '', '2024-05-10 16:22:15', ''),
(333, 'admin', '', '2024-05-10 16:22:15', ''),
(334, 'admin', '', '2024-05-10 16:22:15', ''),
(335, 'admin', '', '2024-05-10 16:22:15', ''),
(336, 'admin', '', '2024-05-10 16:22:15', ''),
(337, 'admin', '', '2024-05-10 16:22:15', ''),
(338, 'admin', '', '2024-05-10 16:22:15', ''),
(339, 'admin', '', '2024-05-10 16:22:15', ''),
(340, 'admin', '', '2024-05-10 16:22:15', ''),
(341, 'admin', '', '2024-05-10 16:22:15', ''),
(342, 'admin', '', '2024-05-10 16:22:15', ''),
(343, 'admin', '', '2024-05-10 16:22:15', ''),
(344, 'admin', '', '2024-05-10 16:22:20', ''),
(345, 'admin', '', '2024-05-10 16:22:20', ''),
(346, 'admin', '', '2024-05-10 16:22:20', ''),
(347, 'admin', '', '2024-05-10 16:22:20', ''),
(348, 'admin', '', '2024-05-10 16:22:20', ''),
(349, 'admin', '', '2024-05-10 16:22:20', ''),
(350, 'admin', '', '2024-05-10 16:22:20', ''),
(351, 'admin', '', '2024-05-10 16:22:20', ''),
(352, 'admin', '', '2024-05-10 16:22:20', ''),
(353, 'admin', '', '2024-05-10 16:22:20', ''),
(354, 'admin', '', '2024-05-10 16:22:20', ''),
(355, 'admin', '', '2024-05-10 16:22:20', ''),
(356, 'admin', '', '2024-05-10 16:22:20', ''),
(357, 'admin', '', '2024-05-10 16:22:20', ''),
(358, 'admin', '', '2024-05-10 16:22:20', ''),
(359, 'admin', 'CREAR PARTIDO', '2024-05-10 16:55:34', 'Array\n(\n    [numero] => 17\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-06-29\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 17\n)\n'),
(360, 'admin', 'CREAR PARTIDO', '2024-05-10 16:56:00', 'Array\n(\n    [numero] => 18\n    [equipo1] => 4\n    [equipo2] => 3\n    [fecha] => 2024-06-29\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 18\n)\n'),
(361, 'admin', 'CREAR PARTIDO', '2024-05-10 16:56:43', 'Array\n(\n    [numero] => 19\n    [equipo1] => 7\n    [equipo2] => 6\n    [fecha] => 2024-06-30\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 19\n)\n'),
(362, 'admin', 'CREAR PARTIDO', '2024-05-10 16:57:18', 'Array\n(\n    [numero] => 20\n    [equipo1] => 9\n    [equipo2] => 5\n    [fecha] => 2024-06-30\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 20\n)\n'),
(363, 'admin', 'CREAR PARTIDO', '2024-05-10 16:58:04', 'Array\n(\n    [numero] => 21\n    [equipo1] => 10\n    [equipo2] => 13\n    [fecha] => 2024-07-01\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 21\n)\n'),
(364, 'admin', 'CREAR PARTIDO', '2024-05-10 16:58:43', 'Array\n(\n    [numero] => 22\n    [equipo1] => 12\n    [equipo2] => 11\n    [fecha] => 2024-07-01\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 22\n)\n'),
(365, 'admin', 'CREAR PARTIDO', '2024-05-10 16:59:01', 'Array\n(\n    [numero] => 23\n    [equipo1] => 16\n    [equipo2] => 15\n    [fecha] => 2024-07-02\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 23\n)\n'),
(366, 'admin', 'CREAR PARTIDO', '2024-05-10 16:59:36', 'Array\n(\n    [numero] => 24\n    [equipo1] => 17\n    [equipo2] => 14\n    [fecha] => 2024-07-02\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => 0\n    [id] => 24\n)\n'),
(367, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:18:47', 'Array\n(\n    [numero] => 20\n    [equipo1] => 9\n    [equipo2] => 5\n    [fecha] => 2024-06-30\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 0\n    [ganador] => -1\n    [id] => 20\n)\n'),
(368, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:19:40', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 19:09:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => \n    [ganador] => \n    [id] => 1\n)\n'),
(369, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:19:59', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => \n    [ganador] => \n    [id] => 2\n)\n'),
(370, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:20:35', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 19:09:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => -1\n    [id] => 1\n)\n'),
(371, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:22:00', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 4\n    [fecha] => 2024-05-10\n    [hora] => 19:09:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 1\n)\n'),
(372, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:23:46', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 0\n    [valor2] => 2\n    [ganador] => 3\n    [id] => 2\n)\n'),
(373, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:24:17', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(374, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:26:29', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(375, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:26:48', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(376, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:29:15', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(377, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:29:37', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(378, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:29:38', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(379, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:29:58', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(380, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:31:38', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(381, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:31:45', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(382, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:31:46', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(383, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:01', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(384, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:01', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(385, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:02', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(386, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:02', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(387, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:03', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(388, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:03', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(389, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:03', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(390, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:03', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(391, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:32:53', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(392, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:34:01', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(393, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:34:25', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(394, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:34:26', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(395, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:34:45', 'Array\n(\n    [id] => \n)\n'),
(396, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:34:52', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(397, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:35:11', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(398, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:36:40', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(399, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:36:41', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(400, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:36:41', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(401, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:36:42', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(402, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:23', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(403, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:23', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(404, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:24', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(405, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:24', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(406, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:24', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(407, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:39', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(408, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:40', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(409, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:37:40', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(410, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:38:03', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(411, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:38:23', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(412, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:38:27', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(413, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:38:28', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(414, 'admin', '', '2024-05-10 17:38:43', ''),
(415, 'admin', '', '2024-05-10 17:38:43', ''),
(416, 'admin', '', '2024-05-10 17:38:43', ''),
(417, 'admin', '', '2024-05-10 17:38:43', ''),
(418, 'admin', '', '2024-05-10 17:38:43', ''),
(419, 'admin', '', '2024-05-10 17:38:43', ''),
(420, 'admin', '', '2024-05-10 17:38:43', ''),
(421, 'admin', '', '2024-05-10 17:38:43', ''),
(422, 'admin', '', '2024-05-10 17:38:43', ''),
(423, 'admin', '', '2024-05-10 17:38:43', ''),
(424, 'admin', '', '2024-05-10 17:38:43', ''),
(425, 'admin', '', '2024-05-10 17:38:43', ''),
(426, 'admin', '', '2024-05-10 17:38:43', ''),
(427, 'admin', '', '2024-05-10 17:38:43', ''),
(428, 'admin', '', '2024-05-10 17:38:43', ''),
(429, 'admin', '', '2024-05-10 17:38:43', ''),
(430, 'admin', '', '2024-05-10 17:38:43', ''),
(431, 'admin', '', '2024-05-10 17:38:43', ''),
(432, 'admin', '', '2024-05-10 17:38:43', ''),
(433, 'admin', '', '2024-05-10 17:38:43', ''),
(434, 'admin', '', '2024-05-10 17:38:43', ''),
(435, 'admin', '', '2024-05-10 17:38:43', ''),
(436, 'admin', '', '2024-05-10 17:38:43', ''),
(437, 'admin', '', '2024-05-10 17:38:54', ''),
(438, 'admin', '', '2024-05-10 17:38:54', ''),
(439, 'admin', '', '2024-05-10 17:38:54', ''),
(440, 'admin', '', '2024-05-10 17:38:54', ''),
(441, 'admin', '', '2024-05-10 17:38:54', ''),
(442, 'admin', '', '2024-05-10 17:38:54', ''),
(443, 'admin', '', '2024-05-10 17:38:54', ''),
(444, 'admin', '', '2024-05-10 17:38:54', ''),
(445, 'admin', '', '2024-05-10 17:38:54', ''),
(446, 'admin', '', '2024-05-10 17:38:54', ''),
(447, 'admin', '', '2024-05-10 17:38:54', ''),
(448, 'admin', '', '2024-05-10 17:38:54', ''),
(449, 'admin', '', '2024-05-10 17:38:54', ''),
(450, 'admin', '', '2024-05-10 17:38:54', ''),
(451, 'admin', '', '2024-05-10 17:38:54', ''),
(452, 'admin', '', '2024-05-10 17:38:54', ''),
(453, 'admin', '', '2024-05-10 17:38:54', ''),
(454, 'admin', '', '2024-05-10 17:38:54', ''),
(455, 'admin', '', '2024-05-10 17:38:54', ''),
(456, 'admin', '', '2024-05-10 17:38:54', ''),
(457, 'admin', '', '2024-05-10 17:38:54', ''),
(458, 'admin', '', '2024-05-10 17:38:54', ''),
(459, 'admin', '', '2024-05-10 17:38:54', ''),
(460, 'admin', '', '2024-05-10 17:43:24', ''),
(461, 'admin', '', '2024-05-10 17:43:24', ''),
(462, 'admin', '', '2024-05-10 17:43:24', ''),
(463, 'admin', '', '2024-05-10 17:43:24', ''),
(464, 'admin', '', '2024-05-10 17:43:24', ''),
(465, 'admin', '', '2024-05-10 17:43:24', ''),
(466, 'admin', '', '2024-05-10 17:43:24', ''),
(467, 'admin', '', '2024-05-10 17:43:24', ''),
(468, 'admin', '', '2024-05-10 17:43:24', ''),
(469, 'admin', '', '2024-05-10 17:43:24', ''),
(470, 'admin', '', '2024-05-10 17:43:24', ''),
(471, 'admin', '', '2024-05-10 17:43:24', ''),
(472, 'admin', '', '2024-05-10 17:43:24', ''),
(473, 'admin', '', '2024-05-10 17:43:24', ''),
(474, 'admin', '', '2024-05-10 17:43:24', ''),
(475, 'admin', '', '2024-05-10 17:43:24', ''),
(476, 'admin', '', '2024-05-10 17:43:24', ''),
(477, 'admin', '', '2024-05-10 17:43:24', ''),
(478, 'admin', '', '2024-05-10 17:43:24', ''),
(479, 'admin', '', '2024-05-10 17:43:24', ''),
(480, 'admin', '', '2024-05-10 17:43:24', ''),
(481, 'admin', '', '2024-05-10 17:43:24', ''),
(482, 'admin', '', '2024-05-10 17:43:24', ''),
(483, 'admin', '', '2024-05-10 17:44:14', ''),
(484, 'admin', '', '2024-05-10 17:44:14', ''),
(485, 'admin', '', '2024-05-10 17:44:14', ''),
(486, 'admin', '', '2024-05-10 17:44:14', ''),
(487, 'admin', '', '2024-05-10 17:44:14', ''),
(488, 'admin', '', '2024-05-10 17:44:14', ''),
(489, 'admin', '', '2024-05-10 17:44:14', ''),
(490, 'admin', '', '2024-05-10 17:44:14', ''),
(491, 'admin', '', '2024-05-10 17:44:14', ''),
(492, 'admin', '', '2024-05-10 17:44:14', ''),
(493, 'admin', '', '2024-05-10 17:44:14', ''),
(494, 'admin', '', '2024-05-10 17:44:14', ''),
(495, 'admin', '', '2024-05-10 17:44:14', ''),
(496, 'admin', '', '2024-05-10 17:44:14', ''),
(497, 'admin', '', '2024-05-10 17:44:14', ''),
(498, 'admin', '', '2024-05-10 17:44:14', ''),
(499, 'admin', '', '2024-05-10 17:44:14', ''),
(500, 'admin', '', '2024-05-10 17:44:14', ''),
(501, 'admin', '', '2024-05-10 17:44:14', ''),
(502, 'admin', '', '2024-05-10 17:44:14', ''),
(503, 'admin', '', '2024-05-10 17:44:14', ''),
(504, 'admin', '', '2024-05-10 17:44:14', ''),
(505, 'admin', '', '2024-05-10 17:44:14', ''),
(506, 'admin', '', '2024-05-10 17:45:12', ''),
(507, 'admin', '', '2024-05-10 17:45:12', ''),
(508, 'admin', '', '2024-05-10 17:45:12', ''),
(509, 'admin', '', '2024-05-10 17:45:12', ''),
(510, 'admin', '', '2024-05-10 17:45:12', ''),
(511, 'admin', '', '2024-05-10 17:45:12', ''),
(512, 'admin', '', '2024-05-10 17:45:12', ''),
(513, 'admin', '', '2024-05-10 17:45:12', ''),
(514, 'admin', '', '2024-05-10 17:45:12', ''),
(515, 'admin', '', '2024-05-10 17:45:12', ''),
(516, 'admin', '', '2024-05-10 17:45:12', ''),
(517, 'admin', '', '2024-05-10 17:45:12', ''),
(518, 'admin', '', '2024-05-10 17:45:12', ''),
(519, 'admin', '', '2024-05-10 17:45:12', ''),
(520, 'admin', '', '2024-05-10 17:45:12', ''),
(521, 'admin', '', '2024-05-10 17:45:12', ''),
(522, 'admin', '', '2024-05-10 17:45:12', ''),
(523, 'admin', '', '2024-05-10 17:45:12', ''),
(524, 'admin', '', '2024-05-10 17:45:12', ''),
(525, 'admin', '', '2024-05-10 17:45:12', ''),
(526, 'admin', '', '2024-05-10 17:45:12', ''),
(527, 'admin', '', '2024-05-10 17:45:12', ''),
(528, 'admin', '', '2024-05-10 17:45:12', ''),
(529, 'admin', '', '2024-05-10 17:46:26', ''),
(530, 'admin', '', '2024-05-10 17:46:26', ''),
(531, 'admin', '', '2024-05-10 17:46:26', ''),
(532, 'admin', '', '2024-05-10 17:46:26', ''),
(533, 'admin', '', '2024-05-10 17:46:26', ''),
(534, 'admin', '', '2024-05-10 17:46:26', ''),
(535, 'admin', '', '2024-05-10 17:46:26', ''),
(536, 'admin', '', '2024-05-10 17:46:26', ''),
(537, 'admin', '', '2024-05-10 17:46:26', ''),
(538, 'admin', '', '2024-05-10 17:46:26', ''),
(539, 'admin', '', '2024-05-10 17:46:26', ''),
(540, 'admin', '', '2024-05-10 17:46:26', ''),
(541, 'admin', '', '2024-05-10 17:46:26', ''),
(542, 'admin', '', '2024-05-10 17:46:26', ''),
(543, 'admin', '', '2024-05-10 17:46:26', ''),
(544, 'admin', '', '2024-05-10 17:46:26', ''),
(545, 'admin', '', '2024-05-10 17:46:26', ''),
(546, 'admin', '', '2024-05-10 17:46:26', ''),
(547, 'admin', '', '2024-05-10 17:46:26', ''),
(548, 'admin', '', '2024-05-10 17:46:26', ''),
(549, 'admin', '', '2024-05-10 17:46:26', ''),
(550, 'admin', '', '2024-05-10 17:46:26', ''),
(551, 'admin', '', '2024-05-10 17:46:26', ''),
(552, 'admin', '', '2024-05-10 17:47:32', ''),
(553, 'admin', '', '2024-05-10 17:47:32', ''),
(554, 'admin', '', '2024-05-10 17:47:32', ''),
(555, 'admin', '', '2024-05-10 17:47:32', ''),
(556, 'admin', '', '2024-05-10 17:47:32', ''),
(557, 'admin', '', '2024-05-10 17:47:32', ''),
(558, 'admin', '', '2024-05-10 17:47:32', ''),
(559, 'admin', '', '2024-05-10 17:47:32', ''),
(560, 'admin', '', '2024-05-10 17:47:32', ''),
(561, 'admin', '', '2024-05-10 17:47:32', ''),
(562, 'admin', '', '2024-05-10 17:47:32', ''),
(563, 'admin', '', '2024-05-10 17:47:32', ''),
(564, 'admin', '', '2024-05-10 17:47:32', ''),
(565, 'admin', '', '2024-05-10 17:47:32', ''),
(566, 'admin', '', '2024-05-10 17:47:32', ''),
(567, 'admin', '', '2024-05-10 17:47:32', ''),
(568, 'admin', '', '2024-05-10 17:47:32', ''),
(569, 'admin', '', '2024-05-10 17:47:32', ''),
(570, 'admin', '', '2024-05-10 17:47:32', ''),
(571, 'admin', '', '2024-05-10 17:47:32', ''),
(572, 'admin', '', '2024-05-10 17:47:32', ''),
(573, 'admin', '', '2024-05-10 17:47:32', ''),
(574, 'admin', '', '2024-05-10 17:47:32', ''),
(575, 'admin', '', '2024-05-10 17:48:56', ''),
(576, 'admin', '', '2024-05-10 17:48:56', ''),
(577, 'admin', '', '2024-05-10 17:48:56', ''),
(578, 'admin', '', '2024-05-10 17:48:56', ''),
(579, 'admin', '', '2024-05-10 17:48:56', ''),
(580, 'admin', '', '2024-05-10 17:48:56', ''),
(581, 'admin', '', '2024-05-10 17:48:56', ''),
(582, 'admin', '', '2024-05-10 17:48:56', ''),
(583, 'admin', '', '2024-05-10 17:48:56', ''),
(584, 'admin', '', '2024-05-10 17:48:56', ''),
(585, 'admin', '', '2024-05-10 17:48:56', ''),
(586, 'admin', '', '2024-05-10 17:48:56', ''),
(587, 'admin', '', '2024-05-10 17:48:56', ''),
(588, 'admin', '', '2024-05-10 17:48:56', ''),
(589, 'admin', '', '2024-05-10 17:48:56', ''),
(590, 'admin', '', '2024-05-10 17:48:56', ''),
(591, 'admin', '', '2024-05-10 17:48:56', ''),
(592, 'admin', '', '2024-05-10 17:48:56', ''),
(593, 'admin', '', '2024-05-10 17:48:56', ''),
(594, 'admin', '', '2024-05-10 17:48:56', ''),
(595, 'admin', '', '2024-05-10 17:48:56', ''),
(596, 'admin', '', '2024-05-10 17:48:56', ''),
(597, 'admin', '', '2024-05-10 17:48:56', ''),
(598, 'admin', '', '2024-05-10 17:49:09', ''),
(599, 'admin', '', '2024-05-10 17:49:09', ''),
(600, 'admin', '', '2024-05-10 17:49:09', ''),
(601, 'admin', '', '2024-05-10 17:49:09', ''),
(602, 'admin', '', '2024-05-10 17:49:09', ''),
(603, 'admin', '', '2024-05-10 17:49:09', ''),
(604, 'admin', '', '2024-05-10 17:49:09', ''),
(605, 'admin', '', '2024-05-10 17:49:09', ''),
(606, 'admin', '', '2024-05-10 17:49:09', ''),
(607, 'admin', '', '2024-05-10 17:49:09', ''),
(608, 'admin', '', '2024-05-10 17:49:09', ''),
(609, 'admin', '', '2024-05-10 17:49:09', ''),
(610, 'admin', '', '2024-05-10 17:49:09', ''),
(611, 'admin', '', '2024-05-10 17:49:09', ''),
(612, 'admin', '', '2024-05-10 17:49:09', ''),
(613, 'admin', '', '2024-05-10 17:49:09', ''),
(614, 'admin', '', '2024-05-10 17:49:09', ''),
(615, 'admin', '', '2024-05-10 17:49:09', ''),
(616, 'admin', '', '2024-05-10 17:49:09', ''),
(617, 'admin', '', '2024-05-10 17:49:09', ''),
(618, 'admin', '', '2024-05-10 17:49:09', ''),
(619, 'admin', '', '2024-05-10 17:49:09', ''),
(620, 'admin', '', '2024-05-10 17:49:09', ''),
(621, 'admin', '', '2024-05-10 17:49:10', ''),
(622, 'admin', '', '2024-05-10 17:49:10', ''),
(623, 'admin', '', '2024-05-10 17:49:10', ''),
(624, 'admin', '', '2024-05-10 17:49:10', ''),
(625, 'admin', '', '2024-05-10 17:49:10', ''),
(626, 'admin', '', '2024-05-10 17:49:10', ''),
(627, 'admin', '', '2024-05-10 17:49:10', ''),
(628, 'admin', '', '2024-05-10 17:49:10', ''),
(629, 'admin', '', '2024-05-10 17:49:10', ''),
(630, 'admin', '', '2024-05-10 17:49:10', ''),
(631, 'admin', '', '2024-05-10 17:49:10', ''),
(632, 'admin', '', '2024-05-10 17:49:10', ''),
(633, 'admin', '', '2024-05-10 17:49:10', ''),
(634, 'admin', '', '2024-05-10 17:49:10', ''),
(635, 'admin', '', '2024-05-10 17:49:10', ''),
(636, 'admin', '', '2024-05-10 17:49:10', ''),
(637, 'admin', '', '2024-05-10 17:49:10', ''),
(638, 'admin', '', '2024-05-10 17:49:10', ''),
(639, 'admin', '', '2024-05-10 17:49:10', ''),
(640, 'admin', '', '2024-05-10 17:49:10', ''),
(641, 'admin', '', '2024-05-10 17:49:10', ''),
(642, 'admin', '', '2024-05-10 17:49:10', ''),
(643, 'admin', '', '2024-05-10 17:49:10', ''),
(644, 'admin', '', '2024-05-10 17:49:33', ''),
(645, 'admin', '', '2024-05-10 17:49:33', ''),
(646, 'admin', '', '2024-05-10 17:49:33', ''),
(647, 'admin', '', '2024-05-10 17:49:33', ''),
(648, 'admin', '', '2024-05-10 17:49:33', ''),
(649, 'admin', '', '2024-05-10 17:49:33', ''),
(650, 'admin', '', '2024-05-10 17:49:33', ''),
(651, 'admin', '', '2024-05-10 17:49:33', ''),
(652, 'admin', '', '2024-05-10 17:49:33', ''),
(653, 'admin', '', '2024-05-10 17:49:33', ''),
(654, 'admin', '', '2024-05-10 17:49:33', ''),
(655, 'admin', '', '2024-05-10 17:49:33', ''),
(656, 'admin', '', '2024-05-10 17:49:33', ''),
(657, 'admin', '', '2024-05-10 17:49:33', ''),
(658, 'admin', '', '2024-05-10 17:49:33', ''),
(659, 'admin', '', '2024-05-10 17:49:33', ''),
(660, 'admin', '', '2024-05-10 17:49:33', ''),
(661, 'admin', '', '2024-05-10 17:49:33', ''),
(662, 'admin', '', '2024-05-10 17:49:33', ''),
(663, 'admin', '', '2024-05-10 17:49:33', ''),
(664, 'admin', '', '2024-05-10 17:49:33', ''),
(665, 'admin', '', '2024-05-10 17:49:33', ''),
(666, 'admin', '', '2024-05-10 17:49:33', ''),
(667, 'admin', '', '2024-05-10 17:49:56', ''),
(668, 'admin', '', '2024-05-10 17:49:56', ''),
(669, 'admin', '', '2024-05-10 17:49:56', ''),
(670, 'admin', '', '2024-05-10 17:49:56', ''),
(671, 'admin', '', '2024-05-10 17:49:56', ''),
(672, 'admin', '', '2024-05-10 17:49:56', ''),
(673, 'admin', '', '2024-05-10 17:49:56', ''),
(674, 'admin', '', '2024-05-10 17:49:56', ''),
(675, 'admin', '', '2024-05-10 17:49:56', ''),
(676, 'admin', '', '2024-05-10 17:49:56', ''),
(677, 'admin', '', '2024-05-10 17:49:56', ''),
(678, 'admin', '', '2024-05-10 17:49:56', ''),
(679, 'admin', '', '2024-05-10 17:49:56', ''),
(680, 'admin', '', '2024-05-10 17:49:56', ''),
(681, 'admin', '', '2024-05-10 17:49:56', ''),
(682, 'admin', '', '2024-05-10 17:49:56', ''),
(683, 'admin', '', '2024-05-10 17:49:56', ''),
(684, 'admin', '', '2024-05-10 17:49:56', ''),
(685, 'admin', '', '2024-05-10 17:49:56', ''),
(686, 'admin', '', '2024-05-10 17:49:56', ''),
(687, 'admin', '', '2024-05-10 17:49:56', ''),
(688, 'admin', '', '2024-05-10 17:49:56', ''),
(689, 'admin', '', '2024-05-10 17:49:56', ''),
(690, 'admin', '', '2024-05-10 17:50:15', ''),
(691, 'admin', '', '2024-05-10 17:50:15', ''),
(692, 'admin', '', '2024-05-10 17:50:15', ''),
(693, 'admin', '', '2024-05-10 17:50:15', ''),
(694, 'admin', '', '2024-05-10 17:50:15', ''),
(695, 'admin', '', '2024-05-10 17:50:15', ''),
(696, 'admin', '', '2024-05-10 17:50:15', ''),
(697, 'admin', '', '2024-05-10 17:50:15', ''),
(698, 'admin', '', '2024-05-10 17:50:15', ''),
(699, 'admin', '', '2024-05-10 17:50:15', ''),
(700, 'admin', '', '2024-05-10 17:50:15', ''),
(701, 'admin', '', '2024-05-10 17:50:15', ''),
(702, 'admin', '', '2024-05-10 17:50:15', ''),
(703, 'admin', '', '2024-05-10 17:50:15', ''),
(704, 'admin', '', '2024-05-10 17:50:15', ''),
(705, 'admin', '', '2024-05-10 17:50:15', ''),
(706, 'admin', '', '2024-05-10 17:50:15', ''),
(707, 'admin', '', '2024-05-10 17:50:15', ''),
(708, 'admin', '', '2024-05-10 17:50:15', ''),
(709, 'admin', '', '2024-05-10 17:50:15', ''),
(710, 'admin', '', '2024-05-10 17:50:15', ''),
(711, 'admin', '', '2024-05-10 17:50:15', ''),
(712, 'admin', '', '2024-05-10 17:50:15', ''),
(713, 'admin', '', '2024-05-10 17:50:16', ''),
(714, 'admin', '', '2024-05-10 17:50:16', ''),
(715, 'admin', '', '2024-05-10 17:50:16', ''),
(716, 'admin', '', '2024-05-10 17:50:16', ''),
(717, 'admin', '', '2024-05-10 17:50:16', ''),
(718, 'admin', '', '2024-05-10 17:50:16', ''),
(719, 'admin', '', '2024-05-10 17:50:16', ''),
(720, 'admin', '', '2024-05-10 17:50:16', ''),
(721, 'admin', '', '2024-05-10 17:50:16', ''),
(722, 'admin', '', '2024-05-10 17:50:16', ''),
(723, 'admin', '', '2024-05-10 17:50:16', ''),
(724, 'admin', '', '2024-05-10 17:50:16', ''),
(725, 'admin', '', '2024-05-10 17:50:16', ''),
(726, 'admin', '', '2024-05-10 17:50:16', ''),
(727, 'admin', '', '2024-05-10 17:50:16', ''),
(728, 'admin', '', '2024-05-10 17:50:16', ''),
(729, 'admin', '', '2024-05-10 17:50:16', ''),
(730, 'admin', '', '2024-05-10 17:50:16', ''),
(731, 'admin', '', '2024-05-10 17:50:16', ''),
(732, 'admin', '', '2024-05-10 17:50:16', ''),
(733, 'admin', '', '2024-05-10 17:50:16', ''),
(734, 'admin', '', '2024-05-10 17:50:16', ''),
(735, 'admin', '', '2024-05-10 17:50:16', ''),
(736, 'admin', '', '2024-05-10 17:50:33', ''),
(737, 'admin', '', '2024-05-10 17:50:33', ''),
(738, 'admin', '', '2024-05-10 17:50:33', ''),
(739, 'admin', '', '2024-05-10 17:50:33', ''),
(740, 'admin', '', '2024-05-10 17:50:33', ''),
(741, 'admin', '', '2024-05-10 17:50:33', ''),
(742, 'admin', '', '2024-05-10 17:50:33', ''),
(743, 'admin', '', '2024-05-10 17:50:33', ''),
(744, 'admin', '', '2024-05-10 17:50:33', ''),
(745, 'admin', '', '2024-05-10 17:50:33', ''),
(746, 'admin', '', '2024-05-10 17:50:33', ''),
(747, 'admin', '', '2024-05-10 17:50:33', ''),
(748, 'admin', '', '2024-05-10 17:50:33', ''),
(749, 'admin', '', '2024-05-10 17:50:33', ''),
(750, 'admin', '', '2024-05-10 17:50:33', ''),
(751, 'admin', '', '2024-05-10 17:50:33', ''),
(752, 'admin', '', '2024-05-10 17:50:33', ''),
(753, 'admin', '', '2024-05-10 17:50:33', ''),
(754, 'admin', '', '2024-05-10 17:50:33', ''),
(755, 'admin', '', '2024-05-10 17:50:33', ''),
(756, 'admin', '', '2024-05-10 17:50:33', ''),
(757, 'admin', '', '2024-05-10 17:50:33', ''),
(758, 'admin', '', '2024-05-10 17:50:33', '');
INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(759, 'admin', 'EDITAR PARTIDO', '2024-05-10 17:56:03', 'Array\n(\n    [numero] => 5\n    [equipo1] => 12\n    [equipo2] => 10\n    [fecha] => 2024-06-23\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 5\n)\n'),
(760, 'admin', 'EDITAR FASE', '2024-05-14 08:25:16', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-14T08:00\n    [fecha2] => 2024-05-11T23:11\n    [id] => 3\n)\n'),
(761, 'admin', 'EDITAR FASE', '2024-05-14 08:25:28', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-14T08:00\n    [fecha2] => 2024-05-15T23:11\n    [id] => 3\n)\n'),
(762, 'admin', '', '2024-05-14 08:26:36', ''),
(763, 'admin', '', '2024-05-14 08:26:48', ''),
(764, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 08:46:53', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 0\n    [clasificado_semis_e2] => 0\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(765, 'admin', 'EDITAR FASE', '2024-05-14 09:04:52', 'Array\n(\n    [estado] => 1\n    [titulo] => Semifinales\n    [fecha1] => 2024-05-13T09:03\n    [fecha2] => 2024-05-15T09:03\n    [id] => 4\n)\n'),
(766, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:05:20', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 0\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(767, 'admin', '', '2024-05-14 09:05:28', ''),
(768, 'admin', '', '2024-05-14 09:06:00', ''),
(769, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:06:13', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 12\n    [clasificado_semis_e4] => 2\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(770, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:14:33', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(771, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:14:45', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(772, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:18:48', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(773, 'admin', '', '2024-05-14 09:18:55', ''),
(774, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:19:00', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(775, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:19:19', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(776, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:24:29', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(777, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:24:31', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(778, 'admin', '', '2024-05-14 09:24:41', ''),
(779, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:24:43', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(780, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:24:45', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(781, 'admin', '', '2024-05-14 09:25:07', ''),
(782, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:25:22', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(783, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:25:34', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(784, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:25:52', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(785, 'admin', '', '2024-05-14 09:26:01', ''),
(786, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:26:05', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(787, 'admin', '', '2024-05-14 09:27:13', ''),
(788, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:27:15', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(789, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:30:07', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(790, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:30:47', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(791, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:30:49', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(792, 'admin', '', '2024-05-14 09:30:58', ''),
(793, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:31:16', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(794, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:32:37', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(795, 'admin', '', '2024-05-14 09:32:47', ''),
(796, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:32:59', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(797, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:33:24', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(798, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:33:56', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(799, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:34:22', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(800, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:34:46', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(801, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:34:47', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(802, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:34:58', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(803, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:35:49', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(804, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:35:54', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(805, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:35:56', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(806, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:36:10', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(807, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:37:01', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(808, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:37:09', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => 2\n    [clasificado_cuartos_e3] => 3\n    [clasificado_cuartos_e4] => 5\n    [clasificado_cuartos_e5] => 12\n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 16\n    [clasificado_cuartos_e8] => 9\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => 17\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(809, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:37:55', 'Array\n(\n    [clasificado_octavos_a1] => 0\n    [clasificado_octavos_a2] => 0\n    [clasificado_octavos_b1] => 0\n    [clasificado_octavos_b2] => 0\n    [clasificado_octavos_c1] => 0\n    [clasificado_octavos_c2] => 0\n    [clasificado_octavos_d1] => 0\n    [clasificado_octavos_d2] => 0\n    [clasificado_octavos_e1] => 0\n    [clasificado_octavos_e2] => 0\n    [clasificado_octavos_f1] => 0\n    [clasificado_octavos_f2] => 0\n    [clasificado_octavos_g1] => 0\n    [clasificado_octavos_g2] => 0\n    [clasificado_octavos_h1] => 0\n    [clasificado_octavos_h2] => 0\n    [clasificado_cuartos_e1] => 0\n    [clasificado_cuartos_e2] => 0\n    [clasificado_cuartos_e3] => 0\n    [clasificado_cuartos_e4] => 0\n    [clasificado_cuartos_e5] => 0\n    [clasificado_cuartos_e6] => 0\n    [clasificado_cuartos_e7] => 0\n    [clasificado_cuartos_e8] => 0\n    [clasificado_semis_e1] => 0\n    [clasificado_semis_e2] => 0\n    [clasificado_semis_e3] => 0\n    [clasificado_semis_e4] => 0\n    [clasificado_cuarto] => 0\n    [clasificado_tercero] => 0\n    [clasificado_subcampeon] => 0\n    [clasificado_campeon] => 0\n    [clasificado_jugador] => 0\n    [clasificado_valla] => 0\n    [clasificado_id] => 1\n)\n'),
(810, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:38:21', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => \n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => \n    [clasificado_semis_e1] => \n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(811, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:38:29', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => \n    [clasificado_semis_e1] => \n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n');
INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(812, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:38:43', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => \n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(813, 'admin', '', '2024-05-14 09:46:34', ''),
(814, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:46:51', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(815, 'admin', 'EDITAR FASE', '2024-05-14 09:47:20', 'Array\n(\n    [estado] => 1\n    [titulo] => Final\n    [fecha1] => 2024-05-13T09:03\n    [fecha2] => 2024-05-15T09:03\n    [id] => 5\n)\n'),
(816, 'admin', '', '2024-05-14 09:47:33', ''),
(817, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:47:38', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => 1\n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(818, 'admin', '', '2024-05-14 09:47:51', ''),
(819, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:48:00', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => 1\n    [clasificado_tercero] => 3\n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(820, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:48:23', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => 1\n    [clasificado_tercero] => 3\n    [clasificado_subcampeon] => 13\n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(821, 'admin', '', '2024-05-14 09:48:29', ''),
(822, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:48:58', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => 1\n    [clasificado_tercero] => 3\n    [clasificado_subcampeon] => 13\n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(823, 'admin', '', '2024-05-14 09:51:00', ''),
(824, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:51:24', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => 1\n    [clasificado_tercero] => 3\n    [clasificado_subcampeon] => 13\n    [clasificado_campeon] => 15\n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(825, 'admin', 'EDITAR FASE', '2024-05-14 09:51:54', 'Array\n(\n    [estado] => 1\n    [titulo] => Otros\n    [fecha1] => 2024-05-13T15:33\n    [fecha2] => 2024-05-15T09:03\n    [id] => 6\n)\n'),
(826, 'admin', '', '2024-05-14 09:53:36', ''),
(827, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:54:49', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => 1\n    [clasificado_tercero] => 3\n    [clasificado_subcampeon] => 13\n    [clasificado_campeon] => 15\n    [clasificado_jugador] => 106\n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(828, 'admin', '', '2024-05-14 09:55:36', ''),
(829, 'admin', 'EDITAR CLASIFICADO', '2024-05-14 09:55:43', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => 1\n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => 17\n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => 1\n    [clasificado_tercero] => 3\n    [clasificado_subcampeon] => 13\n    [clasificado_campeon] => 15\n    [clasificado_jugador] => 106\n    [clasificado_valla] => 275\n    [clasificado_id] => 1\n)\n'),
(830, 'admin', 'LOGIN', '2024-05-15 21:38:36', ''),
(831, 'admin', 'CREAR BANNER', '2024-05-15 21:39:46', 'Array\n(\n    [publicidad_seccion] => 1\n    [publicidad_nombre] => Banner 1\n    [publicidad_nombre2] => \n    [publicidad_fecha] => 2024-05-15\n    [publicidad_nombre_ver] => \n    [publicidad_imagen] => banner-omega-polla4.jpg\n    [publicidad_imagenresponsive] => banner-omega-polla5.jpg\n    [publicidad_video] => \n    [publicidad_color_fondo] => \n    [publicidad_posicion] => \n    [publicidad_descripcion] => \n    [publicidad_estado] => 1\n    [publicidad_click] => 0\n    [publicidad_enlace] => \n    [publicidad_tipo_enlace] => 0\n    [publicidad_texto_enlace] => \n    [publicidad_enlace_alineacion] => \n    [publicidad_id] => 1\n)\n'),
(832, 'admin', 'CREAR GRUPO', '2024-05-15 22:03:45', 'Array\n(\n    [nombre] => GRUPO A\n    [id] => 1\n)\n'),
(833, 'admin', 'CREAR GRUPO', '2024-05-15 22:03:53', 'Array\n(\n    [nombre] => Grupo B\n    [id] => 2\n)\n'),
(834, 'admin', 'EDITAR GRUPO', '2024-05-15 22:04:05', 'Array\n(\n    [nombre] => Grupo A\n    [id] => 1\n)\n'),
(835, 'admin', 'CREAR GRUPO', '2024-05-15 22:04:14', 'Array\n(\n    [nombre] => Grupo C\n    [id] => 3\n)\n'),
(836, 'admin', 'CREAR GRUPO', '2024-05-15 22:04:22', 'Array\n(\n    [nombre] => Grupo D\n    [id] => 4\n)\n'),
(837, 'admin', 'CREAR EQUIPO', '2024-05-15 22:04:47', 'Array\n(\n    [codigo] => ARG\n    [nombre] => ARGENTINA\n    [bandera] => obxjg3rq-nbwcl0de1.png\n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 1\n)\n'),
(838, 'admin', 'CREAR EQUIPO', '2024-05-15 22:05:08', 'Array\n(\n    [codigo] => PER\n    [nombre] => PER&Uacute;\n    [bandera] => um9j2zt0-6azroxfp1.png\n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 2\n)\n'),
(839, 'admin', 'CREAR EQUIPO', '2024-05-15 22:05:27', 'Array\n(\n    [codigo] => CND\n    [nombre] => CANAD&Aacute;\n    [bandera] => \n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 3\n)\n'),
(840, 'admin', 'CREAR EQUIPO', '2024-05-15 22:05:48', 'Array\n(\n    [codigo] => CHL\n    [nombre] => CHILE\n    [bandera] => \n    [grupo] => 1\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 4\n)\n'),
(841, 'admin', 'CREAR EQUIPO', '2024-05-15 22:05:59', 'Array\n(\n    [codigo] => ECU\n    [nombre] => ECUADOR\n    [bandera] => \n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 5\n)\n'),
(842, 'admin', 'CREAR EQUIPO', '2024-05-15 22:06:20', 'Array\n(\n    [codigo] => VNZ\n    [nombre] => VENEZUELA\n    [bandera] => \n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 6\n)\n'),
(843, 'admin', 'CREAR EQUIPO', '2024-05-15 22:06:31', 'Array\n(\n    [codigo] => JMC\n    [nombre] => JAMAICA\n    [bandera] => \n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 7\n)\n'),
(844, 'admin', 'CREAR EQUIPO', '2024-05-15 22:06:46', 'Array\n(\n    [codigo] => MXC\n    [nombre] => M&Eacute;XICO\n    [bandera] => \n    [grupo] => 2\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 8\n)\n'),
(845, 'admin', 'CREAR EQUIPO', '2024-05-15 22:07:02', 'Array\n(\n    [codigo] => BOL\n    [nombre] => BOLIVIA\n    [bandera] => \n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 9\n)\n'),
(846, 'admin', 'CREAR EQUIPO', '2024-05-15 22:07:11', 'Array\n(\n    [codigo] => URU\n    [nombre] => URUGUAY\n    [bandera] => \n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 10\n)\n'),
(847, 'admin', 'CREAR EQUIPO', '2024-05-15 22:07:23', 'Array\n(\n    [codigo] => USA\n    [nombre] => EE. UU.\n    [bandera] => \n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 11\n)\n'),
(848, 'admin', 'CREAR EQUIPO', '2024-05-15 22:07:36', 'Array\n(\n    [codigo] => PNM\n    [nombre] => PANAM&Aacute;\n    [bandera] => \n    [grupo] => 3\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 12\n)\n'),
(849, 'admin', 'CREAR EQUIPO', '2024-05-15 22:07:51', 'Array\n(\n    [codigo] => PRG\n    [nombre] => PARAGUAY\n    [bandera] => \n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 13\n)\n'),
(850, 'admin', 'CREAR EQUIPO', '2024-05-15 22:08:06', 'Array\n(\n    [codigo] => COL\n    [nombre] => COLOMBIA\n    [bandera] => \n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 14\n)\n'),
(851, 'admin', 'CREAR EQUIPO', '2024-05-15 22:08:16', 'Array\n(\n    [codigo] => BRA\n    [nombre] => BRASIL\n    [bandera] => \n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 15\n)\n'),
(852, 'admin', 'CREAR EQUIPO', '2024-05-15 22:08:34', 'Array\n(\n    [codigo] => CTR\n    [nombre] => COSTA RICA\n    [bandera] => \n    [grupo] => 4\n    [pj] => 0\n    [pg] => 0\n    [pe] => 0\n    [pp] => 0\n    [gf] => 0\n    [gc] => 0\n    [gd] => 0\n    [fp] => 0\n    [puntos] => 0\n    [id] => 16\n)\n'),
(853, 'admin', 'CREAR CONFIG', '2024-05-15 22:12:57', 'Array\n(\n    [config_valorcuota] => 50719\n    [config_interes] => 1.14\n    [config_horasminimo] => 3\n    [config_gruposmarcador] => 150\n    [config_gruposequipo] => 20\n    [config_gruposempate] => 10\n    [config_1puestooctavos] => 100\n    [config_2puestooctavos] => 10\n    [config_octavosmarcador] => 200\n    [config_octavosequipo] => 30\n    [config_cuartosclasificado] => 150\n    [config_cuartosmarcador] => 200\n    [config_cuartosganador] => 30\n    [config_semisclasificado] => 150\n    [config_semismarcador] => 250\n    [config_semisequipo] => 40\n    [config_finalesmarcadores] => 300\n    [config_campeon] => 500\n    [config_subcampeon] => 250\n    [config_tercero] => 200\n    [config_cuarto] => 50\n    [config_goleador] => 150\n    [config_valla] => 150\n    [config_id] => 1\n)\n'),
(854, 'admin', 'CREAR PARTIDO', '2024-05-15 22:18:29', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 1\n)\n'),
(855, 'admin', 'CREAR PARTIDO', '2024-05-15 22:19:43', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-05-15\n    [hora] => 22:19\n    [fase] => 0\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 2\n)\n'),
(856, 'admin', 'CREAR PARTIDO', '2024-05-15 22:20:11', 'Array\n(\n    [numero] => 3\n    [equipo1] => 5\n    [equipo2] => 6\n    [fecha] => 2024-06-22\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 3\n)\n'),
(857, 'admin', 'EDITAR PARTIDO', '2024-05-15 22:20:28', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-06-21\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 2\n)\n'),
(858, 'admin', 'CREAR PARTIDO', '2024-05-15 22:20:58', 'Array\n(\n    [numero] => 4\n    [equipo1] => 8\n    [equipo2] => 7\n    [fecha] => 2024-06-22\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 4\n)\n'),
(859, 'admin', 'CREAR PARTIDO', '2024-05-15 22:21:26', 'Array\n(\n    [numero] => 5\n    [equipo1] => 11\n    [equipo2] => 9\n    [fecha] => 2024-06-23\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 5\n)\n'),
(860, 'admin', 'CREAR PARTIDO', '2024-05-15 22:22:12', 'Array\n(\n    [numero] => 6\n    [equipo1] => 10\n    [equipo2] => 12\n    [fecha] => 2024-06-23\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 6\n)\n'),
(861, 'admin', 'CREAR PARTIDO', '2024-05-15 22:22:37', 'Array\n(\n    [numero] => 7\n    [equipo1] => 14\n    [equipo2] => 13\n    [fecha] => 2024-05-24\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 7\n)\n'),
(862, 'admin', 'CREAR PARTIDO', '2024-05-15 22:23:15', 'Array\n(\n    [numero] => 8\n    [equipo1] => 15\n    [equipo2] => 16\n    [fecha] => 2024-06-24\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 8\n)\n'),
(863, 'admin', 'CREAR PARTIDO', '2024-05-15 22:24:20', 'Array\n(\n    [numero] => 9\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-05-25\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 9\n)\n'),
(864, 'admin', 'CREAR PARTIDO', '2024-05-15 22:24:45', 'Array\n(\n    [numero] => 10\n    [equipo1] => 4\n    [equipo2] => 1\n    [fecha] => 2024-06-25\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 10\n)\n'),
(865, 'admin', 'CREAR PARTIDO', '2024-05-15 22:25:11', 'Array\n(\n    [numero] => 11\n    [equipo1] => 5\n    [equipo2] => 7\n    [fecha] => 2024-06-26\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 11\n)\n'),
(866, 'admin', 'CREAR PARTIDO', '2024-05-15 22:25:55', 'Array\n(\n    [numero] => 12\n    [equipo1] => 6\n    [equipo2] => 8\n    [fecha] => 2024-06-26\n    [hora] => 20:00\n    [fase] => 0\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 12\n)\n'),
(867, 'admin', 'EDITAR PARTIDO', '2024-05-15 22:26:07', 'Array\n(\n    [numero] => 12\n    [equipo1] => 6\n    [equipo2] => 8\n    [fecha] => 2024-06-26\n    [hora] => 20:00:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 12\n)\n'),
(868, 'admin', 'CREAR PARTIDO', '2024-05-15 22:26:50', 'Array\n(\n    [numero] => 13\n    [equipo1] => 12\n    [equipo2] => 11\n    [fecha] => 2024-06-27\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 13\n)\n'),
(869, 'admin', 'CREAR PARTIDO', '2024-05-15 22:27:11', 'Array\n(\n    [numero] => 14\n    [equipo1] => 10\n    [equipo2] => 9\n    [fecha] => 2024-06-27\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 14\n)\n'),
(870, 'admin', 'CREAR PARTIDO', '2024-05-15 22:27:31', 'Array\n(\n    [numero] => 15\n    [equipo1] => 14\n    [equipo2] => 14\n    [fecha] => 2024-06-28\n    [hora] => 17:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 15\n)\n'),
(871, 'admin', 'CREAR PARTIDO', '2024-05-15 22:27:55', 'Array\n(\n    [numero] => 16\n    [equipo1] => 13\n    [equipo2] => 15\n    [fecha] => 2024-06-28\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 16\n)\n'),
(872, 'admin', 'CREAR PARTIDO', '2024-05-15 22:28:26', 'Array\n(\n    [numero] => 17\n    [equipo1] => 1\n    [equipo2] => 2\n    [fecha] => 2024-06-29\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 17\n)\n'),
(873, 'admin', 'CREAR PARTIDO', '2024-05-15 22:28:47', 'Array\n(\n    [numero] => 18\n    [equipo1] => 3\n    [equipo2] => 4\n    [fecha] => 2024-06-29\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 18\n)\n'),
(874, 'admin', 'CREAR PARTIDO', '2024-05-15 22:29:11', 'Array\n(\n    [numero] => 19\n    [equipo1] => 7\n    [equipo2] => 6\n    [fecha] => 2024-06-30\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 19\n)\n'),
(875, 'admin', 'CREAR PARTIDO', '2024-05-15 22:29:31', 'Array\n(\n    [numero] => 20\n    [equipo1] => 8\n    [equipo2] => 5\n    [fecha] => 2024-06-30\n    [hora] => 19:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 20\n)\n'),
(876, 'admin', 'CREAR PARTIDO', '2024-05-15 22:30:05', 'Array\n(\n    [numero] => 21\n    [equipo1] => 9\n    [equipo2] => 8\n    [fecha] => 2024-07-01\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 21\n)\n'),
(877, 'admin', 'CREAR PARTIDO', '2024-05-15 22:30:28', 'Array\n(\n    [numero] => 22\n    [equipo1] => 11\n    [equipo2] => 10\n    [fecha] => 2024-07-01\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 22\n)\n'),
(878, 'admin', 'CREAR PARTIDO', '2024-05-15 22:30:57', 'Array\n(\n    [numero] => 23\n    [equipo1] => 15\n    [equipo2] => 14\n    [fecha] => 2024-07-02\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 23\n)\n'),
(879, 'admin', 'CREAR PARTIDO', '2024-05-15 22:31:24', 'Array\n(\n    [numero] => 24\n    [equipo1] => 16\n    [equipo2] => 13\n    [fecha] => 2024-07-02\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 24\n)\n'),
(880, 'admin', 'CREAR CONTENIDO', '2024-05-15 22:56:53', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Terminos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"no_cel\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<div class=\"si_cel\">\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/fase1m.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/octavos1m.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/segundam.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/cuartosm.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/semifinalm.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/finalm.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%;\" src=\"../../upload/otrosm.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 1\n)\n'),
(881, 'admin', 'EDITAR CONTENIDO', '2024-05-15 22:58:16', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Terminos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 0\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"no_cel\">\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img class=\"n1ed--selected\" style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<div class=\"si_cel\">\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 1\n)\n');
INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(882, 'admin', 'EDITAR CONTENIDO', '2024-05-15 22:59:23', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Terminos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-premios1.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"no_cel\">\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<div class=\"si_cel\">\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 1\n)\n'),
(883, 'admin', 'CREAR CONTENIDO', '2024-05-15 23:00:56', 'Array\n(\n    [contenido_seccion] => 3\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Premios\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-premios2.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <div class=\"container\">\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Premios por Inscripci&oacute;n</p>\r\n<p style=\"text-align: center;\">Podr&aacute; participar en el sorteo de&nbsp; TV, Camisetas de la selecci&oacute;n, Balones, cajas de l&aacute;minas PANINI &nbsp;solo por inscribirse.</p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\"><br>Se realizaran 2 sorteos:</p>\r\n<ul style=\"text-align: center;\">\r\n<li>30 de abril y 30 de mayo<br><br></li>\r\n</ul>\r\n<p class=\"no_cel\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" src=\"../../upload/Banner-.jpg\" alt=\"Banner\"></p>\r\n<p class=\"si_cel\" style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p class=\"subtitulo\" style=\"text-align: center;\">Premiaci&oacute;n final</p>\r\n<p style=\"text-align: center;\">Es la premiaci&oacute;n final a las personas que mayor n&uacute;mero de puntos haya acumulado a lo largo de su participaci&oacute;n en la polla mundialista.<br><br></p>\r\n</div>\r\n<p class=\"no_cel\"><img class=\"n1ed--selected\" style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/Premios.jpg\" alt=\"Premios\"></p>\r\n<p class=\"si_cel\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 2\n)\n'),
(884, 'admin', 'EDITAR CONTENIDO', '2024-05-15 23:01:14', 'Array\n(\n    [contenido_seccion] => 4\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Terminos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-terminos1.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <p class=\"subtitulo\" style=\"text-align: center;\">T&Eacute;RMINOS Y CONDICIONES POLLA MUNDIALISTA FOE 2018</p>\r\n<p>Se&ntilde;ores</p>\r\n<p><strong>ASOCIADOS FOE</strong></p>\r\n<p style=\"text-align: justify;\">Con esta actividad, el FOE&nbsp; pretende mantener una motivaci&oacute;n permanente entre sus asociados y a su vez premiarlo por participar en la gran polla mundialista haci&eacute;ndonos part&iacute;cipes del evento m&aacute;s importante a nivel mundial, con una motivaci&oacute;n &nbsp;adicional&nbsp; por ser parte de esta gran fiesta mundialista,&nbsp; al tener a nuestro equipo colombiano entre los mejores equipos del mundo disputando la copa MUNDIAL RUSIA 2018.</p>\r\n<p style=\"text-align: justify;\">Esta polla la podr&aacute; jugar el asociado del FOE desde cualquier lugar donde se encuentre usando el medio que disponga como su celular, Tablet, port&aacute;til o P.C. entrando a la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com</a>&nbsp;link POLLA MUNDIALISTA FOE le deseamos la mejor de las suertes para ser ganador de los fabulosos premios que tenemos para ti.</p>\r\n<p style=\"text-align: justify;\"><strong>REGLAMENTO POLLA FOE 2018</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Podr&aacute;n participar los asociados activos y vinculados al FOEBBVA inscribi&eacute;ndose en el formulario dispuesto en la p&aacute;gina web del FOE, llenando todos los campos requeridos.</li>\r\n<li>La participaci&oacute;n tiene un costo de $50.719 si el pago es en una cuota o $25.541 si el pago es en dos cuotas descontados por n&oacute;mina o d&eacute;bito autom&aacute;tico para quienes tienen estos servicios. Este cr&eacute;dito se aplicara por la l&iacute;nea de menor cuant&iacute;a FOE.</li>\r\n<li>El asociado inscrito deber&aacute; autorizar en el proceso de inscripci&oacute;n diligenciando el formato establecido para el efecto y aceptar las condiciones establecidas en este reglamento.</li>\r\n<li>La inscripci&oacute;n le dar&aacute; derecho a participar el 30 de abril de 2018 y el 30 de mayo de 2018 en el sorteo de premios de televisores 40 pulgadas, Camisetas de la selecci&oacute;n Colombia y balones, cajas de &aacute;lbum PANINI mundial Rusia 2018.</li>\r\n<li>Cuando el asociado se inscriba, recibir&aacute; a vuelta de correo (el indicado en el formato de inscripci&oacute;n a la Polla FOE) la verificaci&oacute;n y un n&uacute;mero de inscripci&oacute;n el cual ser&aacute; usado para los sorteos realizados en estos sorteos.</li>\r\n<li>A partir de la primera semana de junio 2018, podr&aacute; empezar a incluir sus marcadores partidos diarios o todos los marcadores de la primera fase.</li>\r\n<li>Si la inscripci&oacute;n es por partidos diarios, estos los podr&aacute; inscribir tres (3) horas antes del primer partido del d&iacute;a. El sistema se cerrar&aacute; autom&aacute;ticamente durante los partidos jugados en el d&iacute;a y se habilitar&aacute; el d&iacute;a siguiente para continuar con la&nbsp; inscripci&oacute;n de marcadores de los partidos siguientes.</li>\r\n<li>Puntaje por aciertos:</li>\r\n</ol>\r\n<div class=\"no_cel\">\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/fase1.jpg\" alt=\"fase1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/octavos1.jpg\" alt=\"octavos1\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/segunda.jpg\" alt=\"segunda\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/cuartos.jpg\" alt=\"cuartos\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/semifinal.jpg\" alt=\"semifinal\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/final.jpg\" alt=\"final\"></p>\r\n<p><img style=\"max-width: 100%; display: block; margin-left: auto; margin-right: auto;\" src=\"../../upload/otros.jpg\" alt=\"otros\"></p>\r\n</div>\r\n<div class=\"si_cel\">\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ol style=\"text-align: justify;\" start=\"9\">\r\n<li>Los marcadores y equipos ganadores de la fase inicial y la segunda fase los podr&aacute; diligenciar con (3) horas de anticipaci&oacute;n al primer partido del d&iacute;a,&nbsp; y se tendr&aacute; en cuenta &uacute;nicamente los primeros noventa minutos de juego para asignar el puntaje obtenido.</li>\r\n<li>Los marcadores y equipos ganadores de los cuartos de final, semifinal y dem&aacute;s campos a diligenciar la podr&aacute; llenar con tres (3) horas antes del primer partido de los cuartos de final. Pasado este tiempo, se cerrar&aacute; el concurso de esta polla mundialista.</li>\r\n<li>Para registrar&nbsp;el orden de clasificaci&oacute;n a octavos de final, el formulario estar&aacute; disponible hasta el d&iacute;a 29 de Junio de 2.018 o d&iacute;a anterior del inicio de los octavos de final.</li>\r\n<li>Para registrar el orden de clasificaci&oacute;n para cuartos de final, semifinal, finales&nbsp;y otros marcadores&nbsp;el formulario estar&aacute; disponible hasta el d&iacute;a 6 de julio de 2.018 o el d&iacute;a anterior del inicio de los cuartos del final.</li>\r\n<li>Premios de la polla:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.1 PRIMER PUESTO ser&aacute; quien tenga el mayor puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.2 SEGUNDO PUESTO ser&aacute; quien tenga el segundo puesto en puntaje acumulado</strong></p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>13.3. TERCER PUESTO ser&aacute; quien tenga el tercer puesto en puntaje acumulado.</strong></p>\r\n<ol style=\"text-align: justify;\" start=\"14\">\r\n<li><strong>DESEMPATES:&nbsp;</strong>En caso de existir empates en la puntuaci&oacute;n acumulada obtenida. El desempate se definir&aacute; en su orden:</li>\r\n</ol>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.1</strong>&nbsp;Mayores aciertos en marcadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.2</strong>&nbsp;Mayores aciertos en equipos ganadores</p>\r\n<p style=\"text-align: justify; padding-left: 60px;\"><strong>14.3</strong>&nbsp;Sorteo</p>\r\n<ol style=\"text-align: justify;\" start=\"15\">\r\n<li>Informaci&oacute;n de resultados: El FOE reportar&aacute; en la p&aacute;gina&nbsp;<a href=\"../../\">www.foebbva.com </a>el resultado de los puntos acumulados de los veinte (20) puntajes m&aacute;s altos, as&iacute; mismo, reportar&aacute; a todos los inscritos al correo registrados los puntos acumulados.</li>\r\n<li>El FOE&nbsp; se reserva los derechos de esta polla mundialista FOE 2018</li>\r\n<li>El asociado inscrito acepta de forma integral este reglamento.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">1 de abril de 2018</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>FONDO DE EMPLEADOS BBVA FOE</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_archivo] => \n    [contenido_id] => 1\n)\n'),
(885, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:10:47', 'Array\n(\n    [contenido_seccion] => 7\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Partidos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => partidos1.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 3\n)\n'),
(886, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:11:21', 'Array\n(\n    [contenido_seccion] => 5\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Grupos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => grupos1.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 4\n)\n'),
(887, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:12:25', 'Array\n(\n    [contenido_seccion] => 6\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => ClasficaciÃ³n\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => ico-clasificacion1.png\n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 5\n)\n'),
(888, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:14:02', 'Array\n(\n    [contenido_seccion] => 8\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Jugar Polla\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 6\n)\n'),
(889, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:14:44', 'Array\n(\n    [contenido_seccion] => 9\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Octavos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 7\n)\n'),
(890, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:15:31', 'Array\n(\n    [contenido_seccion] => 10\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Cuartos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 8\n)\n'),
(891, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:18:29', 'Array\n(\n    [contenido_seccion] => 10\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Cuartos\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 9\n)\n'),
(892, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:18:55', 'Array\n(\n    [contenido_seccion] => 11\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Semifinal\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 10\n)\n'),
(893, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:19:30', 'Array\n(\n    [contenido_seccion] => 12\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Final\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 11\n)\n'),
(894, '1100973339', 'CREAR CONTENIDO', '2024-05-15 23:19:49', 'Array\n(\n    [contenido_seccion] => 13\n    [contenido_tipo] => 3\n    [contenido_padre] => 0\n    [contenido_columna] => \n    [contenido_columna_espacios] => 0\n    [contenido_columna_alineacion] => 0\n    [contenido_disenio] => 0\n    [contenido_borde] => 0\n    [contenido_estado] => 1\n    [contenido_fecha] => 2024-05-15\n    [contenido_caja] => \n    [contenido_top] => \n    [contenido_bottom] => \n    [contenido_left] => \n    [contenido_right] => \n    [contenido_titulo] => Otros\n    [contenido_subtitulo] => \n    [contenido_titulo_ver] => 1\n    [contenido_imagen] => \n    [contenido_fondo_imagen] => \n    [contenido_fondo_imagen_tipo] => 0\n    [contenido_enlace_abrir] => 0\n    [contenido_fondo_color] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => \n    [contenido_enlace] => \n    [contenido_vermas] => \n    [contenido_video] => \n    [contenido_icono] => \n    [contenido_id] => 12\n)\n'),
(895, '1100973339', '', '2024-05-15 23:20:26', ''),
(896, '1100973339', '', '2024-05-15 23:20:26', ''),
(897, '1100973339', '', '2024-05-15 23:20:26', ''),
(898, '1100973339', '', '2024-05-15 23:20:26', ''),
(899, '1100973339', '', '2024-05-15 23:20:26', ''),
(900, '1100973339', '', '2024-05-15 23:20:26', ''),
(901, '1100973339', '', '2024-05-15 23:20:26', ''),
(902, '1100973339', '', '2024-05-15 23:20:26', ''),
(903, '1100973339', '', '2024-05-15 23:20:26', ''),
(904, '1100973339', '', '2024-05-15 23:20:26', ''),
(905, '1100973339', '', '2024-05-15 23:20:26', ''),
(906, '1100973339', '', '2024-05-15 23:20:26', ''),
(907, '1100973339', '', '2024-05-15 23:20:26', ''),
(908, '1100973339', '', '2024-05-15 23:20:26', ''),
(909, '1100973339', '', '2024-05-15 23:20:26', ''),
(910, '1100973339', '', '2024-05-15 23:20:26', ''),
(911, '1100973339', '', '2024-05-15 23:20:26', ''),
(912, '1100973339', '', '2024-05-15 23:20:26', ''),
(913, '1100973339', '', '2024-05-15 23:20:26', ''),
(914, '1100973339', '', '2024-05-15 23:20:26', ''),
(915, '1100973339', '', '2024-05-15 23:20:26', ''),
(916, '1100973339', '', '2024-05-15 23:20:26', ''),
(917, '1100973339', '', '2024-05-15 23:20:26', ''),
(918, '1100973339', '', '2024-05-15 23:20:26', ''),
(919, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:20:47', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => \n    [id] => 1\n)\n'),
(920, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:21:00', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(921, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:23:36', 'Array\n(\n    [numero] => 15\n    [equipo1] => 15\n    [equipo2] => 14\n    [fecha] => 2024-07-02\n    [hora] => 20:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 15\n)\n'),
(922, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:23:54', 'Array\n(\n    [numero] => 7\n    [equipo1] => 14\n    [equipo2] => 13\n    [fecha] => 2024-06-24\n    [hora] => 17:00:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 7\n)\n'),
(923, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:24:36', 'Array\n(\n    [numero] => 9\n    [equipo1] => 2\n    [equipo2] => 3\n    [fecha] => 2024-06-25\n    [hora] => 17:00:00\n    [fase] => 1\n    [valor1] => \n    [valor2] => \n    [ganador] => \n    [id] => 9\n)\n'),
(924, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:30:45', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(925, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:31:19', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(926, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:31:20', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(927, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:31:34', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(928, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:33:38', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(929, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:33:39', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(930, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:33:46', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(931, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:33:47', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(932, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:33:57', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(933, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:34:17', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(934, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:34:53', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(935, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:34:55', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(936, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:34:59', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(937, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:35:59', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(938, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:36:49', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(939, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:36:52', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(940, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:37:03', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(941, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:38:10', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(942, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:38:11', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(943, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:38:22', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(944, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:40:06', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(945, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:44:01', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(946, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:44:01', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(947, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:44:02', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(948, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:44:02', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(949, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:44:02', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(950, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:17', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(951, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:18', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(952, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:19', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(953, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:19', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(954, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:19', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(955, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:20', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(956, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:20', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(957, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:45:36', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(958, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:47:44', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(959, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:47:45', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(960, '1100973339', 'EDITAR PARTIDO', '2024-05-15 23:47:51', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 1\n    [id] => 1\n)\n'),
(961, 'admin', 'LOGIN', '2024-05-20 12:33:00', ''),
(962, 'admin', 'EDITAR USUARIO', '2024-05-20 12:33:12', 'Array\n(\n    [user_names] => JUAN SEBASTIAN SANDOVAL VARGAS\n    [user_lastnames] => \n    [user_email] => desarrollo8@omegawebsystems.com\n    [user_idnumber] => 1100973339\n    [user_city] => \n    [user_country] => \n    [user_phone] => \n    [user_address] => \n    [user_level] => 2\n    [user_state] => 1\n    [user_user] => 1100973339\n    [user_password] => 1111\n    [user_delete] => 0\n    [user_current_user] => 0\n    [user_zona] => \n    [user_celular] => 3212312312\n    [user_puntos] => 20\n    [user_marcadores] => 0\n    [user_ganadores] => 1\n    [user_otros] => 0\n    [user_total] => 1\n    [user_cuotas] => 1\n    [user_paso] => 4\n    [user_fecha] => 2024-05-15\n    [user_id] => 1\n)\n'),
(963, 'admin', 'LOGIN', '2024-05-20 12:34:40', ''),
(964, '1100973339', '', '2024-05-20 12:35:01', ''),
(965, '1100973339', '', '2024-05-20 12:35:01', ''),
(966, '1100973339', '', '2024-05-20 12:35:01', ''),
(967, '1100973339', '', '2024-05-20 12:35:01', ''),
(968, '1100973339', '', '2024-05-20 12:35:01', ''),
(969, '1100973339', '', '2024-05-20 12:35:01', ''),
(970, '1100973339', '', '2024-05-20 12:35:01', ''),
(971, '1100973339', '', '2024-05-20 12:35:01', ''),
(972, '1100973339', '', '2024-05-20 12:35:01', ''),
(973, '1100973339', '', '2024-05-20 12:35:01', ''),
(974, '1100973339', '', '2024-05-20 12:35:01', ''),
(975, '1100973339', '', '2024-05-20 12:35:01', ''),
(976, '1100973339', '', '2024-05-20 12:35:01', ''),
(977, '1100973339', '', '2024-05-20 12:35:01', ''),
(978, '1100973339', '', '2024-05-20 12:35:01', ''),
(979, '1100973339', '', '2024-05-20 12:35:01', ''),
(980, '1100973339', '', '2024-05-20 12:35:01', ''),
(981, '1100973339', '', '2024-05-20 12:35:01', ''),
(982, '1100973339', '', '2024-05-20 12:35:01', ''),
(983, '1100973339', '', '2024-05-20 12:35:01', ''),
(984, '1100973339', '', '2024-05-20 12:35:01', ''),
(985, '1100973339', '', '2024-05-20 12:35:01', ''),
(986, '1100973339', '', '2024-05-20 12:35:01', ''),
(987, '1100973339', '', '2024-05-20 12:35:01', ''),
(988, 'admin', 'EDITAR PARTIDO', '2024-05-20 12:35:30', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 2\n    [id] => 2\n)\n'),
(989, 'admin', 'EDITAR PARTIDO', '2024-05-20 12:35:37', 'Array\n(\n    [id] => \n)\n'),
(990, 'admin', 'EDITAR PARTIDO', '2024-05-20 12:36:03', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 1\n    [ganador] => 2\n    [id] => 2\n)\n'),
(991, 'admin', 'EDITAR PARTIDO', '2024-05-20 12:37:59', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 3\n    [ganador] => 4\n    [id] => 2\n)\n'),
(992, 'admin', 'EDITAR PARTIDO', '2024-05-20 12:38:50', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 1\n    [valor2] => 2\n    [ganador] => 4\n    [id] => 2\n)\n'),
(993, 'admin', 'EDITAR PARTIDO', '2024-05-20 12:39:37', 'Array\n(\n    [numero] => 2\n    [equipo1] => 2\n    [equipo2] => 4\n    [fecha] => 2024-06-21\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 2\n)\n'),
(994, 'admin', 'EDITAR FASE', '2024-05-20 12:40:47', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-19T12:00\n    [fecha2] => 2024-05-21T12:00\n    [id] => 3\n)\n'),
(995, '1100973339', '', '2024-05-20 12:41:38', ''),
(996, 'admin', 'CREAR CLASIFICADO', '2024-05-20 12:42:13', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => \n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => \n    [clasificado_cuartos_e8] => \n    [clasificado_semis_e1] => 1\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(997, 'admin', 'EDITAR CLASIFICADO', '2024-05-20 12:42:25', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => \n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => 1\n    [clasificado_cuartos_e8] => \n    [clasificado_semis_e1] => \n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(998, 'admin', 'EDITAR CLASIFICADO', '2024-05-20 12:48:46', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => \n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => \n    [clasificado_cuartos_e7] => 1\n    [clasificado_cuartos_e8] => \n    [clasificado_semis_e1] => \n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(999, '1100973339', '', '2024-05-20 12:49:21', '');
INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(1000, 'admin', 'EDITAR CLASIFICADO', '2024-05-20 12:49:28', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => \n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 1\n    [clasificado_cuartos_e8] => \n    [clasificado_semis_e1] => \n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(1001, 'admin', 'CREAR ARCHIVO', '2024-05-20 12:52:32', 'Array\n(\n    [archivo_cedulas] => cedulas1.xlsx\n    [id] => 1\n)\n'),
(1002, 'admin', 'EDITAR ARCHIVO', '2024-05-20 12:54:08', 'Array\n(\n    [archivo_cedulas] => cedulas1.xlsx\n    [id] => 1\n)\n'),
(1003, 'admin', 'EDITAR ARCHIVO', '2024-05-20 12:55:19', 'Array\n(\n    [archivo_cedulas] => cedul.xlsx\n    [id] => 1\n)\n'),
(1004, 'admin', 'LOGIN', '2024-05-20 12:57:22', ''),
(1005, 'admin', 'EDITAR ARCHIVO', '2024-05-20 12:57:40', 'Array\n(\n    [archivo_cedulas] => cedul.xlsx\n    [id] => 1\n)\n'),
(1006, 'admin', 'EDITAR ARCHIVO', '2024-05-20 14:15:41', 'Array\n(\n    [archivo_cedulas] => cedul.xlsx\n    [id] => 1\n)\n'),
(1007, 'admin', 'EDITAR ARCHIVO', '2024-05-20 14:16:13', 'Array\n(\n    [archivo_cedulas] => cedul.xlsx\n    [id] => 1\n)\n'),
(1008, 'admin', 'LOGIN', '2024-05-27 10:19:21', ''),
(1009, '1100973339', 'EDITAR FASE', '2024-05-27 10:30:50', 'Array\n(\n    [estado] => 1\n    [titulo] => Cuartos de final\n    [fecha1] => 2024-05-26T12:00\n    [fecha2] => 2024-05-28T12:00\n    [id] => 3\n)\n'),
(1010, '38284216', '', '2024-05-27 10:39:34', ''),
(1011, '38284216', '', '2024-05-27 10:39:34', ''),
(1012, '38284216', '', '2024-05-27 10:39:34', ''),
(1013, '38284216', '', '2024-05-27 10:39:34', ''),
(1014, '38284216', '', '2024-05-27 10:39:34', ''),
(1015, '38284216', '', '2024-05-27 10:39:34', ''),
(1016, '38284216', '', '2024-05-27 10:39:34', ''),
(1017, '38284216', '', '2024-05-27 10:39:34', ''),
(1018, '38284216', '', '2024-05-27 10:39:34', ''),
(1019, '38284216', '', '2024-05-27 10:39:34', ''),
(1020, '38284216', '', '2024-05-27 10:39:34', ''),
(1021, '38284216', '', '2024-05-27 10:39:34', ''),
(1022, '38284216', '', '2024-05-27 10:39:34', ''),
(1023, '38284216', '', '2024-05-27 10:39:34', ''),
(1024, '38284216', '', '2024-05-27 10:39:34', ''),
(1025, '38284216', '', '2024-05-27 10:39:34', ''),
(1026, '38284216', '', '2024-05-27 10:39:34', ''),
(1027, '38284216', '', '2024-05-27 10:39:34', ''),
(1028, '38284216', '', '2024-05-27 10:39:34', ''),
(1029, '38284216', '', '2024-05-27 10:39:34', ''),
(1030, '38284216', '', '2024-05-27 10:39:34', ''),
(1031, '38284216', '', '2024-05-27 10:39:34', ''),
(1032, '38284216', '', '2024-05-27 10:39:34', ''),
(1033, '38284216', '', '2024-05-27 10:39:34', ''),
(1034, '38284216', '', '2024-05-27 10:39:47', ''),
(1035, '38284216', '', '2024-05-27 10:39:47', ''),
(1036, '38284216', '', '2024-05-27 10:39:47', ''),
(1037, '38284216', '', '2024-05-27 10:39:47', ''),
(1038, '38284216', '', '2024-05-27 10:39:47', ''),
(1039, '38284216', '', '2024-05-27 10:39:47', ''),
(1040, '38284216', '', '2024-05-27 10:39:47', ''),
(1041, '38284216', '', '2024-05-27 10:39:47', ''),
(1042, '38284216', '', '2024-05-27 10:39:47', ''),
(1043, '38284216', '', '2024-05-27 10:39:47', ''),
(1044, '38284216', '', '2024-05-27 10:39:47', ''),
(1045, '38284216', '', '2024-05-27 10:39:47', ''),
(1046, '38284216', '', '2024-05-27 10:39:47', ''),
(1047, '38284216', '', '2024-05-27 10:39:47', ''),
(1048, '38284216', '', '2024-05-27 10:39:47', ''),
(1049, '38284216', '', '2024-05-27 10:39:47', ''),
(1050, '38284216', '', '2024-05-27 10:39:47', ''),
(1051, '38284216', '', '2024-05-27 10:39:47', ''),
(1052, '38284216', '', '2024-05-27 10:39:47', ''),
(1053, '38284216', '', '2024-05-27 10:39:47', ''),
(1054, '38284216', '', '2024-05-27 10:39:47', ''),
(1055, '38284216', '', '2024-05-27 10:39:47', ''),
(1056, '38284216', '', '2024-05-27 10:39:47', ''),
(1057, '38284216', '', '2024-05-27 10:39:47', ''),
(1058, '38284216', '', '2024-05-27 10:40:07', ''),
(1059, '38284216', '', '2024-05-27 10:40:07', ''),
(1060, '38284216', '', '2024-05-27 10:40:07', ''),
(1061, '38284216', '', '2024-05-27 10:40:07', ''),
(1062, '38284216', '', '2024-05-27 10:40:07', ''),
(1063, '38284216', '', '2024-05-27 10:40:07', ''),
(1064, '38284216', '', '2024-05-27 10:40:07', ''),
(1065, '38284216', '', '2024-05-27 10:40:07', ''),
(1066, '38284216', '', '2024-05-27 10:40:07', ''),
(1067, '38284216', '', '2024-05-27 10:40:07', ''),
(1068, '38284216', '', '2024-05-27 10:40:07', ''),
(1069, '38284216', '', '2024-05-27 10:40:07', ''),
(1070, '38284216', '', '2024-05-27 10:40:07', ''),
(1071, '38284216', '', '2024-05-27 10:40:07', ''),
(1072, '38284216', '', '2024-05-27 10:40:07', ''),
(1073, '38284216', '', '2024-05-27 10:40:07', ''),
(1074, '38284216', '', '2024-05-27 10:40:07', ''),
(1075, '38284216', '', '2024-05-27 10:40:07', ''),
(1076, '38284216', '', '2024-05-27 10:40:07', ''),
(1077, '38284216', '', '2024-05-27 10:40:07', ''),
(1078, '38284216', '', '2024-05-27 10:40:07', ''),
(1079, '38284216', '', '2024-05-27 10:40:07', ''),
(1080, '38284216', '', '2024-05-27 10:40:07', ''),
(1081, '38284216', '', '2024-05-27 10:40:07', ''),
(1082, '1100973339', 'EDITAR PARTIDO', '2024-05-27 10:42:08', 'Array\n(\n    [numero] => 1\n    [equipo1] => 1\n    [equipo2] => 3\n    [fecha] => 2024-06-20\n    [hora] => 19:00:00\n    [fase] => 1\n    [valor1] => 2\n    [valor2] => 2\n    [ganador] => -1\n    [id] => 1\n)\n'),
(1083, '1100973339', 'EDITAR FASE', '2024-05-27 10:45:35', 'Array\n(\n    [estado] => 1\n    [titulo] => Semifinales\n    [fecha1] => 2024-05-26T10:45\n    [fecha2] => 2024-05-28T10:45\n    [id] => 4\n)\n'),
(1084, '1100973339', '', '2024-05-27 10:46:02', ''),
(1085, '1100973339', 'EDITAR FASE', '2024-05-27 10:46:20', 'Array\n(\n    [estado] => 1\n    [titulo] => Semifinales\n    [fecha1] => 2024-05-26T10:45\n    [fecha2] => 2024-05-27T10:45\n    [id] => 4\n)\n'),
(1086, '1100973339', 'EDITAR CLASIFICADO', '2024-05-27 10:47:15', 'Array\n(\n    [clasificado_octavos_a1] => \n    [clasificado_octavos_a2] => \n    [clasificado_octavos_b1] => \n    [clasificado_octavos_b2] => \n    [clasificado_octavos_c1] => \n    [clasificado_octavos_c2] => \n    [clasificado_octavos_d1] => \n    [clasificado_octavos_d2] => \n    [clasificado_octavos_e1] => \n    [clasificado_octavos_e2] => \n    [clasificado_octavos_f1] => \n    [clasificado_octavos_f2] => \n    [clasificado_octavos_g1] => \n    [clasificado_octavos_g2] => \n    [clasificado_octavos_h1] => \n    [clasificado_octavos_h2] => \n    [clasificado_cuartos_e1] => \n    [clasificado_cuartos_e2] => \n    [clasificado_cuartos_e3] => \n    [clasificado_cuartos_e4] => \n    [clasificado_cuartos_e5] => \n    [clasificado_cuartos_e6] => 14\n    [clasificado_cuartos_e7] => 1\n    [clasificado_cuartos_e8] => \n    [clasificado_semis_e1] => 15\n    [clasificado_semis_e2] => \n    [clasificado_semis_e3] => \n    [clasificado_semis_e4] => \n    [clasificado_cuarto] => \n    [clasificado_tercero] => \n    [clasificado_subcampeon] => \n    [clasificado_campeon] => \n    [clasificado_jugador] => \n    [clasificado_valla] => \n    [clasificado_id] => 1\n)\n'),
(1087, '1100973339', 'EDITAR CONFIG', '2024-05-27 11:01:50', 'Array\n(\n    [config_id] => \n)\n'),
(1088, '1100973339', 'EDITAR CONFIG', '2024-05-27 11:04:49', 'Array\n(\n    [config_valorcuota] => 50719\n    [config_interes] => 1.14\n    [config_horasminimo] => 3\n    [config_gruposmarcador] => 150\n    [config_gruposequipo] => 20\n    [config_gruposempate] => 10\n    [config_1puestooctavos] => 100\n    [config_2puestooctavos] => 10\n    [config_octavosmarcador] => 200\n    [config_octavosequipo] => 30\n    [config_cuartosclasificado] => 150\n    [config_cuartosmarcador] => 200\n    [config_cuartosganador] => 30\n    [config_semisclasificado] => 150\n    [config_semismarcador] => 250\n    [config_semisequipo] => 40\n    [config_finalesmarcadores] => 300\n    [config_campeon] => 500\n    [config_subcampeon] => 250\n    [config_tercero] => 200\n    [config_cuarto] => 50\n    [config_goleador] => 150\n    [config_valla] => 150\n    [config_id] => 1\n)\n');

-- --------------------------------------------------------

--
-- Table structure for table `octavos`
--

CREATE TABLE `octavos` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `a1` varchar(11) DEFAULT NULL,
  `a2` varchar(11) DEFAULT NULL,
  `b1` varchar(11) DEFAULT NULL,
  `b2` varchar(11) DEFAULT NULL,
  `c1` varchar(11) DEFAULT NULL,
  `c2` varchar(11) DEFAULT NULL,
  `d1` varchar(11) DEFAULT NULL,
  `d2` varchar(11) DEFAULT NULL,
  `e1` varchar(11) DEFAULT NULL,
  `e2` varchar(11) DEFAULT NULL,
  `f1` varchar(11) DEFAULT NULL,
  `f2` varchar(11) DEFAULT NULL,
  `g1` varchar(11) DEFAULT NULL,
  `g2` varchar(11) DEFAULT NULL,
  `h1` varchar(11) DEFAULT NULL,
  `h2` varchar(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otros`
--

CREATE TABLE `otros` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `goleador` varchar(100) DEFAULT NULL,
  `valla` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partidos`
--

CREATE TABLE `partidos` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `equipo1` int(11) DEFAULT NULL,
  `equipo2` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `fase` varchar(11) DEFAULT '1',
  `valor1` varchar(11) DEFAULT NULL,
  `valor2` varchar(11) DEFAULT NULL,
  `ganador` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partidos`
--

INSERT INTO `partidos` (`id`, `numero`, `equipo1`, `equipo2`, `fecha`, `hora`, `fase`, `valor1`, `valor2`, `ganador`) VALUES
(1, 1, 1, 3, '2024-06-20', '19:00:00', '1', '2', '2', '-1'),
(2, 2, 2, 4, '2024-06-21', '19:00:00', '1', '2', '2', '-1'),
(3, 3, 5, 6, '2024-06-22', '17:00:00', '1', '', '', ''),
(4, 4, 8, 7, '2024-06-22', '20:00:00', '1', '', '', ''),
(5, 5, 11, 9, '2024-06-23', '17:00:00', '1', '', '', ''),
(6, 6, 10, 12, '2024-06-23', '20:00:00', '1', '', '', ''),
(7, 7, 14, 13, '2024-06-24', '17:00:00', '1', '', '', ''),
(8, 8, 15, 16, '2024-06-24', '20:00:00', '1', '', '', ''),
(9, 9, 2, 3, '2024-06-25', '17:00:00', '1', '', '', ''),
(10, 10, 4, 1, '2024-06-25', '20:00:00', '1', '', '', ''),
(11, 11, 5, 7, '2024-06-26', '17:00:00', '1', '', '', ''),
(12, 12, 6, 8, '2024-06-26', '20:00:00', '1', '', '', ''),
(13, 13, 12, 11, '2024-06-27', '17:00:00', '1', '', '', ''),
(14, 14, 10, 9, '2024-06-27', '20:00:00', '1', '', '', ''),
(15, 15, 15, 14, '2024-07-02', '20:00:00', '1', '', '', ''),
(16, 16, 13, 15, '2024-06-28', '20:00:00', '1', '', '', ''),
(17, 17, 1, 2, '2024-06-29', '19:00:00', '1', '', '', ''),
(18, 18, 3, 4, '2024-06-29', '19:00:00', '1', '', '', ''),
(19, 19, 7, 6, '2024-06-30', '19:00:00', '1', '', '', ''),
(20, 20, 8, 5, '2024-06-30', '19:00:00', '1', '', '', ''),
(21, 21, 9, 8, '2024-07-01', '20:00:00', '1', '', '', ''),
(22, 22, 11, 10, '2024-07-01', '20:00:00', '1', '', '', ''),
(23, 23, 15, 14, '2024-07-02', '20:00:00', '1', '', '', ''),
(24, 24, 16, 13, '2024-07-02', '20:00:00', '1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `publicidad`
--

CREATE TABLE `publicidad` (
  `publicidad_id` int(11) NOT NULL,
  `publicidad_seccion` int(11) DEFAULT NULL,
  `publicidad_nombre` varchar(500) DEFAULT NULL,
  `publicidad_fecha` date DEFAULT NULL,
  `publicidad_imagen` varchar(500) DEFAULT NULL,
  `publicidad_imagenresponsive` varchar(255) DEFAULT NULL,
  `publicidad_color_fondo` varchar(255) DEFAULT NULL,
  `publicidad_video` text DEFAULT NULL,
  `publicidad_posicion` varchar(255) DEFAULT NULL,
  `publicidad_descripcion` text DEFAULT NULL,
  `publicidad_estado` int(11) DEFAULT NULL,
  `publicidad_click` int(11) DEFAULT NULL,
  `publicidad_enlace` varchar(500) DEFAULT NULL,
  `publicidad_tipo_enlace` int(11) DEFAULT NULL,
  `publicidad_texto_enlace` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `publicidad`
--

INSERT INTO `publicidad` (`publicidad_id`, `publicidad_seccion`, `publicidad_nombre`, `publicidad_fecha`, `publicidad_imagen`, `publicidad_imagenresponsive`, `publicidad_color_fondo`, `publicidad_video`, `publicidad_posicion`, `publicidad_descripcion`, `publicidad_estado`, `publicidad_click`, `publicidad_enlace`, `publicidad_tipo_enlace`, `publicidad_texto_enlace`, `orden`) VALUES
(1, 1, 'Banner 1', '2024-05-15', 'banner-omega-polla4.jpg', 'banner-omega-polla5.jpg', '', '', '', '', 1, 0, '', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `valor1` varchar(11) NOT NULL,
  `valor2` varchar(11) NOT NULL,
  `ganador` varchar(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resultados`
--

INSERT INTO `resultados` (`id`, `usuario`, `partido`, `valor1`, `valor2`, `ganador`, `fecha`) VALUES
(2, 1, '1', '1', '0', '1', '2024-05-20 12:35:01'),
(3, 1, '2', '1', '2', '4', '2024-05-20 12:35:01'),
(6, 2, '1', '1', '2', '3', '2024-05-27 10:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `semis`
--

CREATE TABLE `semis` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `e1` varchar(255) DEFAULT NULL,
  `e2` varchar(255) DEFAULT NULL,
  `e3` varchar(255) DEFAULT NULL,
  `e4` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `semis`
--

INSERT INTO `semis` (`id`, `usuario`, `e1`, `e2`, `e3`, `e4`, `fecha`) VALUES
(1, '1', '15', '3', '11', '16', '2024-05-27 10:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_date` date DEFAULT NULL,
  `user_names` varchar(255) DEFAULT NULL,
  `user_cedula` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_telefono` varchar(255) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `user_state` int(11) DEFAULT NULL,
  `user_user` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_delete` int(11) DEFAULT NULL,
  `user_current_user` bigint(20) DEFAULT NULL,
  `user_code` varchar(500) DEFAULT NULL,
  `user_empresa` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_date`, `user_names`, `user_cedula`, `user_email`, `user_telefono`, `user_level`, `user_state`, `user_user`, `user_password`, `user_delete`, `user_current_user`, `user_code`, `user_empresa`) VALUES
(1, '2018-07-17', 'Administrador', '1232321321', 'gerencia@omegawebsystems.com', '123213123123', 1, 1, 'admin', '$2y$10$ULs0eFV/YanZb7L386//7O0wf6W4urgVrAaWDnRcSb.bLWi0ZmO8y', 1, 1, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userpolla`
--

CREATE TABLE `userpolla` (
  `user_id` int(11) NOT NULL,
  `user_names` varchar(255) DEFAULT NULL,
  `user_lastnames` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_idnumber` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_country` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `user_state` varchar(255) DEFAULT NULL,
  `user_user` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_delete` varchar(255) DEFAULT NULL,
  `user_current_user` varchar(255) DEFAULT NULL,
  `user_zona` varchar(255) DEFAULT NULL,
  `user_celular` varchar(255) DEFAULT NULL,
  `user_puntos` varchar(255) DEFAULT NULL,
  `user_marcadores` varchar(255) DEFAULT NULL,
  `user_ganadores` varchar(255) DEFAULT NULL,
  `user_otros` varchar(255) DEFAULT NULL,
  `user_total` varchar(255) DEFAULT NULL,
  `user_cuotas` varchar(255) DEFAULT NULL,
  `user_paso` varchar(255) DEFAULT NULL,
  `user_fecha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `userpolla`
--

INSERT INTO `userpolla` (`user_id`, `user_names`, `user_lastnames`, `user_email`, `user_idnumber`, `user_city`, `user_country`, `user_phone`, `user_address`, `user_level`, `user_state`, `user_user`, `user_password`, `user_delete`, `user_current_user`, `user_zona`, `user_celular`, `user_puntos`, `user_marcadores`, `user_ganadores`, `user_otros`, `user_total`, `user_cuotas`, `user_paso`, `user_fecha`) VALUES
(1, 'JUAN SEBASTIAN SANDOVAL VARGAS', '', 'desarrollo8@omegawebsystems.com', '1100973339', '', '', '', '', 2, '1', '1100973339', '$2y$10$865VQ6xxU21Roj1fkv/kA.HIIfViI5Bf56hAXM2xehpy7MnxG7VFm', '0', '0', '', '3212312312', '470', '0', '2', '3', '5', '1', '4', '2024-05-15'),
(2, 'GUZMAN ARGUELLO ESPERANZA', '', 'prueba@prueba.com', '38284216', '', '', '', '', 2, '1', '38284216', '1234', '', '', '', '31224345', '10', '0', '1', '0', '1', '1', '4', '2024-05-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cedulas`
--
ALTER TABLE `cedulas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indexes for table `clasificados`
--
ALTER TABLE `clasificados`
  ADD PRIMARY KEY (`clasificado_id`);

--
-- Indexes for table `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`contenido_id`);

--
-- Indexes for table `cuartos`
--
ALTER TABLE `cuartos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enlaces`
--
ALTER TABLE `enlaces`
  ADD PRIMARY KEY (`enlaces_id`);

--
-- Indexes for table `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fases`
--
ALTER TABLE `fases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final`
--
ALTER TABLE `final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_pagina`
--
ALTER TABLE `info_pagina`
  ADD PRIMARY KEY (`info_pagina_id`);

--
-- Indexes for table `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `octavos`
--
ALTER TABLE `octavos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otros`
--
ALTER TABLE `otros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publicidad`
--
ALTER TABLE `publicidad`
  ADD PRIMARY KEY (`publicidad_id`);

--
-- Indexes for table `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `partido` (`partido`),
  ADD KEY `ganador` (`ganador`);

--
-- Indexes for table `semis`
--
ALTER TABLE `semis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_user` (`user_user`);

--
-- Indexes for table `userpolla`
--
ALTER TABLE `userpolla`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cedulas`
--
ALTER TABLE `cedulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `clasificados`
--
ALTER TABLE `clasificados`
  MODIFY `clasificado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contenido`
--
ALTER TABLE `contenido`
  MODIFY `contenido_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cuartos`
--
ALTER TABLE `cuartos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enlaces`
--
ALTER TABLE `enlaces`
  MODIFY `enlaces_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fases`
--
ALTER TABLE `fases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `final`
--
ALTER TABLE `final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `info_pagina`
--
ALTER TABLE `info_pagina`
  MODIFY `info_pagina_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1089;

--
-- AUTO_INCREMENT for table `octavos`
--
ALTER TABLE `octavos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otros`
--
ALTER TABLE `otros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `publicidad`
--
ALTER TABLE `publicidad`
  MODIFY `publicidad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semis`
--
ALTER TABLE `semis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userpolla`
--
ALTER TABLE `userpolla`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
