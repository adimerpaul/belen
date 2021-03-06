-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2020 a las 17:15:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `belen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consentimiento`
--

CREATE TABLE `consentimiento` (
  `idconsentimiento` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `contenido` mediumtext COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `consentimiento`
--

INSERT INTO `consentimiento` (`idconsentimiento`, `nombre`, `contenido`) VALUES
(1, 'CONSENTIMIENTO INFORMADO PARA TRATAMIENTO MEDIANTE PLASMA RICO EN PLAQUETAS - MEGADOSIS VITAMINA C', 'Por el presente consiento que se me realice el procedimiento terapéutico indicado y aconsejado. Se me ha explicado la naturaleza y el objetivo del tratamiento, incluyendo riesgos leves y de gravedad en caso de no cuidarme y alternativas disponibles al tratamiento. Estoy satisfecho con esas explicaciones y las he comprendido.\r\nTambién consiento la realización de todo procedimiento o tratamiento adicional o alternativo que en opinión del Medico sean necesarios. Consiento la administración de aquellos anestésicos que puedan ser considerados necesarios o convenientes, comprendiendo que ello puede implicar ciertos riesgos de distinta envergadura. Además de consentir como la filmación o fotografía para fines comparativos.\r\n\"ESCENCIA SPA MEDICO\", me ha informado en qué consiste el tratamiento. Se me ha realizado una Historia Clínica para descartar patologías y riesgos, que impidan beneficiarme con éste tratamiento, confirmando que no padezco ninguna de las siguientes patologías motivo de contraindicación de la aplicación del tratamiento.\r\n*Embarazo y  Lactancia \r\n*Inmunosupresión , Patología tumoral , Epilepsia convulsiones, deficiencias de coagulación.\r\n*Sitios de infección local activa , Inflamación local activa\r\n*Alergias \r\n*Ingesta de alcohol en la última semana antes del tratamiento. \r\n*Ingesta de Aspirina o antiinflamatorios, o encontrarme con tratamiento antibiótico en la última semana previa al tratamiento\r\n*Enfermedades del corazón,\r\n*Cirugías recientes o próximas al tratamiento excepto para el caso de la megadosis de vitamina C\r\nPROCEDIMIENTO.- Técnica ambulatoria que consiste: paciente en decúbito dorsal se le aplica en la zona a tratar una crema anestésica dejándola que actúe unos minutos, tiempo en el que permanece tranquilamente relajado. Luego se extrae entre 5ml para el plasma superficial y entre 20 y 25ml de sangre venosa del mismo paciente para el caso del plasma profundo, la que se coloca en tubos estériles a una centrifugadora por medio de la cual se separa el plasma de los glóbulos rojos y blancos. Se activa la fracción de plasma a utilizar, al ser retirado el plasma de los tubos en jeringas pre cargadas con el activador. Una vez conseguido el plasma rico en factores de crecimiento se introduce en la dermis mediante inyecciones superficiales intradérmicas superficial o nappage, subcutánea se aplica  con una aguja hipodérmica, haciendo pequeños y múltiples micro inyecciones en la zona a tratar.\r\nPara el caso de la megadosis de vitamina C solamente me colocarán una vía endovenosa en el antebrazo por el lapso de media a una hora donde ingresará la vitamina c y el suero. Para el caso de células madre además deberé firmar un consentimiento adicional.\r\nSe me ha informado que puedo sentir un ligero malestar, dependiendo de mi umbral de dolor. Irritación, Enrojecimiento, Hipersensibilidad en la piel tratada Inflamación,  Picazón, molestias en la piel aparición de hematomas y que según el procedimiento, la duración puede variar , generalmente  de media a una hora, luego de la cual el paciente puede regresar sin problemas a casa siguiendo las indicaciones posteriores. La cantidad de sesiones está en relación directa con el efecto que quiera obtenerse normalmente se requieren de 2 a más sesiones, por lo tanto hago entender que no necesitaré firmar un consentimiento informado en cada sesión, sobreentendiendo que el primero es válido para todas las sesiones que voluntariamente solicite.\r\nCUIDADOS POSTERIORES.-\r\n*Evitar la  exposición al sol, cama solar o cualquier fuente de calor externo (saunas, horno, estufas, radiación solar).\r\n*Utilizar protector solar  FPS mayor 45 cada 2hrs\r\n*No Depilar  o  afeitar  la zona tratada por 48hrs\r\n*Evitar realizar masajes, ejercicios violentos (Excepto plasma superficial y megadosis de vitamina C), natación, baños de inmersión o sauna, ya que estos generan vasodilatación e infección por el lapso de 72Hrs\r\n*No consumir bebidas alcohólicas 72 Hrs, no comidas picantes o muy condimentadas, no gaseosas ni dulces.\r\n*Dejo constancia además de que comunicaré al profesional encargado, cualquier molestia o reacción posterior a la sesión.\r\n*Control Médico en 48 hrs.\r\nHe comprendido, todas las explicaciones otorgadas en lenguaje sencillo y claro, el profesional que me ha atendido me han permitido realizar todas las observaciones y me aclaró dudas planteadas.\r\nPor ello manifiesto que estoy satisfecho(a) con la información recibida y que comprendo el alcance y riesgos del tratamiento libremente y en tales condiciones.\r\n\r\n\r\n'),
(2, 'CONSENTIMIENTO INFORMADO MESOTERAPIA, FOSFA E HIDRO', 'aaaa'),
(3, 'CONSENTIMIENTO INFORMADO ac, hialuronico , botox , rinomodelacion', ''),
(4, 'CONSENTIMIENTO INFORMADO REDUCTOR', ''),
(5, 'CONSENTIMIENTO INFORMADO TRATAMIENTO IPL-PEELENG-DERMO', ' “ESCENCIA SPA MEDICO”, me ha informado en que consiste el tratamiento con Luz Pulsada Intensa (IPL) – Peeleng Facial – Dermoabrasión con puntas de Diamantes. Se me ha realizado una Historia Clínica para descartar patologías y otros, que me impidan beneficiarme con éste tratamiento, también consiento cualquier tratamiento adicional o alternativo que en opini´n de mi médico tratante sugiera. Así mismo autorizo para que se tomen fotografías del antes de mi tratamiento, durante y después, para fines comparativos. \r\nSiendo mi firma al pie de éste documento, la confirmación de que no padezco ninguna de las siguientes patologías motivo de contraindicación.\r\n?	No estoy tomando, ni he tomado isotretinoina, acitetrina, vitamina A o ácido cis-retinoico, en altas dosis, en caso afirmativo se me ha informado que debo esperar por lo menos 4 meses antes del tratamiento.\r\n?	No he usado cremas que contengan ácido glicólico o retinoico ayer ni hoy, tampoco puedo usarlas 72 horas después del tratamiento.\r\n?	No estoy embarazada, ni dando de lactar.\r\n?	No sufro de epilepsia.\r\n?	No estoy en proceso de Herpes Simplex.\r\n?	No tengo fiebre, ni infección aguda.\r\n?	No padezco de ninguna infección dermatológica en éste momento (dermatitis), ni sospecha de cáncer de piel.\r\n?	No padezco de Diabetes Mellitus complicada.\r\n?	No estoy en tratamiento con antibióticos u otros tratamientos que produzcan fotosensibilidad (hipoglucemiantes orales, clordiazpoxido, griseofulvina,  ciprofloxacino, ácido nalidixico, psoralenos, diuréticos tiazídicos, antimaláricos, difenhidramina, isoniazida, noretinodrel, sulfamidas, vacuna antisarampión, barbitúricos, fenotiazidas, mestranol, sales de oro o tetraciclinas.\r\n?	No he tomado sol ni rayos UVA (bronceado en cama solar), 30 días antes del tratamiento.\r\n\r\nPROCEDIMIENTO.- Se me colocará un protector ocular en el caso de la luz pulsada intensa para resguardarme de la luz láser durante el procedimiento. Se apoyará el cabezal láser sobre mi piel con gel y con cada pulsación se me ha informado de que puedo sentir un ligero malestar, dependiendo de mi umbral de dolor. En el caso del peeleng se aplicará un ácido de acuerdo a mi patología sobre la cara que puede ser superficial, medio o profundo, durante un tiempo controlado por el médico tratante. Para la dermoabrasión con puntas de diamantes se aplicará un dispositivo que pule y absorbe mis células muertas de la piel, de igual manera durante un tiempo determinado. Se me ha informado de que según el procedimiento, la duración puede variar entre 2 minutos y 1 hora dependiendo de la zona a tratar. También tengo conocimiento de que será necesario como un  mínimo de 5 sesiones a más, para conseguir mi propósito, por lo tanto hago entender que no necesitaré firmar un consentimiento informado en cada sesión, sobreentendiendo que el primero es válido para todas las sesiones que voluntariamente solicite.\r\n\r\nCUIDADOS POSTERIORES.- Después de realizada la sesión y durante los siguientes 30 días, no me  expondré a los rayos solares de forma directa ni prolongada, usaré protector solar mayor a 45 FPS. Dejo constancia además de que comunicaré al profesional encargado, cualquier molestia o reacción posterior a la sesión.\r\n\r\nHe comprendido, todas las explicaciones otorgadas en lenguaje sencillo y claro, el profesional que me ha atendido me permitió realizar todas las observaciones y me aclaró dudas planteadas.\r\nTambién comprendo que en cualquier momento y sin necesidad de dar ninguna explicación, puedo cancelar el consentimiento que ahora presto.\r\nPor ello manifiesto que estoy satisfecho(a) con la información recibida y que comprendo el alcance y riesgos del tratamiento libremente y en tales condiciones.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `idconsulta` int(11) NOT NULL,
  `motivo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cot` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `ref` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `idmonto` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corporal`
--

CREATE TABLE `corporal` (
  `idcorporal` int(11) NOT NULL,
  `tratamiento` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `obs` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cub` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `idmonto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `idcotizacion` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `idhistorial` int(11) NOT NULL,
  `diagnostico` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `programa` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`idcotizacion`, `fecha`, `idhistorial`, `diagnostico`, `programa`) VALUES
(72, '2019-04-29 19:53:44', 4, 'melasma llameal', '1.dieta'),
(74, '2019-04-30 17:38:20', 3, 'melasma llameal', '1dieta'),
(75, '2019-04-30 19:11:32', 1, '', ''),
(76, '2019-05-06 16:14:21', 2, 'melasma llameal', '1. dieta 2.ejercicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacionconsetimeinto`
--

CREATE TABLE `cotizacionconsetimeinto` (
  `idconsetimiento` int(11) NOT NULL,
  `idcotizacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacionlaboratorio`
--

CREATE TABLE `cotizacionlaboratorio` (
  `idcotizacion` int(11) DEFAULT NULL,
  `idlaboratorio` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `diagnostico` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `otros` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `indicaciones` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idcotizacionlaboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciontratamiento`
--

CREATE TABLE `cotizaciontratamiento` (
  `idcotizacion` int(11) NOT NULL,
  `idtratamiento` int(11) NOT NULL,
  `n` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `costo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cotizaciontratamiento`
--

INSERT INTO `cotizaciontratamiento` (`idcotizacion`, `idtratamiento`, `n`, `tiempo`, `costo`) VALUES
(72, 29, '6', '10 min', '150'),
(74, 29, '6', '10 min', '150'),
(75, 27, '6', '15min', '180'),
(76, 29, '6', '10 min', '150');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `idreceta` int(11) DEFAULT NULL,
  `idmedicamento` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefactura`
--

CREATE TABLE `detallefactura` (
  `idfactura` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detallefactura`
--

INSERT INTO `detallefactura` (`idfactura`, `idproducto`, `cantidad`, `subtotal`, `precio`) VALUES
(11, 5, 1, 160, 160),
(11, 8, 1, 20, 20),
(11, 9, 1, 20, 20),
(12, 8, 1, 20, 20),
(13, 5, 1, 160, 160),
(13, 8, 1, 20, 20),
(13, 9, 1, 20, 20),
(14, 5, 1, 160, 160),
(14, 8, 1, 20, 20),
(14, 9, 1, 20, 20),
(15, 5, 1, 160, 160),
(15, 8, 1, 20, 20),
(15, 9, 1, 20, 20),
(16, 8, 20, 400, 20),
(17, 8, 6, 120, 20),
(18, 5, 1, 160, 160),
(18, 8, 1, 0, 0),
(18, 9, 2, 40, 20),
(19, 8, 1, 20, 20),
(20, 8, 1, 20, 20),
(21, 5, 1, 160, 160),
(21, 8, 1, 20, 20),
(21, 9, 1, 20, 20),
(22, 8, 1, 20, 20),
(23, 8, 1, 20, 20),
(24, 8, 1, 20, 20),
(25, 8, 1, 20, 20),
(26, 9, 1, 19, 20),
(27, 5, 1, 136, 160),
(27, 9, 1, 19, 20),
(28, 3, 16, 320, 20),
(29, 8, 1, 20, 20),
(30, 14, 1, 0.5, 0.5),
(31, 14, 1, 0.5, 0.5),
(32, 14, 1, 0.5, 0.5),
(33, 14, 1, 0.5, 0.5),
(34, 14, 1, 0.5, 0.5),
(35, 14, 1, 0.5, 0.5),
(37, 8, 3, 60.89, 20.5),
(38, 5, 1, 160, 160),
(38, 8, 2, 40, 20),
(39, 5, 1, 160, 160),
(39, 8, 1, 20, 20),
(40, 3, 8, 160, 20),
(41, 8, 1, 20, 20),
(42, 14, 1, 0.5, 0.5),
(43, 14, 17, 8.5, 0.5),
(44, 8, 3, 10, 20),
(45, 8, 4, 10, 20),
(46, 10, 2, 2.5, 2.5),
(47, 13, 2, 10.12, 5.5),
(48, 8, 2, 20, 20),
(48, 13, 2, 10.12, 5.5),
(49, 16, 20, 110, 5.5),
(50, 8, 1, 20, 20),
(51, 8, 1, 20, 20),
(52, 8, 1, 20, 20),
(53, 8, 1, 20, 20),
(54, 8, 1, 20, 20),
(55, 10, 1, 2.5, 2.5),
(56, 3, 1, 20, 20),
(57, 12, 1, 5.5, 5.5),
(57, 13, 1, 5.5, 5.5),
(58, 14, 1, 0.5, 0.5),
(59, 18, 2, 9, 4.5),
(60, 19, 1, 2.5, 2.5),
(61, 20, 2, 5, 2.5),
(62, 21, 1, 52.5, 52.5),
(63, 20, 1, 2.5, 2.5),
(64, 8, 2, 20, 20),
(65, 8, 2, 20, 20),
(66, 8, 2, 20, 20),
(67, 21, 2, 105, 52.5),
(68, 14, 1, 0.5, 0.5),
(69, 3, 2, 40, 20),
(70, 3, 1, 20, 20),
(70, 5, 1, 160, 160),
(70, 10, 1, 2.5, 2.5),
(70, 16, 1, 5.5, 5.5),
(70, 19, 1, 2.5, 2.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deudas`
--

CREATE TABLE `deudas` (
  `iddeudas` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `comprador` varchar(85) COLLATE utf8_spanish2_ci NOT NULL,
  `detalle` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `celular` varchar(85) COLLATE utf8_spanish2_ci NOT NULL,
  `monto` float NOT NULL,
  `idusuario` int(11) NOT NULL DEFAULT 1,
  `tipo` varchar(25) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `deudas`
--

INSERT INTO `deudas` (`iddeudas`, `fecha`, `comprador`, `detalle`, `celular`, `monto`, `idusuario`, `tipo`) VALUES
(6, '2019-04-29 19:07:15', 'adimer', 'adelanto meso', '5261245', 120, 1, 'ADELANTO'),
(7, '2019-04-29 19:08:07', 'adimer', 'adelnato sofware', '', 150, 1, 'PAGO DEUDA'),
(8, '2019-04-30 17:17:40', 'JOSe', 'pago de agua', '', 100, 1, 'PAGO DEUDA'),
(9, '2019-05-06 16:20:58', 'LA LUZ', 'PAGO DE LUZ', '', 100, 1, 'PAGO DEUDA'),
(10, '2019-05-06 16:21:35', 'DON DANIEL', 'adelanto meso', '', 100, 1, 'ADELANTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dosificacion`
--

CREATE TABLE `dosificacion` (
  `iddosificacion` int(11) NOT NULL,
  `nrotramite` text COLLATE utf8_spanish2_ci NOT NULL,
  `nroautorizacion` text COLLATE utf8_spanish2_ci NOT NULL,
  `nrofacturai` int(11) NOT NULL,
  `llave` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `leyenda` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(10) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'INACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `dosificacion`
--

INSERT INTO `dosificacion` (`iddosificacion`, `nrotramite`, `nroautorizacion`, `nrofacturai`, `llave`, `desde`, `hasta`, `leyenda`, `estado`) VALUES
(3, '400001984457', '332401900008210', 189, '38@#I#(Z95qd-@=2ja2JLFUUN)G6GBWCZE#-SVEDHgtQBh@qV_UHPqXSEvnCZJBB', '2019-04-24', '2020-04-24', 'LEY Ley N° 453: Tienes derecho a un trato equitativo sin discriminacion en la oferta de productos.', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egreso`
--

CREATE TABLE `egreso` (
  `idegreso` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `monto` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idtratamiento` int(11) NOT NULL DEFAULT 24
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `egreso`
--

INSERT INTO `egreso` (`idegreso`, `fecha`, `monto`, `idusuario`, `idtratamiento`) VALUES
(1, '2019-04-30 17:38:31', 50, 1, 24),
(2, '2019-04-30 17:39:59', 150, 1, 24),
(3, '2019-04-30 17:55:56', 50, 1, 29),
(4, '2019-05-06 16:15:50', 100, 1, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idusuario` int(100) DEFAULT NULL,
  `idpaciente` int(11) NOT NULL DEFAULT 1,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facial`
--

CREATE TABLE `facial` (
  `idfacial` int(11) NOT NULL,
  `tratamiento` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `obs` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cub` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `idmonto` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idfactura` int(11) NOT NULL,
  `idpaciente` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `total` float NOT NULL,
  `codigocontrol` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `iddosificacion` int(11) NOT NULL,
  `nrofactura` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL DEFAULT 1,
  `estado` varchar(5) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'D',
  `tipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'D',
  `descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idfactura`, `idpaciente`, `fecha`, `total`, `codigocontrol`, `iddosificacion`, `nrofactura`, `idusuario`, `estado`, `tipo`, `descuento`) VALUES
(2, 5, '2020-01-30 09:30:40', 160, 'A4-C9-1E-7C-92', 3, 189, 1, 'D', 'D', 0),
(3, 5, '2020-01-30 09:31:03', 160, '48-7E-2D-BB-A4', 3, 190, 1, 'D', 'D', 0),
(4, 5, '2020-01-30 09:32:21', 20, '69-79-4E-AE-77', 3, 191, 1, 'D', 'D', 0),
(5, 5, '2020-01-30 09:38:14', 20, '9E-9D-B7-7B', 3, 192, 1, 'D', 'D', 0),
(6, 14, '2020-01-30 09:40:16', 180, 'F1-31-58-AF-A1', 3, 193, 1, 'D', 'D', 0),
(7, 14, '2020-01-30 09:41:56', 20, 'B1-1C-F3-8D-FF', 3, 194, 1, 'D', 'D', 0),
(8, 14, '2020-01-30 09:42:15', 200, 'FC-BD-E4-43-F3', 3, 195, 1, 'D', 'D', 0),
(9, 5, '2020-01-30 09:43:01', 200, '18-CC-24-AA-29', 3, 196, 1, 'D', 'D', 0),
(10, 5, '2020-01-30 09:45:05', 180, 'A8-74-0E-8E-D0', 3, 197, 1, 'D', 'D', 0),
(11, 5, '2020-01-30 09:46:10', 0, 'B6-AC-49-CF-0E', 3, 198, 1, 'A', 'D', 0),
(12, 5, '2020-01-30 09:47:09', 20, 'E0-79-8F-3B-85', 3, 199, 1, 'D', 'D', 0),
(13, 5, '2020-01-30 09:48:05', 200, '41-9A-04-96-27', 3, 200, 1, 'D', 'D', 0),
(14, 5, '2020-01-30 09:49:26', 200, 'C2-D4-F5-62', 3, 201, 1, 'D', 'D', 0),
(15, 14, '2020-01-30 09:51:28', 200, 'BB-7F-BB-46-93', 3, 202, 1, 'D', 'D', 0),
(16, 14, '2020-01-30 10:03:45', 0, 'C2-D0-F3-29', 3, 203, 1, 'A', 'D', 0),
(17, 14, '2020-01-30 10:22:44', 0, 'C3-28-FA-67', 3, 204, 1, 'A', 'D', 0),
(18, 14, '2020-01-31 08:45:13', 200, '52-DC-29-47', 3, 205, 1, 'D', 'D', 0),
(19, 14, '2020-01-31 15:15:19', 20, '81-D6-90-08', 3, 206, 5, 'D', 'D', 0),
(20, 14, '2020-01-31 15:18:24', 20, '54-80-67-8B-36', 3, 207, 5, 'D', 'D', 0),
(21, 14, '2020-01-31 15:18:38', 0, '8D-6C-9B-3F', 3, 208, 5, 'A', 'D', 0),
(22, 15, '2020-02-10 12:03:15', 40, 'CC-28-92-1E-A4', 3, 209, 6, 'D', 'D', 0),
(23, 15, '2020-02-10 12:03:27', 40, '', 0, 0, 6, 'ORDEN', 'D', 0),
(24, 15, '2020-02-10 12:03:50', 40, 'EE-9C-3E-65', 3, 210, 6, 'D', 'D', 0),
(25, 15, '2020-02-10 12:04:18', 80, '0C-09-64-B6-A8', 3, 211, 6, 'D', 'D', 0),
(26, 16, '2020-02-10 12:33:20', 19, 'E0-FE-A7-7F', 3, 212, 6, 'D', 'D', 0),
(27, 16, '2020-02-10 12:33:47', 155, 'F6-F0-28-E1-43', 3, 213, 6, 'D', 'D', 0),
(28, 16, '2020-02-11 09:57:08', 320, '7F-58-74-D3', 3, 214, 6, 'D', 'D', 0),
(29, 16, '2020-02-11 20:13:52', 20, '99-D3-43-5A', 3, 215, 6, 'D', 'D', 0),
(30, 16, '2020-02-12 20:24:07', 1, 'EE-F4-47-3F-75', 3, 216, 6, 'D', 'D', 0),
(31, 14, '2020-02-13 09:00:04', 0.5, '29-AA-0D-4E-C0', 3, 217, 6, 'D', 'D', 0),
(32, 14, '2020-02-13 10:01:08', 0.5, '0C-F4-52-E4-4D', 3, 218, 6, 'D', 'D', 0),
(33, 14, '2020-02-13 10:09:57', 0.5, 'DA-85-86-A0', 3, 219, 6, 'D', 'D', 0),
(34, 14, '2020-02-13 10:10:04', 0.5, '', 0, 0, 6, 'D', 'ORDEN', 0),
(35, 16, '2020-02-13 10:10:32', 0.5, '', 0, 0, 6, 'D', 'ORDEN', 0),
(36, 16, '2020-02-13 15:26:33', 0, '', 0, 0, 6, 'D', 'ORDEN', 0),
(37, 16, '2020-02-13 15:29:40', 60.89, '0D-A1-CA-30-9C', 3, 220, 6, 'D', 'D', 0),
(38, 16, '2020-02-19 17:24:02', 200, 'DF-9A-5B-F2-59', 3, 221, 6, 'D', 'D', 0),
(39, 16, '2020-02-20 16:28:23', 180, 'EB-96-7D-65-F3', 3, 222, 6, 'D', 'D', 0),
(40, 16, '2020-02-21 22:20:55', 160, '95-BE-4E-97-62', 3, 223, 6, 'D', 'D', 0),
(41, 16, '2020-02-22 18:11:44', 40, '4F-7B-09-9C-80', 3, 224, 6, 'D', 'D', 0),
(42, 16, '2020-02-23 10:17:23', 1.5, '58-F3-60-51-E9', 3, 225, 6, 'D', 'D', 0),
(43, 16, '2020-02-23 10:23:11', 8.5, '14-30-D1-93-AB', 3, 226, 6, 'D', 'D', 0),
(44, 16, '2020-02-23 13:10:36', 10, 'B3-46-7C-6C-D5', 3, 227, 6, 'D', 'D', 0),
(45, 16, '2020-02-23 13:11:33', 10, '6E-BD-BA-1A-0E', 3, 228, 6, 'D', 'D', 0),
(46, 16, '2020-02-23 13:16:44', 2.5, '60-58-F8-05-5D', 3, 229, 6, 'D', 'D', 0),
(47, 17, '2020-02-24 11:47:50', 10.12, '78-F5-92-A0', 3, 230, 6, 'D', 'D', 0),
(48, 17, '2020-02-24 11:48:57', 30.12, '98-23-07-7B-DD', 3, 231, 6, 'D', 'D', 0),
(49, 16, '2020-02-24 11:52:01', 110, '', 0, 0, 6, 'D', 'ORDEN', 0),
(50, 18, '2020-02-24 15:00:37', 20, '', 0, 0, 6, 'D', 'ORDEN', 0),
(51, 18, '2020-02-24 15:01:54', 20, 'EF-34-96-73', 3, 232, 6, 'D', 'D', 0),
(52, 18, '2020-02-24 15:30:38', 20, '6E-E0-25-74', 3, 233, 6, 'D', 'D', 0),
(53, 18, '2020-02-24 15:30:52', 20, '9A-33-D6-5F-A0', 3, 234, 6, 'D', 'D', 0),
(54, 18, '2020-02-24 15:43:12', 20, '', 0, 0, 6, 'D', 'ORDEN', 0),
(55, 16, '2020-02-27 19:27:15', 2.5, 'AD-DF-9E-25', 3, 235, 6, 'D', 'D', 0),
(56, 19, '2020-02-27 19:35:42', 20, '', 0, 0, 6, 'D', 'ORDEN', 0),
(57, 20, '2020-02-27 20:43:42', 11, '77-2B-C6-07-D5', 3, 236, 6, 'D', 'D', 0),
(58, 21, '2020-02-27 22:40:01', 0.5, '7E-AF-4E-FC-B3', 3, 237, 6, 'D', 'D', 0),
(59, 22, '2020-02-27 22:50:10', 9, 'A2-48-8A-A9', 3, 238, 6, 'D', 'D', 0),
(60, 23, '2020-02-28 00:54:14', 2.5, 'CE-3C-30-0F-50', 3, 239, 6, 'D', 'D', 0),
(61, 16, '2020-02-28 01:01:24', 5, '6D-90-99-89-D0', 3, 240, 6, 'D', 'D', 0),
(62, 24, '2020-02-28 01:07:33', 52.5, '23-71-43-39', 3, 241, 6, 'D', 'D', 0),
(63, 25, '2020-02-28 09:24:13', 2.5, '90-98-BC-D6', 3, 242, 6, 'D', 'D', 0),
(64, 5, '2020-02-28 20:46:46', 20, '20-01-67-9F-D1', 3, 243, 6, 'D', 'D', 0),
(65, 5, '2020-02-28 20:50:23', 20, 'C3-18-F2-FC-6B', 3, 244, 6, 'D', 'D', 0),
(66, 5, '2020-02-28 20:50:28', 20, '5F-AF-95-01-78', 3, 245, 6, 'D', 'D', 0),
(67, 26, '2020-02-28 20:59:35', 105, '9F-13-38-3D', 3, 246, 6, 'D', 'D', 0),
(68, 14, '2020-03-02 09:49:25', 0.5, 'AE-F3-F5-24', 3, 247, 1, 'D', 'D', 0),
(69, 14, '2020-03-02 09:59:18', 40, 'B7-2A-29-85-03', 3, 248, 1, 'D', 'D', 0),
(70, 14, '2020-03-02 09:59:49', 190.5, '02-69-FC-13-D8', 3, 249, 1, 'D', 'D', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formapresentacion`
--

CREATE TABLE `formapresentacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formapresentacion`
--

INSERT INTO `formapresentacion` (`id`, `nombre`, `fecha`) VALUES
(1, 'pomada', '2020-01-29 15:03:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE `foto` (
  `idfoto` int(11) NOT NULL,
  `idcotizacion` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `idhistorial` int(11) NOT NULL,
  `idpaciente` int(11) NOT NULL,
  `consulta` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pa` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fc` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `peso` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `talla` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `imc` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `gc` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `diabetes` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hta` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cardios` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cancer` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `quefamilia` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estadocivil` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ocupacion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fuma` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `bebe` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `actividadfisica` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `sueno` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `alimentos` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `diuresis` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `catarsis` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `patologico` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `alergias` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tratamientos` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estadopsicologico` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fum` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `dias` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `frecuencia` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `caracteristica` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `gestas` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `partos` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ab` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cesareas` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `lactancia` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nhijos` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `menopausia` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pap` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `anticonceptivos` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `examenmamario` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ptsimamaria` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cremas` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cutis` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `donde` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `queutilizaron` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `sol` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `solar` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `otros` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `alopecia` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `depilacion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `piel` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `biotipo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `arrugas` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `unas` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`idhistorial`, `idpaciente`, `consulta`, `pa`, `fc`, `peso`, `talla`, `imc`, `gc`, `diabetes`, `hta`, `cardios`, `cancer`, `quefamilia`, `estadocivil`, `ocupacion`, `fuma`, `bebe`, `actividadfisica`, `sueno`, `alimentos`, `diuresis`, `catarsis`, `patologico`, `alergias`, `tratamientos`, `estadopsicologico`, `fum`, `dias`, `frecuencia`, `caracteristica`, `gestas`, `partos`, `ab`, `cesareas`, `lactancia`, `nhijos`, `menopausia`, `pap`, `anticonceptivos`, `examenmamario`, `ptsimamaria`, `cremas`, `cutis`, `donde`, `queutilizaron`, `sol`, `solar`, `otros`, `alopecia`, `depilacion`, `piel`, `biotipo`, `arrugas`, `referencia`, `unas`, `fecha`) VALUES
(1, 1, 'DOLOR DE ESPALDA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ninguno', '', '', '', '', '', '0', '0', '0', '0', 'no', '', 'no', '', '', 'no', 'no', '', 'no', '', '', '', 'no', '', 'no', '', '', '', '', '', '', '2019-04-24 17:00:16'),
(2, 2, 'DOLOR DE ESPALDA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ninguno', '', '', '', '', '', '0', '0', '0', '0', 'no', '', 'no', '', '', 'no', 'no', '', 'no', '', '', '', 'no', '', 'no', '', '', '', '', '', '', '2019-04-24 17:11:33'),
(3, 3, 'DOLOR DE ESPALDA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ninguno', '', '', '', '', '', '0', '0', '0', '0', 'no', '', 'no', '', '', 'no', 'no', '', 'no', '', '', '', 'no', '', 'no', '', '', '', '', '', '', '2019-04-24 17:50:28'),
(4, 7, 'DOLOR DE ESPALDA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ninguno', '', '', '', '', '', '0', '0', '0', '0', 'no', '', 'no', '', '', 'no', 'no', '', 'no', '', '', '', 'no', '', 'no', '', '', '', '', '', '', '2019-04-29 17:10:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `idusuario` int(11) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'ENTRADA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `fecha`, `idusuario`, `tipo`) VALUES
(1, '2019-04-29 19:25:23', 1, 'ENTRADA'),
(3, '2019-04-29 19:26:40', 1, 'SALIDA'),
(4, '2019-04-29 19:26:57', 1, 'ENTRADA'),
(5, '2019-04-30 16:01:14', 1, 'ENTRADA'),
(6, '2019-04-30 19:18:01', 1, 'SALIDA'),
(7, '2019-04-30 19:18:05', 1, 'ENTRADA'),
(9, '2019-05-02 15:51:41', 1, 'ENTRADA'),
(10, '2019-05-02 16:40:21', 1, 'ENTRADA'),
(12, '2019-05-06 15:57:18', 1, 'ENTRADA'),
(13, '2020-01-28 15:32:15', 1, 'ENTRADA'),
(14, '2020-01-28 15:34:30', 1, 'ENTRADA'),
(15, '2020-01-29 10:02:44', 1, 'ENTRADA'),
(16, '2020-01-29 14:35:08', 1, 'ENTRADA'),
(17, '2020-01-30 08:33:48', 1, 'ENTRADA'),
(18, '2020-01-31 08:43:07', 1, 'ENTRADA'),
(19, '2020-01-31 14:32:12', 1, 'ENTRADA'),
(20, '2020-01-31 14:38:48', 1, 'ENTRADA'),
(21, '2020-01-31 14:43:34', 1, 'SALIDA'),
(22, '2020-01-31 14:43:37', 1, 'ENTRADA'),
(23, '2020-01-31 14:45:28', 1, 'SALIDA'),
(24, '2020-01-31 14:45:32', 5, 'ENTRADA'),
(25, '2020-01-31 14:50:01', 1, 'ENTRADA'),
(26, '2020-01-31 14:50:23', 1, 'ENTRADA'),
(27, '2020-01-31 14:51:07', 1, 'ENTRADA'),
(28, '2020-01-31 14:51:14', 1, 'SALIDA'),
(29, '2020-01-31 14:51:17', 5, 'ENTRADA'),
(30, '2020-01-31 14:52:36', 5, 'SALIDA'),
(31, '2020-01-31 14:52:42', 1, 'ENTRADA'),
(32, '2020-01-31 14:53:22', 1, 'SALIDA'),
(33, '2020-01-31 14:53:25', 5, 'ENTRADA'),
(34, '2020-01-31 15:19:13', 5, 'SALIDA'),
(35, '2020-01-31 15:19:21', 1, 'ENTRADA'),
(36, '2020-01-31 15:20:04', 1, 'SALIDA'),
(37, '2020-01-31 15:20:11', 5, 'ENTRADA'),
(38, '2020-01-31 15:53:25', 5, 'SALIDA'),
(39, '2020-02-08 17:00:05', 1, 'ENTRADA'),
(40, '2020-02-09 14:42:24', 1, 'ENTRADA'),
(41, '2020-02-09 14:42:57', 1, 'SALIDA'),
(42, '2020-02-09 14:43:20', 1, 'ENTRADA'),
(43, '2020-02-09 14:45:39', 1, 'SALIDA'),
(44, '2020-02-09 14:45:58', 6, 'ENTRADA'),
(45, '2020-02-10 10:56:37', 6, 'ENTRADA'),
(46, '2020-02-10 11:41:47', 6, 'ENTRADA'),
(47, '2020-02-11 09:26:12', 6, 'ENTRADA'),
(48, '2020-02-11 12:37:28', 6, 'ENTRADA'),
(49, '2020-02-11 19:25:18', 6, 'ENTRADA'),
(50, '2020-02-12 09:55:04', 6, 'ENTRADA'),
(51, '2020-02-12 10:03:10', 6, 'SALIDA'),
(52, '2020-02-12 10:06:21', 6, 'ENTRADA'),
(53, '2020-02-12 20:13:50', 6, 'ENTRADA'),
(54, '2020-02-12 20:20:21', 6, 'ENTRADA'),
(55, '2020-02-12 20:40:16', 6, 'ENTRADA'),
(56, '2020-02-12 20:40:57', 6, 'ENTRADA'),
(57, '2020-02-13 08:14:19', 6, 'ENTRADA'),
(58, '2020-02-13 10:14:08', 6, 'SALIDA'),
(59, '2020-02-13 15:25:08', 6, 'ENTRADA'),
(60, '2020-02-13 15:30:17', 6, 'SALIDA'),
(61, '2020-02-17 21:57:17', 6, 'ENTRADA'),
(62, '2020-02-19 13:33:02', 6, 'ENTRADA'),
(63, '2020-02-19 17:12:54', 6, 'ENTRADA'),
(64, '2020-02-20 16:28:06', 6, 'ENTRADA'),
(65, '2020-02-21 22:18:43', 6, 'ENTRADA'),
(66, '2020-02-22 18:10:02', 6, 'ENTRADA'),
(67, '2020-02-23 10:11:51', 6, 'ENTRADA'),
(68, '2020-02-23 10:42:33', 6, 'ENTRADA'),
(69, '2020-02-23 19:24:21', 6, 'ENTRADA'),
(70, '2020-02-24 08:38:51', 6, 'ENTRADA'),
(71, '2020-02-24 11:17:35', 6, 'ENTRADA'),
(72, '2020-02-24 11:42:19', 6, 'SALIDA'),
(73, '2020-02-24 11:43:00', 1, 'ENTRADA'),
(74, '2020-02-24 11:43:19', 1, 'SALIDA'),
(75, '2020-02-24 11:43:22', 5, 'ENTRADA'),
(76, '2020-02-24 11:43:42', 5, 'SALIDA'),
(77, '2020-02-24 11:43:47', 6, 'ENTRADA'),
(78, '2020-02-24 15:00:08', 6, 'ENTRADA'),
(79, '2020-02-26 19:11:39', 6, 'ENTRADA'),
(80, '2020-02-27 09:52:41', 6, 'ENTRADA'),
(81, '2020-02-27 19:14:43', 6, 'ENTRADA'),
(82, '2020-02-28 08:44:46', 6, 'ENTRADA'),
(83, '2020-02-28 20:39:05', 6, 'ENTRADA'),
(84, '2020-03-02 09:32:50', 1, 'ENTRADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `idlaboratorio` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idtipolaboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`idlaboratorio`, `nombre`, `idtipolaboratorio`) VALUES
(1, 'HERMOGRAMA COMPLETO', 1),
(2, 'TIEMPO COAGULACIONJ Y SANGRE', 1),
(3, 'RECUENTO DE PLAQUETAS', 1),
(4, 'GLUSOCA', 2),
(5, 'UREA', 2),
(6, 'CREATINA', 2),
(7, 'ACIDO URICO', 2),
(8, 'TRANSAMINASAS(GOT-GPT)', 2),
(9, 'LDH', 2),
(10, 'BILIRRUBINAS(D.I.T.)', 2),
(11, 'FOSFATASA ALCALINA', 2),
(12, 'FOFATASA ACIDA', 2),
(13, 'COLESTEROL TOTAL', 2),
(14, 'TRIGLICERIDOS', 2),
(15, 'T3 TOTAL', 3),
(16, 'T4 TOTAL', 3),
(17, 'TSH', 3),
(18, 'TESTOTERONNA', 3),
(19, 'PCR (PROTEINA REACTIVA)', 4),
(20, 'HIV-AIDS', 4),
(21, 'CLAMIDIA', 4),
(22, 'COPROPARASITOLOGICO(1 MUESTRA)', 5),
(23, 'COPROPARASITOLOGICO SERIADO(3 MUESTRAS)', 5),
(24, 'LEUCOCITOS y PIOCITOS', 5),
(25, 'EXAMEN GENERAL DE ORINA', 6),
(26, 'CULTIVO Y ANTIBIOGRAMA', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

CREATE TABLE `lote` (
  `idlote` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `cantidad` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `fechavencimiento` date NOT NULL,
  `idusuario` int(11) NOT NULL,
  `nombreusuario` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

CREATE TABLE `medicamento` (
  `idmedicamento` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `idmedida` int(11) NOT NULL,
  `papada` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `brazosd1` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `espaldaalta` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `espaldabaja` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `cintura` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `ombligo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `cm2` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `cm4` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `cadera` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `muslo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `idcotizacion` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `montos`
--

CREATE TABLE `montos` (
  `idmonto` int(11) NOT NULL,
  `monto` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `idcotizacion` int(11) NOT NULL,
  `idtratamiento` int(11) DEFAULT NULL,
  `obs` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cub` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `idusuario` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `idpaciente` int(11) NOT NULL,
  `ci` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `zona` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `exp` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `referencia` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`idpaciente`, `ci`, `nombres`, `apellidos`, `zona`, `direccion`, `fechanac`, `telefono`, `celular`, `idusuario`, `exp`, `referencia`, `fecha`) VALUES
(1, '1919', 'ROMY LIANET', 'CONDORI ZURITA', 'SUD', 'CALLE BOLIVAR', '2000-04-24', '5261245', '69603027', 1, '', '', '2020-01-28 20:17:37'),
(2, '696969', 'PEPE', 'FERNANDEZ', 'NORTE', '', '2000-04-24', '5261245', '5261245', 1, '', 'Facebook', '2020-01-28 20:17:37'),
(3, '5252', 'WANDA', 'PANDA', 'SUD', 'CALLE BOLIVAR', '2000-04-24', '5845465', '5261245', 1, '', 'Periódico', '2020-01-28 20:17:37'),
(4, '123456789', '', 'CINE GRAN REX', '', '', '2019-04-25', '', '', 1, '', '', '2020-01-28 20:17:37'),
(5, '7336199', 'ADIMER PAUL', 'CHAMBI', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-01-28 20:17:37'),
(7, '1115447', 'MIGUEL', 'REYNOLDS', 'CENTRICA', 'CALLE BOLIVAR', '2000-04-29', '561245', '6124545', 1, '', 'Periódico', '2020-01-28 20:17:37'),
(14, '0', '', 'SN', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-01-30 12:37:51'),
(15, '759759759', NULL, 'Marco', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-10 16:03:14'),
(16, '7296242', NULL, '7binary', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-10 16:33:20'),
(17, '454545', NULL, 'Agapito & Demas', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-24 15:47:50'),
(18, '9685474', NULL, 'Marioso', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-24 19:00:37'),
(19, '796242', NULL, 'ohhkjhj', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-27 23:35:42'),
(20, '12345678', NULL, 'cliente', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-28 00:43:42'),
(21, '5445454454', NULL, 'oijoijiojo', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-28 02:40:00'),
(22, '7458858', NULL, 'Alguien', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-28 02:50:10'),
(23, '1234567', NULL, 'Petrona', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-28 04:54:13'),
(24, '987654', NULL, 'Junkor S.R.L.', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-28 05:07:33'),
(25, '5555555', NULL, 'Lucas', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-28 13:24:13'),
(26, '465456456', NULL, 'juan pinto', NULL, NULL, NULL, NULL, '', NULL, '', '', '2020-02-29 00:59:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `nombre` varchar(55) COLLATE utf8_spanish2_ci NOT NULL,
  `nombrecomercial` varchar(55) COLLATE utf8_spanish2_ci NOT NULL,
  `formafarmaceutica` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` varchar(55) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'ACTIVO',
  `farmacologica` varchar(512) COLLATE utf8_spanish2_ci NOT NULL,
  `fechavencimiento` date NOT NULL,
  `distribuidora` varchar(512) COLLATE utf8_spanish2_ci NOT NULL,
  `idusuario` int(11) NOT NULL,
  `nombreusuario` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombre`, `nombrecomercial`, `formafarmaceutica`, `precio`, `cantidad`, `estado`, `farmacologica`, `fechavencimiento`, `distribuidora`, `idusuario`, `nombreusuario`) VALUES
(3, 'MENTISAN', '', '', 20, 50, 'ACTIVO', 'Mentolado, para resfrio y demas', '2020-02-28', '', 0, ''),
(5, 'PROTECTOR SOLAR COREANO', '', '', 160, 26, 'ACTIVO', 'aaaaaaa', '0000-00-00', '', 0, ''),
(8, 'BATIDORA', '', '', 20, 61, 'ACTIVO', 'bbbbbbb', '0000-00-00', '', 0, ''),
(9, 'SUERO FISIOLOGICO', '', '', 20, 112, 'ACTIVO', 'cccccccc', '0000-00-00', '', 0, ''),
(10, 'BIOELECTRO', '', '', 2.5, 16, 'ACTIVO', 'Tableta contra la migraña', '2020-06-15', '', 0, ''),
(11, 'SANATUSIN', '', '', 4.5, 25, 'ACTIVO', 'Menta', '2020-04-01', '', 0, ''),
(12, 'TAPSIN NOCHE', '', '', 5.5, 49, 'ACTIVO', 'asfsdfd', '2020-06-06', '', 0, ''),
(13, 'TAPSIN DíA', '', '', 5.5, 35, 'ACTIVO', '', '2020-12-31', '', 0, ''),
(14, 'ASPIRINA', '', '', 0.5, 4, 'ACTIVO', 'Aspirina. Ticlopidina. Clopidogrel', '2022-10-10', '', 0, ''),
(15, 'RESFRIANEX', '', '', 4.5, 50, 'ACTIVO', 'KLJKJKLJ', '2020-12-31', 'FARMACORP', 0, ''),
(16, 'CHAKIPLUS', '', '', 5.5, 24, 'ACTIVO', '15', '2020-12-15', 'Agasip', 0, ''),
(17, 'PARACETAMOL', '', '', 4.5, 95, 'ACTIVO', 'Fohlkj', '2022-12-31', 'Alcasal', 0, ''),
(18, 'NEUROCEREBRIN', '', '', 4.5, 43, 'ACTIVO', 'ckjh ha hdsakjh', '2020-12-31', 'Alcasal', 0, ''),
(19, 'PRODUCTO', 'producto xss', 'Farmalist', 2.5, 10, 'ACTIVO', 'hjkh', '2020-12-31', 'Farmalist', 0, ''),
(20, 'XXXX', 'yyyyy', 'zzzzz', 2.5, 22, 'ACTIVO', 'julimba', '2020-12-31', 'Agasip', 0, ''),
(21, '', 'Bacalao', 'Jarabe', 52.5, 7, 'ACTIVO', 'kasdfjkl', '2020-06-25', 'Junior', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reactivo`
--

CREATE TABLE `reactivo` (
  `idreactivo` int(11) NOT NULL,
  `nombre` varchar(55) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `presentacion` varchar(55) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `reactivo`
--

INSERT INTO `reactivo` (`idreactivo`, `nombre`, `cantidad`, `presentacion`) VALUES
(1, 'FOSFATIDILCOLINA 5% ', 500, '10ml'),
(2, 'L-Carnitina 20% ph7 ', 20, '20ML'),
(3, 'YOHIMBINA 0.5% PH 4-5 ', 20, '10ML'),
(5, 'Triac 0.035% pH 8-9 ', 20, '10ML'),
(7, 'green tea 5% pH6 ', 15, '10ML'),
(8, 'Cynara Scolimus pH6 ', 15, '10ML'),
(9, 'Blufomedilo 100mg pH6 ', 15, '10ML'),
(10, 'Lipasa ', 15, '10ML'),
(11, 'Aminofilina ', 15, '10ML'),
(12, 'ADN 2,5% ', 15, '10ML'),
(13, 'Acido Lactobionico 0.1 % pH 6  ', 15, '10ML'),
(14, 'Acido Mandélico 0.01%- pH 6-7  ', 15, '10ML'),
(15, 'Acido Retinoico 0.1%- pH 8,5-9,5  ', 10, '10ML'),
(16, 'Emblica 3% ', 10, '10ML'),
(17, 'Melatonina 3mcg ', 10, '10ml'),
(18, 'Glicólico 0,01% ', 10, '10ML'),
(19, 'Ac. Azelaico  2% ', 15, '10ML'),
(20, 'Acido Kójico 0.1% pH 5-5.6 ', 15, '10ML'),
(21, 'UFA 0,2% Ph6 ', 10, '10ML'),
(22, 'Idebenona ', 10, '10ML'),
(23, 'Ac. Fítico 0.1% pH 5-6 ', 15, '10ML'),
(24, 'Finasteride 3mg + Minoxidil 0.1 g+ Buflomedilo 1% + Pro', 10, '10ML'),
(25, 'Minoxidil 0.2g + Biotina 0.005g+Pantenol 1g pH 7.5-8 ', 10, '10ML'),
(26, 'coenzima q10 0,02% ', 10, '10ML'),
(27, 'Ac. Hialuronico 0.5% pH7 ', 15, '10ML'),
(28, 'Colágeno Hidrolizado 5% pH 6-7 ', 15, '10ML'),
(29, 'Elastina Hidrolizado 5% pH 6-7 ', 15, '10ML'),
(30, 'Selenio 0.002% pH 6.5-7 ', 10, '10ML'),
(31, 'Equisetum Arvense Ext. 5% pH6 ', 15, '10ML'),
(32, 'Vitamina C 20% pH 6-6.5 ', 15, '10ML'),
(33, 'Vitamina K 0.01% ', 10, '10ML'),
(34, 'Ampelopsina 1% ', 15, '10ML'),
(35, 'Silicio 3% ', 10, '10ML'),
(36, 'Cobre 0.025%+Magnesio 0.7%+Zinc 0.025% pH 5-6 ', 10, '10ML'),
(37, 'DMAE 400mg pH 6-7 ', 10, '10ML'),
(38, 'Hidroxiprolina 0.5% ', 15, '10ML'),
(39, 'Centella Asiática 5% pH 6-7 ', 20, '10ML'),
(40, 'Eritromicina 1% pH 6-7  ', 15, '10ML'),
(41, 'Clindamicina 0.1% ', 10, '10ML'),
(42, 'Isotetrinoína 0.1%  ', 20, '10ML'),
(43, 'Triamcinolona 0.12%- pH 7  ', 15, '10ML'),
(44, '5 FLUORACILO+ TRIAMCINOLONA ', 450, '5ML'),
(45, 'Procaina neutra ', 10, '5ML'),
(46, 'procaina acida ', 10, '10ML'),
(47, 'Cloruro de calcio 10% ', 20, '10ML'),
(48, 'Lidocaína 2% neutra c/epinefrina pH7 ', 10, '20ML'),
(49, 'Bicarbonato de sodio pH9 ', 10, '10ml'),
(50, 'Vitamina C cristales de ultrapureza ', 2, '50GR'),
(51, 'Crema Anestésica Antihematomas ', 6, '50ML'),
(52, 'Shampoo c/Ac. Salicílico y Urea ', 2, '1000ML'),
(53, 'Quick Fade ultrablanqueadora ', 15, '50ML'),
(54, 'Lactobionic ', 8, '50ML'),
(55, 'Crema hidroxiprolina, Dmae, Aceite de Argán ', 15, '50ML'),
(56, 'Gel Transductor', 9940, 'envase'),
(57, 'tubos citrato de sodio', 500, 'pza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `idreceta` int(11) NOT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `idcotizacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soap`
--

CREATE TABLE `soap` (
  `idsoap` int(11) NOT NULL,
  `idcotizacion` int(255) NOT NULL,
  `subjetivo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `objetivo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `analisis` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `plan` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `idusuario` int(11) NOT NULL,
  `monto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipolaboratorio`
--

CREATE TABLE `tipolaboratorio` (
  `idtipolaboratorio` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipolaboratorio`
--

INSERT INTO `tipolaboratorio` (`idtipolaboratorio`, `nombre`) VALUES
(1, 'HEMATOLOGIA'),
(2, 'QUIMICA SANGUINEA'),
(3, 'HORMONAS'),
(4, 'INMUNOLOGIA'),
(5, 'COPROLOGIA'),
(6, 'URIANALISIS'),
(7, 'BACTERIOLOGIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotratamiento`
--

CREATE TABLE `tipotratamiento` (
  `idtipotratamiento` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(1500) COLLATE utf8_spanish2_ci NOT NULL,
  `costo` varchar(1500) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipotratamiento`
--

INSERT INTO `tipotratamiento` (`idtipotratamiento`, `nombre`, `descripcion`, `costo`) VALUES
(3, 'LUZ PULSADA INTENSA', 'El láser frío permite la regeneración natural de la piel mediante fotoestimulación no invasiva, el procedimiento tarda de 15 minutos a una hora dependiendo de la extensión de la zona. Se realiza mediante disparos de luz con la respectiva protección ocular para el paciente y el operador. Se requiere un promedio de 5 a 8 sesiones con intervalos de 2 a 3 semanas. No requiere anestesia al ser completamente tolerable y el paciente vuelve a sus actividades de forma inmediata. El cuidado mínimo es protección solar cada 3 horas.', 'Los costos pueden ir desde 100 Bs a 700Bs la sesión todo depende de la cantidad de disparos de láser a realizar, a menor extensión el costo es menor a mayor extensión el costo es mayor.'),
(4, 'DERMOABRASION PUNTAS DE DIAMANTE', 'Procedimiento de limpieza y absorción de células muertas que permite tener un cutis más limpio. Utilizado previo al tratamiento de mesoterapia y plasma rico en plaquetas superficial. También previo al uso de máscaras faciales', '100 Bs. Para el tratamiento previo a mesoterapia o plasma rico en plaquetas es completamente gratis.'),
(5, 'ELECTROCAUTERIO PARA ELIMINAR LUNARES', 'Procedimiento previo anestesia local para extraer de raíz verrugas y lunares. Sin anestesia los pólipos. Se requiere de 1 a 2 sesiones máximo.', 'De 50 a 200 Bs. Dependiendo del tamaño de las lesiones'),
(6, 'ULTRACAVITACION', 'Procedimiento que mediante ultrasonido específico, permite la implosión de las células grasa. Es decir éstas se disuelven para eliminar su contenido mediante los ganglios linfáticos. Además permite la lipomodelación. Se requiere de 2 a más sesiosen según la cantidad de grasa del paciente con intervalos de 1 semana.', 'de 280 Bs a 380 Bs'),
(7, 'RADIOFRECUENCIA TRIPOLAR', 'Calor que permite la estimulación de las fibras de colágeno y elastina, provocando un efecto tensor o lifting en la zona tratada. Coadyuvante en el tratamiento de reducción y post plasma rico en plaquetas.', 'de 50bs a 200Bs la sesión dependiendo de la zona a tratar'),
(8, 'LIPOLASER DE DIODO', 'Método que utiliza la energía del láser para reducir el tamaño de la célula grasa. Estimula el metabolismo celular, logrando perder entre 2 a 4 cm de grasa en media hora de tratamiento. Se requiere entre 2 a 12 sesiones dependiendo el tamaño de la grasa a reducir. No requiere de cuidados y la persona puede realizar sus actividades de forma inmediata y normal.', '200 a 280 Bs la sesión.'),
(9, 'ELECTROESTIMULACIÓN', 'Método que mediante la energía de corrientes rusas permite la estimulación muscular. Generando alivio de dolores, descontracción muscular,  mayor firmeza en zonas trabajadas para reducción de grasa y tonificación. No requiere cuidados y uno puede realizarse éste método hasta diariamente.', 'de 100 a 250 Bs'),
(10, 'VACCUMTERAPIA', 'Movilización de la grasas lozalizada difícil de tratar mediante el sistema de vacío por ventosa. Cuadyuvante en el tratamiento con Ultracavitación.', 'de 100 a 200 Bs.'),
(11, 'MESOTERAPIA', 'Intradermoterapia mediante la aplicación de sustancias químicas directamente en la zona afectada. No dolorosa, puede realizarse semanalmente. Los cuidados mínimos son la protección solar cada 3 horas. Los resultados se ven desde la primera sesión. Se requiere un mínimo de 4 sesiones.', 'de 180 Bs a 380 Bs'),
(12, 'PLASMA RICO EN PLAQUETAS', 'Mediante la extracción de sangre venosa, se procede a la extracción de las plaquetas, células reparadoras y regeneradoras del cuerpo humano. Se aplica mediante inyecciones superficiales, subcutáneas o intrarticulares. No requiere nestesia ya que es muy tolerable. Los cuidados son mínimos y se puede realizar de acuerdo a la indicación médica.', 'Superficial de 290 a 350 Bs; medio de 400 a 750 Bs; profundo de 1050 a 2100 Bs; articular de 250 a 350 Bs; capilar de 290 a 350 Bs. Pestañas a 400Bs '),
(13, 'PLASMA RICO EN PLAQUETAS', 'Mediante la extracción de sangre venosa, se procede a la extracción de las plaquetas, células reparadoras y regeneradoras del cuerpo humano. Se aplica mediante inyecciones superficiales, subcutáneas o intrarticulares. No requiere nestesia ya que es muy tolerable. Los cuidados son mínimos y se puede realizar de acuerdo a la indicación médica.', 'Superficial de 290 a 350 Bs; medio de 400 a 750 Bs; profundo de 1050 a 2100 Bs; articular de 250 a 350 Bs; capilar de 290 a 350 Bs. Pestañas a 400Bs '),
(14, 'PEELING QUIMICO', 'Mediante la aplicación de sustancias químicas de forma directa en las zonas afectadas. Sin inyecciones se coloca las sustancias por un lapso de tiempo controlado, de acuerdo a la profudidad se indica la siguiente sesión y los cuidados son la no exposición al sol de forma directa.', 'Superficial de 180 a 250 Bs; Medio de 300 a 500 Bs; Profundo de 580 a 700 Bs.'),
(15, 'MASCARA EN CONSULTORIO', 'Aplicación de máscaras según necesidad o requerimiento de la persona, factibles de realizar semanalmente , no requiere mayores cuidados.', 'De acuerdo al tpo de máscara de 150 a 500 Bs.'),
(16, 'RELLENOS FACIALES CON ACIDO HIALURONICO', 'Mediante la aplicación de relleno de ácido hialurónico por inyecciones, procedmiento con una duración de 30 minutos a 1 hora. En algunas zonas previa anestesia local. Cuidados por 3 días de no ir al sauna, comer picantes y cuidarse del sol. Se realiza una sesión cada 6 meses.', ''),
(17, 'TOXINA BOTULINICA', 'Aplicación de microinyecciones en zonas específicas para relajar la musculatura y permitir la desaparición de arrugas y líneas. No requiere previa anestesia del lugar. Cuidados de evitar ciertas posturas por el lapso de 24 horas, sauna y sol. Puede realizarse una sesión cada 6 meses', ''),
(18, 'HILOS TENSORES', 'Aplicación de hilos mediante microinyecciones previa anestesia local, en zonas con flacidez, de cualquier parte del cuerpo. Los hilos son reabsorvibles en 6 meses y su efecto dura de 1 a 2 años dependiendo el cuidado. Se requires los PDO o polidioxanona entre 4 y 12 hilos. Los cog de 2 a 6 hilos', ''),
(19, 'HIDROLIPOCLASIA QUIMICA', 'Mediante la inyección de suero y sustancias liporeductoras de forma directa en la grasa, previa anestesia local. Se logra reducir de 6 a 11 cm en una sola sesión. Procedmiento no doloroso y posterior al mismo se puede realizar actividad física. De acuerdo al caso pueden realizarse 2 a 12 sesiones. Un promedio de 4', ''),
(20, 'METODO DE EXTRACCION LIPIDICA AMBULATORIA', 'Procedmiento minimamente invasivo previa anestesia local, para la extarcción de una pequeña cantidad de grasa subumbilical. La misma puede aplicarse en rostro como relleno definitivo, o extraerse en zonas con grasa no deseada. Así mismo se puede procesar la grasa para la extracción de células madre y utilizar en zonas para regeneración como el cuero cabelludo, ariculaciones y piel.', '5000 a 7000 bs'),
(21, 'MEGADOSIS INTRAVENOSA DE VITAMINA C', 'Mediante una vía venosa se administra 7500 a 15000mg de vitamina c en suero. El procedmiento dura de media hora a una hora. Sin molestias ni dolor. Para la regeneración integral del organismo. Aclara la piel, previene enfermedades como el resfrío, cáncer, alzheimer, osteoporosis y otras degenerativas. Aumenta la energía, mejora el sueño con un descanso reparador. Se puede utilizar entre 3 meses a 6.', ''),
(22, 'MEGADOSIS INTRAVENOSA DE VITAMINA C', '', ''),
(23, 'AUTO HEMO TERAPIA', 'Para elevar las defensas celulares y de tejidos, especialmente en casos de acné. La terapia debe realizarse cada 5 días por 5 veces.', '50 Bs.'),
(24, 'DERMAPEN', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `idtratamiento` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `caracteristica` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `sesiones` int(11) NOT NULL,
  `costo` int(11) NOT NULL,
  `idtipotratamiento` int(11) NOT NULL DEFAULT 1,
  `tiempo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `reposicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`idtratamiento`, `nombre`, `caracteristica`, `sesiones`, `costo`, `idtipotratamiento`, `tiempo`, `tipo`, `reposicion`) VALUES
(24, 'DEPILACION', 'PROLONGADA O PERMANENTE', 6, 100, 3, '15min', 'CORPORAL', 0),
(25, 'ACNE', 'LEVE A MODERADO', 5, 180, 3, '2 sem', 'FACIAL', 0),
(27, 'FTR', 'LEVE A MODERADO', 6, 180, 3, '15min', 'FACIAL', 0),
(28, 'PRP', 'PROFUNDO', 1, 1050, 13, '60 min', 'FACIAL', 0),
(29, 'MESOTERAPIA BAJA', 'MESOTERAPIA FINA', 6, 150, 11, '10 min', 'CORPORAL', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientoreactivo`
--

CREATE TABLE `tratamientoreactivo` (
  `idtratamiento` int(11) NOT NULL,
  `idreactivo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tratamientoreactivo`
--

INSERT INTO `tratamientoreactivo` (`idtratamiento`, `idreactivo`, `cantidad`) VALUES
(24, 56, 10),
(27, 44, 10),
(28, 57, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `email`, `password`, `tipo`, `nombre`, `estado`) VALUES
(1, 'adimer', '123456', 'ADMIN', 'ADIMER', 'ACTIVO'),
(5, 'jose', 'jose', 'VENDEDOR', 'JOSE', 'ACTIVO'),
(6, 'marcelo@gmail.com', '11111111', 'ADMIN', 'MARCELO', 'ACTIVO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consentimiento`
--
ALTER TABLE `consentimiento`
  ADD PRIMARY KEY (`idconsentimiento`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idconsulta`),
  ADD KEY `idcosto` (`idmonto`);

--
-- Indices de la tabla `corporal`
--
ALTER TABLE `corporal`
  ADD PRIMARY KEY (`idcorporal`),
  ADD KEY `idmonto` (`idmonto`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`idcotizacion`),
  ADD KEY `idpaciente` (`idhistorial`);

--
-- Indices de la tabla `cotizacionconsetimeinto`
--
ALTER TABLE `cotizacionconsetimeinto`
  ADD PRIMARY KEY (`idconsetimiento`,`idcotizacion`),
  ADD KEY `idcotizacion` (`idcotizacion`);

--
-- Indices de la tabla `cotizacionlaboratorio`
--
ALTER TABLE `cotizacionlaboratorio`
  ADD PRIMARY KEY (`idcotizacionlaboratorio`),
  ADD KEY `idcotizacion` (`idcotizacion`),
  ADD KEY `idlaboratorio` (`idlaboratorio`);

--
-- Indices de la tabla `cotizaciontratamiento`
--
ALTER TABLE `cotizaciontratamiento`
  ADD PRIMARY KEY (`idcotizacion`,`idtratamiento`),
  ADD KEY `idtratamiento` (`idtratamiento`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `idreceta` (`idreceta`),
  ADD KEY `idmedicamento` (`idmedicamento`);

--
-- Indices de la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD PRIMARY KEY (`idfactura`,`idproducto`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `deudas`
--
ALTER TABLE `deudas`
  ADD PRIMARY KEY (`iddeudas`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  ADD PRIMARY KEY (`iddosificacion`);

--
-- Indices de la tabla `egreso`
--
ALTER TABLE `egreso`
  ADD PRIMARY KEY (`idegreso`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idtratamiento` (`idtratamiento`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idpaciente` (`idpaciente`);

--
-- Indices de la tabla `facial`
--
ALTER TABLE `facial`
  ADD PRIMARY KEY (`idfacial`),
  ADD KEY `idmonto` (`idmonto`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`),
  ADD KEY `idcliente` (`idpaciente`),
  ADD KEY `iddosificacion` (`iddosificacion`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `formapresentacion`
--
ALTER TABLE `formapresentacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`idfoto`),
  ADD KEY `idcotizacion` (`idcotizacion`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`idhistorial`),
  ADD UNIQUE KEY `idhistorial` (`idhistorial`),
  ADD UNIQUE KEY `idhistorial_2` (`idhistorial`),
  ADD KEY `idpaciente` (`idpaciente`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`idlaboratorio`),
  ADD KEY `tipolaboratorio` (`idtipolaboratorio`);

--
-- Indices de la tabla `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`idlote`);

--
-- Indices de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`idmedicamento`);

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`idmedida`),
  ADD KEY `idpaciente` (`idcotizacion`);

--
-- Indices de la tabla `montos`
--
ALTER TABLE `montos`
  ADD PRIMARY KEY (`idmonto`),
  ADD KEY `idcotizacion` (`idcotizacion`),
  ADD KEY `idtratamiento` (`idtratamiento`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idpaciente`),
  ADD UNIQUE KEY `ci` (`ci`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `reactivo`
--
ALTER TABLE `reactivo`
  ADD PRIMARY KEY (`idreactivo`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`idreceta`),
  ADD KEY `idcotizacion` (`idcotizacion`);

--
-- Indices de la tabla `soap`
--
ALTER TABLE `soap`
  ADD PRIMARY KEY (`idsoap`),
  ADD KEY `idcotizacion` (`idcotizacion`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `tipolaboratorio`
--
ALTER TABLE `tipolaboratorio`
  ADD PRIMARY KEY (`idtipolaboratorio`);

--
-- Indices de la tabla `tipotratamiento`
--
ALTER TABLE `tipotratamiento`
  ADD PRIMARY KEY (`idtipotratamiento`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`idtratamiento`),
  ADD KEY `idtipotratamiento` (`idtipotratamiento`);

--
-- Indices de la tabla `tratamientoreactivo`
--
ALTER TABLE `tratamientoreactivo`
  ADD PRIMARY KEY (`idtratamiento`,`idreactivo`),
  ADD KEY `idreactivo` (`idreactivo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consentimiento`
--
ALTER TABLE `consentimiento`
  MODIFY `idconsentimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idconsulta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `corporal`
--
ALTER TABLE `corporal`
  MODIFY `idcorporal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `idcotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `cotizacionlaboratorio`
--
ALTER TABLE `cotizacionlaboratorio`
  MODIFY `idcotizacionlaboratorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deudas`
--
ALTER TABLE `deudas`
  MODIFY `iddeudas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  MODIFY `iddosificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `egreso`
--
ALTER TABLE `egreso`
  MODIFY `idegreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facial`
--
ALTER TABLE `facial`
  MODIFY `idfacial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `formapresentacion`
--
ALTER TABLE `formapresentacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `foto`
--
ALTER TABLE `foto`
  MODIFY `idfoto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `idhistorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `idlaboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `lote`
--
ALTER TABLE `lote`
  MODIFY `idlote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `idmedicamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medida`
--
ALTER TABLE `medida`
  MODIFY `idmedida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `montos`
--
ALTER TABLE `montos`
  MODIFY `idmonto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idpaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `reactivo`
--
ALTER TABLE `reactivo`
  MODIFY `idreactivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `idreceta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `soap`
--
ALTER TABLE `soap`
  MODIFY `idsoap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipolaboratorio`
--
ALTER TABLE `tipolaboratorio`
  MODIFY `idtipolaboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipotratamiento`
--
ALTER TABLE `tipotratamiento`
  MODIFY `idtipotratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `idtratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`idmonto`) REFERENCES `montos` (`idmonto`);

--
-- Filtros para la tabla `corporal`
--
ALTER TABLE `corporal`
  ADD CONSTRAINT `corporal_ibfk_1` FOREIGN KEY (`idmonto`) REFERENCES `montos` (`idmonto`);

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`idhistorial`) REFERENCES `historial` (`idhistorial`);

--
-- Filtros para la tabla `cotizacionconsetimeinto`
--
ALTER TABLE `cotizacionconsetimeinto`
  ADD CONSTRAINT `cotizacionconsetimeinto_ibfk_1` FOREIGN KEY (`idconsetimiento`) REFERENCES `consentimiento` (`idconsentimiento`),
  ADD CONSTRAINT `cotizacionconsetimeinto_ibfk_2` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`);

--
-- Filtros para la tabla `cotizacionlaboratorio`
--
ALTER TABLE `cotizacionlaboratorio`
  ADD CONSTRAINT `cotizacionlaboratorio_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`),
  ADD CONSTRAINT `cotizacionlaboratorio_ibfk_2` FOREIGN KEY (`idlaboratorio`) REFERENCES `laboratorio` (`idlaboratorio`);

--
-- Filtros para la tabla `cotizaciontratamiento`
--
ALTER TABLE `cotizaciontratamiento`
  ADD CONSTRAINT `cotizaciontratamiento_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`),
  ADD CONSTRAINT `cotizaciontratamiento_ibfk_2` FOREIGN KEY (`idtratamiento`) REFERENCES `tratamiento` (`idtratamiento`);

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`idreceta`) REFERENCES `receta` (`idreceta`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`idmedicamento`) REFERENCES `medicamento` (`idmedicamento`);

--
-- Filtros para la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD CONSTRAINT `detallefactura_ibfk_1` FOREIGN KEY (`idfactura`) REFERENCES `factura` (`idfactura`),
  ADD CONSTRAINT `detallefactura_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `deudas`
--
ALTER TABLE `deudas`
  ADD CONSTRAINT `deudas_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `egreso`
--
ALTER TABLE `egreso`
  ADD CONSTRAINT `egreso_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `egreso_ibfk_2` FOREIGN KEY (`idtratamiento`) REFERENCES `tratamiento` (`idtratamiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`idpaciente`);

--
-- Filtros para la tabla `facial`
--
ALTER TABLE `facial`
  ADD CONSTRAINT `facial_ibfk_1` FOREIGN KEY (`idmonto`) REFERENCES `montos` (`idmonto`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`idpaciente`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`);

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `ingreso_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD CONSTRAINT `laboratorio_ibfk_1` FOREIGN KEY (`idtipolaboratorio`) REFERENCES `tipolaboratorio` (`idtipolaboratorio`);

--
-- Filtros para la tabla `medida`
--
ALTER TABLE `medida`
  ADD CONSTRAINT `medida_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`);

--
-- Filtros para la tabla `montos`
--
ALTER TABLE `montos`
  ADD CONSTRAINT `montos_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`),
  ADD CONSTRAINT `montos_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `receta`
--
ALTER TABLE `receta`
  ADD CONSTRAINT `receta_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`);

--
-- Filtros para la tabla `soap`
--
ALTER TABLE `soap`
  ADD CONSTRAINT `soap_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`),
  ADD CONSTRAINT `soap_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`idtipotratamiento`) REFERENCES `tipotratamiento` (`idtipotratamiento`);

--
-- Filtros para la tabla `tratamientoreactivo`
--
ALTER TABLE `tratamientoreactivo`
  ADD CONSTRAINT `tratamientoreactivo_ibfk_1` FOREIGN KEY (`idtratamiento`) REFERENCES `tratamiento` (`idtratamiento`),
  ADD CONSTRAINT `tratamientoreactivo_ibfk_2` FOREIGN KEY (`idreactivo`) REFERENCES `reactivo` (`idreactivo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
