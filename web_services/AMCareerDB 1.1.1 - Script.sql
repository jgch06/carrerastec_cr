CREATE DATABASE  IF NOT EXISTS `heroku_f6e6709b7355dc5` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `heroku_f6e6709b7355dc5`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: us-cdbr-iron-east-01.cleardb.net    Database: heroku_f6e6709b7355dc5
-- ------------------------------------------------------
-- Server version	5.5.56-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `careers` (
  `idCareer` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `school` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`idCareer`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Mantenimiento Industrial','Electromecánica','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/ManteBienvenida.png'),(2,'Ingeniería en Computación','Computación','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Computacion/PrincipalCompu.png'),(3,'Mecatrónica','Electromecánica','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/PrincipalMeca.png');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sections` (
  `idSection` int(11) NOT NULL AUTO_INCREMENT,
  `career_idCareer` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `titleColor` varchar(200) DEFAULT '#FFBF00',
  PRIMARY KEY (`idSection`),
  KEY `Carrera_idCarrera` (`career_idCareer`),
  CONSTRAINT `fk_career` FOREIGN KEY (`career_idCareer`) REFERENCES `careers` (`idCareer`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,'Bienvenida','La Escuela de Ingeniería Electromecánica nació a mediados de la década de 1970, como respuesta al creciente desarrollo del sector industrial en el país y la consecuente alta demanda de profesionales. En un inicio, la mayoría de egresados eran contratados por el sector público.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/ManteBienvenida.png','#D6ED03'),(2,1,'Actividades que realiza un Ingeniero en Mantenimiento Industrial ','La Ingeniería en Mantenimiento Industrial se apoya en tres disciplinas académicas clásicas: Ingeniería Mecánica, Ingeniería Eléctrica y Administración de Empresas, siendo el común denominador de todas ellas la necesidad cotidiana a la que se enfrenta el ingeniero de planta al programar el mantenimiento de los equipos industriales. Por lo que las actividades que realiza se dividen en las 3 áreas mencionadas (ver Más Información).','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/ManteActividades.png','#00DB06'),(3,1,'Descripción de la carrera ','La Ingeniería en Mantenimiento Industrial fue una de las primeras carreras fundadas en el TEC. Es una disciplina que integra la ingeniería mecánica, la ingeniería eléctrica y la administración de empresas, siendo el común denominador en todas ellas la necesidad cotidiana a la que se enfrente el ingeniero de planta de programar el mantenimiento de los equipos industriales, administrar los recursos humanos y físicos, y realizar el diseño e instalación de los sistemas de producción o el diseño y fabricación de partes y repuestos para la maquinaria..','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/ManteDescripcion.png','#FFFFFF'),(4,1,'Perfil del Ingeniero en mantenimiento industrial','El ingeniero en mantenimiento industrial es un profesional con un conocimiento muy sólido de la ingeniería electromecánica y de la administración de los recursos humanos y tecnológicos. Domina herramientas computacionales para la solución de problemas técnicos electromecánicos, así como la solución de problemas administrativos.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/MantePerfil.png','#1AA1FD'),(5,1,'Áreas de aprendizaje y cursos por área','La carrera abarca distintas áreas de aprendizaje, entre las cuáles están:\n	- Ciencias Básicas.\n	- Eléctrica.\n	- Administración del mantenimiento.\n	- Mecánica.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/ManteAreas.png','#029DA6'),(6,2,'Bienvenida','La Escuela de Ingeniería en Computación ha creado un sólido prestigio como centro de excelencia en la enseñanza y en la investigación aplicada. Ofrece opciones académicas en la Sede Central en Cartago y en la Sede Regional de San Carlos.También cuenta con el Centro de Investigaciones en Computación (CIC), una entidad cuyo propósito es contribuir a solucionar problemas en la región de Centroamérica y el Caribe, mediante la realización de actividades orientadas a la generación, adaptación, incorporación y difusión de conocimientos informáticos.\n','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Computacion/PrincipalCompu.png','#FFBF00'),(7,2,'Descripción de la carrera','Esta disciplina tiene como énfasis lograr un máximo rendimiento de la tecnología de información en las actividades comerciales, administrativas e industriales. Como parte del avance tecnológico que en estos momentos existe en el mundo, empresas costarricenses han mostrado grandes capacidades para desarrollar software y sistemas de alta calidad; por lo que existe un potencial de fortalecer al sector empresarial exportador de software.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Computacion/PrincipalCompu.png','#FFFFFF'),(8,2,'Perfil del Ingeniero en Computación','Desde los primeros años y hasta la actualidad, los egresados de la carrera de Ingeniería en Computación del TEC suelen recibir un alto reconocimiento por parte de sus empleadores. El estudiante debe ser una persona que quiera desarrollar software y ser capaz de trabajar en equipo y bajo presión, con habilidades de diseño y abstracción, liderazgo y disciplina.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Computacion/PrincipalCompu.png','#1AA1FD'),(9,2,'Facilidades','El TEC cuenta con diversas herramientas y recursos de software, así como una biblioteca centralizada, la cual maneja la colección de libros y revistas sobre computación y otras materias. Posee más de 3.800 libros sobre computación y otras materias relacionadas. La biblioteca está suscrita a más de 70 publicaciones técnicas en la materia. El TEC posee también un centro de información que ofrece servicios modernos de búsqueda bibliográfica. El departamento ha establecido acuerdos de intercambio de informes de investigación con varias universidades y otros centros de investigación.\n\nPara ver un listado de las demás facilidades disponibles, véase la subsección \"Más Información\".','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Computacion/PrincipalCompu.png','#FFBF00'),(10,2,'Áreas de aprendizaje y cursos por área','La carrera abarca distintas áreas de aprendizaje, entre las cuáles están:\n	- Matemática.\n	- Ciencias Sociales.\n        - Ciencias del Lenguage.\n        - Computación.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Computacion/PrincipalCompu.png','#029DA6'),(11,3,'Bienvenida','La Escuela de Ingeniería Electromecánica nació a mediados de la década de 1970, como respuesta al creciente desarrollo del sector industrial en el país y la consecuente alta demanda de profesionales. En un inicio, la mayoría de egresados eran contratados por el sector público.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/PrincipalMeca.png','#D6ED03'),(12,3,'Descripción de la carrera','Es una disciplina integradora de la electromecánica, la electrónica, la computación y los sistemas de control, cuyo conocimiento y aplicación combinan varios campos. Su objeto de estudio se focaliza en proporcionar sistemas integrales, inteligentes, flexibles y funcionales que permitan crear productos versátiles, económicos, fiables, simples y en armonía con el ser humano y el medio ambiente.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/PrincipalMeca.png','#FFFFFF'),(13,3,'Perfil del Ingeniero en Mecatrónica','Personas interesadas en el campo de la tecnología mecatrónica, con capacidad investigativa, creativa, organizativa, de liderazgo y de innovación, con habilidades para utilizar la matemática, la física y la química como medio de solución de problemas, e interés en aprender a planificar y programar el desarrollo de proyectos desde su concepción hasta su funcionamiento.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/PrincipalMeca.png','#1AA1FD'),(14,3,'Actividades que realiza un Ingeniero en Mecatrónica','- Aplica los conocimientos matemáticos, científicos y tecnológicos a la Ingeniería Mecatrónica.\r\n- Proyecta y conduce experimentos en el ámbito de la mecatrónica e interpreta los resultados.\r\n- Identifica, formula y resuelve problemas de la Ingeniería Mecatrónica.\r\n- Diseña e implementa productos y servicios relacionados con el control y la automatización de procesos industriales, cumpliendo criterios establecidos de calidad.\r\n- Desarrolla y evalúa técnicamente la operación y mantenimiento de sistemas mecatrónicos, cumpliendo normas y estándares locales e internacionales.\r\n- Evalúa la viabilidad económica de proyectos en el ámbito de la mecatrónica, así como su impacto en el contexto social y ambiental.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/PrincipalMeca.png','#00DB06'),(15,3,'Facilidades','Los estudiantes del plan de estudios de la carrera de Ingeniería Mecatrónica tendrán acceso a servicios que les servirán de herramienta para la formación integral teórico-práctica y de investigación.','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/PrincipalMeca.png','#FFBF00'),(16,3,'Áreas de aprendizaje y cursos por área','La carrera abarca distintas áreas de aprendizaje, entre las cuáles están:\n      - Ciencias básicas\n      - Computación\n      - Mecánica\n      - Electrónica','https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/PrincipalMeca.png','#029DA6');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_additional_text`
--

DROP TABLE IF EXISTS `sections_additional_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sections_additional_text` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `section_idSection` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `section_idSection` (`section_idSection`),
  CONSTRAINT `FK_SectionsAddText_Sections` FOREIGN KEY (`section_idSection`) REFERENCES `sections` (`idSection`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_additional_text`
--

LOCK TABLES `sections_additional_text` WRITE;
/*!40000 ALTER TABLE `sections_additional_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections_additional_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_images`
--

DROP TABLE IF EXISTS `sections_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sections_images` (
  `idSectionImage` int(11) NOT NULL AUTO_INCREMENT,
  `section_idSection` int(11) NOT NULL,
  `image_file_path` varchar(200) NOT NULL,
  `caption` varchar(200) NOT NULL,
  PRIMARY KEY (`idSectionImage`),
  KEY `section_sectionId` (`section_idSection`),
  CONSTRAINT `fk_sectionImage_section` FOREIGN KEY (`section_idSection`) REFERENCES `sections` (`idSection`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_images`
--

LOCK TABLES `sections_images` WRITE;
/*!40000 ALTER TABLE `sections_images` DISABLE KEYS */;
INSERT INTO `sections_images` VALUES (1,1,'https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/example.png','descripcion'),(2,1,'https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/videoplaceholder.png','descripcion'),(3,1,'https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/MantenimientoIndustrial/placeholder1.png','descripcion'),(4,12,'https://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/Mecatronica/RelacionCiencias.png','Relación de las dierentes ciencias.');
/*!40000 ALTER TABLE `sections_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_videos`
--

DROP TABLE IF EXISTS `sections_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sections_videos` (
  `idSectionVideo` int(11) NOT NULL AUTO_INCREMENT,
  `section_IdSection` int(11) NOT NULL,
  `video_file_path` varchar(200) NOT NULL,
  PRIMARY KEY (`idSectionVideo`),
  KEY `section_sectionId` (`section_IdSection`),
  CONSTRAINT `fk_sectionVideo_section` FOREIGN KEY (`section_IdSection`) REFERENCES `sections` (`idSection`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_videos`
--

LOCK TABLES `sections_videos` WRITE;
/*!40000 ALTER TABLE `sections_videos` DISABLE KEYS */;
INSERT INTO `sections_videos` VALUES (1,1,'ajJDR7Bui7w'),(2,6,'NrIb6NGTonw'),(3,11,'r5_5pF6mgj4');
/*!40000 ALTER TABLE `sections_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsections`
--

DROP TABLE IF EXISTS `subsections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subsections` (
  `idSubsection` int(11) NOT NULL AUTO_INCREMENT,
  `section_idSection` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idSubsection`),
  KEY `section_idSection` (`section_idSection`),
  CONSTRAINT `fk_section` FOREIGN KEY (`section_idSection`) REFERENCES `sections` (`idSection`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsections`
--

LOCK TABLES `subsections` WRITE;
/*!40000 ALTER TABLE `subsections` DISABLE KEYS */;
INSERT INTO `subsections` VALUES (1,1,'Misión','Promover, desarrollar y facilitar la docencia, la investigación y la extensión científica y tecnológica de excelencia, en el campo de la Ingeniería Electromecánica, para contribuir en el desarrollo productivo, integral y sostenible del pais y de la región.',NULL),(2,1,'Visión','La Escuela de Ingeniería Electromecánica será una organización líder en el ámbito naconal e internacional, en la preparación académica, desarrollo de investigación y vinculación con el sector productivo nacional y regional. Promoverá también la innovación, así como el intercambio de conocimiento entre empresas, cámaras, organizaciones y universidades afines.',NULL),(3,5,'Ciencias básicas','Matemáticas\\nQuímica y física\\nIdiomas\\nCiencias sociales\\nHabilidades blandas\\nEmprendedurismo',NULL),(4,5,'Eléctrica','Electricidad 1, 2 y 3\\nMáquinas Eléctricas\\nControl Eléctrico\\nInstalaciones Eléctricas',NULL),(5,5,'Administración del mantenimiento','Mantenimiento 1 y 2\\nBases de Datos\\nMantenimiento predictivo',NULL),(6,5,'Mecánica','Dibujo técnico e industrial\\nEstática y dinámica\\nTecnología y resistencia de materiales\\nProcesos de manufactura\\nElementos de Máquinas\\nTermodinámica y transferencia de calor\\nMecánica de fluidos\\nTurbomáquinas\\nSistemas de vapor',NULL),(7,5,'Cursos Electivos','Refrigeración\\nAire Acondicionado\\nDiseño Mecánico\\nAhorro Energético\\nAutomatismo\\nSistemas Eléctricos de Potencia\\nNeumática',NULL),(8,2,'Área Administrativa','1. Sistemas de control y/o modelos de gestión de mantenimiento.\\nDiseño de estrategias modernas de mantenimiento\\n3. Diseño e implementación de programas de ahorro de energía.',NULL),(9,2,'Área Eléctrica','1. Diseño de sistemas de automatización de procesos.\\n2. Diseño de instalaciones eléctricas comercial o industrial. Nota: debe contemplar el diseño de puesta a tierra y selección del transformador.\\n3. Cálculo, selección y coordinación de protecciones en sistemas de potencia.\\n4. Estudio y mejora de la calidad de la energía eléctrica en redes industriales.\\n5. Diseño de sistemas de Iluminación comercial o industrial. (Aprobación según evaluación del área)\\n6. Ahorro energético en sistemas eléctricos.\\n7. Estudios de cortocircuito a nivel de industrial en plantas que superen los 750KVA de demanda máxima.\\n8. Rediseño de cualquiera de los temas anteriores.',NULL),(10,2,'Área Mecánica','1. Diseño de  instalaciones hidrosanitarias, de gases, de sistemas contra incendio, de potencia fluida, entre otros.\\n2. Diseño de intercambiadores de calor, calentadores solares y sistemas fotovoltaicos.\\n3. Diseño de sistemas de aire acondicionado, refrigeración, ventilación, aire comprimido y vacío.\\n4. Diseño de cuartos limpios\\n5. Diseño de sistemas de vacío para aplicaciones industriales\\n6. Auditorías energéticas, oportunidades de conservación de energía y ahorro energético\\n7. Diseño de sistemas automotores.\\n 8. Diseño máquinas simples.\\n9. Modificación y rediseño de máquinas existentes.\\n10. Cálculo, diseño y selección de sistemas de transmisión mecánica.\\n',NULL),(11,3,'Grados Académicos ','Licenciatura',NULL),(12,3,'Información General ','La Ingeniería en Mantenimiento Industrial se apoya en tres disciplinas académicas clásicas: Ingeniería Mecánica, Ingeniería Eléctrica y Administración de Empresas, siendo el común denominador de todas ellas la necesidad cotidiana a la que se enfrenta el ingeniero de planta al programar el mantenimiento de los equipos industriales.',NULL),(13,5,'Plan de estudios','Puede consultar el plan de estudio completo accediendo a la siguiente dirección web:\n\nhttps://www.tec.ac.cr/programas-academicos/licenciatura-mantenimiento-industrial',NULL),(14,6,'Misión','Impulsar la transformación de los procesos científico-tecnológicos requeridos para lograr un desarrollo social sostenible del país y la región, mediante la oferta de bienes y servicios computacionales basados en conocimiento, en las áreas de docencia, investigación, extensión y vinculación con la industria, bajo un esquema ético, social y de alta calidad.',NULL),(15,6,'Visión','Para el año 2016, la Escuela de Computación del Tecnológico de Costa Rica habrá conquistado una posición de liderazgo latinoamericano y proveerá a la sociedad costarricense y a su entorno de bienes y servicios basados en conocimiento, en materia de computación y TIC, en las áreas de Docencia, Investigación, Extensión y Vinculación con la industria. Se tratará de productos actualizados, claramente diferenciados, de excelente calidad, accesibles y pertinentes, que coadyuvarán sustancialmente en la transformación de los procesos científico-tecnológicos requeridos para lograr el desarrollo social sostenible de la región.',NULL),(16,7,'Acreditación','La carrera de Ingeniería en Computación se encuentra acreditada ante el Sistema Nacional de Acreditación de la Educación Superior (Sinaes), lo que representa la calidad y excelencia del programa académico que se imparte. La carrera de Ingeniería en Computación se encuentra acreditada ante el Sistema Nacional de Acreditación de la Educación Superior (Sinaes), lo que representa la calidad y excelencia del programa académico que se imparte.',NULL),(17,8,'Ofertas laborales','Entre los puestos laborales que el egresado podrá obtener se encuentran los siguientes:\\n\\n\n* Programador con habilidades y conocimientos técnicos para resolver problemas de manipulación de información y analizar, diseñar, implementar y validar programas.\\n\n* Analista programador con habilidades y conocimientos técnicos de un área de especialidad (administración, industria, comercio o servicios) para proponer soluciones computacionales o productos de software que apoyen estas actividades específicas.\\n\n* Líder técnico de proyectos con habilidades y conocimientos técnicos de un área de especialidad para proponer soluciones computacionales o productos de software que apoyen estas actividades específicas.\\n\n* Desarrollar productos de software para empresas en alguna área de especialidad, que proponga soluciones computacionales con la participación del personal en informática.\\n\n* Administrador de infraestructura de software, con el fin de hacer uso eficiente de equipos y brindar alta seguridad en los servicios computacionales.\\n\n* Investigador e innovador para aplicar las ciencias de la computación en las diferentes organizaciones.\\n\n* Arquitecto de software después de tres años de experiencia en el área, con el fin de satisfacer la mayor funcionalidad y los requerimientos de desempeño de los sistemas computacionales, tanto funcionales como no funcionales.\\n\n* Asegurador de la calidad del software con habilidad para poder satisfacer las necesidades de los usuarios finales, y a la vez hacer un uso eficiente de los recursos computacionales.',NULL),(18,9,'Personal docente','Docentes especializados que desempeñan funciones de investigación, extensión y docencia en los tres programas que ofrece el departamento: Ingeniería en Computación, Maestría en Computación y el Centro de Investigaciones en Computación.',NULL),(19,9,'Equipos y laboratorios de cómputo','- Red de microcomputadores con más de 120 estaciones de trabajo con diferentes plataformas y servicios.\\n\n- Laboratorios con la más moderna tecnología, y dos laboratorios adicionales, totalmente equipados para clases prácticas.\\n\n- Más de la mitad de las estaciones de trabajo tienen dos sistemas operativos: Linux y Windows.\n',NULL),(20,9,'Servidores Linux','Nueve servidores Linux para el manejo de cuentas de estudiantes y profesores, servicio de correo, new, binarios, NS, NIS, NFS, DNS, FTP, Telnet, Web, Backup, SSH, aplicaciones, impresiones y bases de datos.',NULL),(21,9,'Servidor Windows','Servidor Windows para Microsoft SQL Server.',NULL),(22,9,'Lenguages de programación impartidos','Varios lenguajes de programación y sistemas de software para la enseñanza y la investigación, entre ellos:\n- Oracle\n- Smalltalk\n- Sybase\n- Centura/Gupta\n- SQL\n- Java\n- C++\n- Scheme\n- B2Logic\n- Common Lisp\n- Standard ML\n- CaML\n- Haskell\n- Prolog II\n- ToolBook\n- Director\n- Modula 2\n- C\n- Ensamblador\n- Pascal\n- HTML\n- Perl\n- Visual Basic\n- Delphi\n- Php\n- Flash',NULL),(23,10,'Matemáticas','1. Matemática general.\n2. Matemática discreta.\n3. Cálculo para computación.\n4. Álgebra lineal para computación.\n5. Probabilidades.\n6. Estadística.\n',NULL),(24,10,'Ciencias Sociales','1. Ambiente Humano.\n2. Seminario de Estudios Filosóficos e Históricos.\n3. Seminario de Estudios Costarricenses.\n4. Computación y Sociedad.',NULL),(25,10,'Ciencias del Lenguage','1. Inglés Básico.\r\n2. Inglés para Computación (4 niveles).\r\n3. Comunicación Técnica.\r\n',NULL),(26,10,'Computación','1. Introducción y Taller de Programación.\r\n2. Fundamentos en Organización de Computadores.\r\n3. Estructuras de Datos.\r\n4. Arquitectura de Computadores.\r\n5. Programación Orientada a Objetos.\r\n6. Bases de Datos.\r\n7. Lenguajes de Programación.\r\n8. Compiladores e Intérpretes.\r\n9. Requerimientos de Software.\r\n10. Diseño de Software.\r\n11. Administración de Proyectos.\r\n12. Principios de Sistemas Operativos.\r\n13. Investigación de Operaciones.\r\n14. Aseguramiento de la Calidad del Software.\r\n15. Redes.\r\n16. Inteligencia Artificial.\r\n17. Proyecto de Investigación.\r\n',NULL),(27,10,'Plan de estudios','Puede consultar el plan de estudio completo accediendo a la siguiente dirección web:\n\nhttps://www.tec.ac.cr/planes-estudio/bachillerato-ingenieria-computacion',NULL),(28,7,'Grado académico','Bachillerato.',NULL),(29,11,'Misión','Promover, desarrollar y facilitar la docencia, la investigación y la extensión científica y tecnológica de excelencia, en el campo de la Ingeniería Electromecánica, para contribuir en el desarrollo productivo, integral y sostenible del pais y de la región.',NULL),(30,11,'Visión','La Escuela de Ingeniería Electromecánica será una organización líder en el ámbito naconal e internacional, en la preparación académica, desarrollo de investigación y vinculación con el sector productivo nacional y regional. Promoverá también la innovación, así como el intercambio de conocimiento entre empresas, cámaras, organizaciones y universidades afines.',NULL),(31,13,'Oportunidades laborales','Las opciones laborales más destacadas se presentan en las áreas de electricidad, electrónica, procesos industriales, mercadeo, asesoría técnica y desarrollo de nuevas tecnologías para instituciones como las siguientes:\r\n\r\n     - Empresas relacionadas con producción industrial.\r\n     - Centros de investigación.\r\n     - Organismos gubernamentales y empresas suministradoras y fabricantes de equipos.\r\n',NULL),(32,15,'Recursos tecnológicos','- Equipos computacionales.\r\n- Laboratorio de alta tecnología.\r\n',NULL),(33,16,'Ciencias del Lenguaje','1. Comunicación Técnica.\r\n2. Comunicación Oral.\r\n3. Comunicación Escrita.\r\n4. Inglés para Mecatrónica.\r\n5. Prueba avanzada de Inglés.',NULL),(34,16,'Ciencias Sociales','1. Introducción a la Técnica, Ciencia y Tecnología.\r\n2. Ambiente Humano.\r\n3. Seminario de Estudios Filosóficos e Históricos.\r\n4. Seminario de Estudios Costarricenses.\r\n',NULL),(35,16,'Matemática, Química y Física','1. Matemática General.\r\n2. Física General.\r\n3. Química Básica.\r\n4. Cálculo Diferencial e Integral.\r\n5. Álgebra Lineal.\r\n6. Cálculo Superior.\r\n7. Ecuaciones diferenciales.',NULL),(36,16,'Electrónica','1. Circuitos Electrónicos en CC y CA.\r\n2. Electrónica Analógica.\r\n3. Electrónica Digital.\r\n4. Electrónica de Potencia.\r\n5. Sensores y Actuadores.\r\n6. Microprocesadores y Microcontroladores.\r\n',NULL),(37,16,'Plan de estudios','Puede consultar el plan de estudio completo accediendo a la siguiente dirección web:\r\n\r\nhttps://www.tec.ac.cr/planes-estudio/licenciatura-ingenieria-mecatronica',NULL);
/*!40000 ALTER TABLE `subsections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'heroku_f6e6709b7355dc5'
--
/*!50003 DROP PROCEDURE IF EXISTS `agregarImagenesSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `agregarImagenesSeccion`(IN `id`INT(11), IN `url` VARCHAR(200), IN `descripcion` VARCHAR(200))
BEGIN
	
	INSERT INTO `sections_images` (`section_IdSection`, `image_file_path`, `caption`)
    VALUES (`id`, `url`,  `descripcion`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarVideoSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `agregarVideoSeccion`(IN `nombreCarrera` VARCHAR(200), IN `nombreSeccion` VARCHAR(200), IN `url` VARCHAR(200))
BEGIN
	
    DECLARE idCarrera INT(10);
	DECLARE idSeccion INT(10);

    
    SELECT idCareer INTO idCarrera 
	FROM careers         
	WHERE  nombreCarrera = `name`;
    
    SELECT idSection INTO idSeccion 
	FROM sections        
	WHERE  nombreSeccion = `name` AND  idCarrera = career_idCareer;

	INSERT INTO `sections_videos` (`section_IdSection`, `video_file_path`)
    VALUES (`idSeccion`, `url`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearCarrera` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `crearCarrera`(IN `nombre` VARCHAR(200),  IN `escuela` VARCHAR(200), IN `imagen` VARCHAR(200))
BEGIN
	INSERT INTO `careers` (`name`, `school`, `image`)
    VALUES (`nombre`, `escuela`, `imagen`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `crearSeccion`(IN `nombreCarrera` VARCHAR(200), IN `nombre` VARCHAR(200),  IN `descripcion` TEXT, IN `imagen` VARCHAR(200))
BEGIN
	
    DECLARE idCarrera INT(10);

    
    SELECT idCareer INTO idCarrera 
	FROM careers         
	WHERE  nombreCarrera = `name`;

	INSERT INTO `sections` (`career_idCareer`, `name`, `description`, `image`)
    VALUES (`idCarrera`, `nombre`, `descripcion`, `imagen`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearSubSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `crearSubSeccion`(IN `idSeccion` VARCHAR(200), IN `nombreSubSeccion` VARCHAR(200),  IN `descripcion` TEXT)
BEGIN
	
    /*DECLARE idCarrera INT(10);
	DECLARE idSeccion INT(10);

    
    SELECT idCareer INTO idCarrera 
	FROM careers         
	WHERE  nombreCarrera = `name`;
    
    SELECT idSection INTO idSeccion 
	FROM sections        
	WHERE  nombreSeccion = `name` AND  idCarrera = career_idCareer;*/

	INSERT INTO `subsections` (`section_idSection`, `name` ,`description`)
    VALUES (`idSeccion`, `nombreSubSeccion`, `descripcion`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarCarrera` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `editarCarrera`(IN `id` INT(11), IN `nombre` VARCHAR(200), IN `escuela` VARCHAR(200), IN `imagen` VARCHAR(200))
BEGIN

    
    IF nombre != "" THEN
    UPDATE careers
    SET `name` = nombre
    WHERE idCareer = id;   
    END IF;
    
    IF escuela != "" THEN
    UPDATE careers
    SET `school` = escuela
    WHERE idCareer = id;   
    END IF;
    
    IF imagen != "" THEN
    UPDATE careers
    SET `image` = imagen
    WHERE idCareer = id;   
    END IF;
    
    
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarImagenSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `editarImagenSeccion`(IN `id` INT(11), IN `imagen` VARCHAR(200))
BEGIN

    UPDATE sections
    SET `image` = imagen
    WHERE idSection = id;    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `editarSeccion`(IN `id` INT(11), IN `descripcion` TEXT)
BEGIN

    UPDATE sections
    SET `description` = descripcion
    WHERE idSection = id;    
    

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarSubSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `editarSubSeccion`(IN `id` INT(11), IN `descripcion` TEXT)
BEGIN

    
    UPDATE subsections
    SET `description` = descripcion
    WHERE idSubsection = id;    
    
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarVideoSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `editarVideoSeccion`(IN `id` INT(11), IN `url` VARCHAR(200))
BEGIN

    
    UPDATE sections_videos
    SET `video_file_path` = url
    WHERE id = idSectionVideo;    
    
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCarrera` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `eliminarCarrera`(IN `id` INT(11))
BEGIN
	DELETE FROM `heroku_f6e6709b7355dc5`.`careers` WHERE (`idCareer` =  `id`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarImagenesSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `eliminarImagenesSeccion`(IN `id` INT(11))
BEGIN
	DELETE FROM `heroku_f6e6709b7355dc5`.`sections_images` WHERE (`idSectionImage` =  `id`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `eliminarSeccion`(IN `id` INT(11))
BEGIN
	DELETE FROM `heroku_f6e6709b7355dc5`.`sections` WHERE (`idSection` =  `id`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarSubSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `eliminarSubSeccion`(IN `idSub` INT(11))
BEGIN
	DELETE FROM `heroku_f6e6709b7355dc5`.`subsections` WHERE (`idSubsection` =  `idSub`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerSeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `obtenerSeccion`(IN `id` INT(11))
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'seccion'
SELECT *
FROM sections
WHERE idSection = `id` ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getCareers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `sp_getCareers`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Get a list of careers.'
SELECT idCareer, name, school, image
FROM careers ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getCareerSections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `sp_getCareerSections`(IN `pIdCareer` INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Get the career''s sections.'
SELECT idSection, name, description, image, titleColor
FROM sections
WHERE career_idCareer = pIdCareer ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getSectionAdditionalText` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `sp_getSectionAdditionalText`(IN `pIdSection` INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Get the section''s additional texts.'
SELECT title, text
FROM sections_additional_text
WHERE section_idSection = pIdSection ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getSectionImages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `sp_getSectionImages`(IN `pIdSection` INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Get the URL paths for the section''s images.'
SELECT *
FROM sections_images
WHERE section_idSection = pIdSection ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getSectionVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `sp_getSectionVideo`(IN `pIdSection` INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Get section''s video identifier.'
SELECT video_file_path
FROM sections_videos
WHERE section_idSection = pIdSection ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getSubsections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `sp_getSubsections`(IN `pIdSection` INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Get a list of the section''s subsections.'
SELECT *
FROM subsections
WHERE section_idSection = pIdSection ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validarIngreso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`bd5a77700870d2`@`%` PROCEDURE `validarIngreso`(IN nombreUsuario VARCHAR(200), IN passwordP VARCHAR(200))
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Validar.'
SELECT * FROM admins              
	WHERE username =  nombreUsuario AND  pass = passwordP ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-12 20:34:18
