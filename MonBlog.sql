
/* REQUETE QUI MARCHE A PRENDRE EN EXEMPLE */


SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `T_COM`;
CREATE TABLE `T_COM` (
  `COM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COM_DATE` datetime NOT NULL,
  `COM_DEV` varchar(100) NOT NULL,
  `TIC_ID` int(11) NOT NULL,
  PRIMARY KEY (`COM_ID`),
  KEY `fk_com_TIC` (`TIC_ID`),
  CONSTRAINT `fk_com_TIC` FOREIGN KEY (`TIC_ID`) REFERENCES `T_TICKET` (`TIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `T_ETAT`;
CREATE TABLE `T_ETAT` (
  `ET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ET_LIB` datetime NOT NULL,
  PRIMARY KEY (`ET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `T_TICKET`;
CREATE TABLE `T_TICKET` (
  `TIC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIC_DATE` datetime NOT NULL,
  `TIC_TITRE` varchar(100) NOT NULL,
  `TIC_CONTENU` varchar(400) NOT NULL,
  `ET_ID` int(11) NOT NULL,
  PRIMARY KEY (`TIC_ID`),
  KEY `ET_ID` (`ET_ID`),
  CONSTRAINT `T_TICKET_ibfk_1` FOREIGN KEY (`ET_ID`) REFERENCES `T_ETAT` (`ET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
