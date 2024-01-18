/*
 Navicat Premium Data Transfer

 Source Server         : 55555
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 127.0.0.1:55555
 Source Schema         : contabilidad

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 14/01/2024 06:40:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bancos
-- ----------------------------
DROP TABLE IF EXISTS `bancos`;
CREATE TABLE `bancos`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bancos
-- ----------------------------
INSERT INTO `bancos` VALUES (1, '2012-05-30', 100000000, 'debe');
INSERT INTO `bancos` VALUES (2, '2012-06-03', 3500000, 'haber');

-- ----------------------------
-- Table structure for caja
-- ----------------------------
DROP TABLE IF EXISTS `caja`;
CREATE TABLE `caja`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caja
-- ----------------------------
INSERT INTO `caja` VALUES (1, '2012-05-30', 90000000, 'debe');
INSERT INTO `caja` VALUES (2, '2012-06-01', 5000000, 'debe');
INSERT INTO `caja` VALUES (3, '2012-06-05', 50000000, 'debe');
INSERT INTO `caja` VALUES (4, '2012-06-15', 5000000, 'debe');
INSERT INTO `caja` VALUES (5, '2012-06-07', 200000, 'haber');
INSERT INTO `caja` VALUES (6, '2012-06-20', 380000, 'haber');
INSERT INTO `caja` VALUES (7, '2012-06-26', 80000000, 'haber');
INSERT INTO `caja` VALUES (8, '2012-06-25', 1600000, 'haber');
INSERT INTO `caja` VALUES (9, '2012-06-30', 5000000, 'haber');
INSERT INTO `caja` VALUES (10, '2012-06-30', 100000000, 'debe');

-- ----------------------------
-- Table structure for capital_suscrito_y_pagado
-- ----------------------------
DROP TABLE IF EXISTS `capital_suscrito_y_pagado`;
CREATE TABLE `capital_suscrito_y_pagado`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of capital_suscrito_y_pagado
-- ----------------------------
INSERT INTO `capital_suscrito_y_pagado` VALUES (1, '2012-05-30', 100000000, 'haber');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, '2012-06-01', 5000000, 'debe');
INSERT INTO `clientes` VALUES (2, '2012-06-15', 5000000, 'haber');
INSERT INTO `clientes` VALUES (3, '2012-06-30', 100000000, 'debe');

-- ----------------------------
-- Table structure for cuentas
-- ----------------------------
DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE `cuentas`  (
  `CODIGO` int(50) NOT NULL,
  `DETALLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RAZON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuentas
-- ----------------------------
INSERT INTO `cuentas` VALUES (1105, 'CAJA', 'Activo');
INSERT INTO `cuentas` VALUES (1110, 'Bancos', 'Activo');
INSERT INTO `cuentas` VALUES (21, 'Obligaciones_Financieras', 'Pasivo');
INSERT INTO `cuentas` VALUES (151605, 'Edificios', 'Activo');
INSERT INTO `cuentas` VALUES (152405, 'Muebles_Y_Enseres', 'Activo');
INSERT INTO `cuentas` VALUES (151215, 'Equipos_De_Computo', 'Activo');
INSERT INTO `cuentas` VALUES (136510, 'Vehiculo', 'Activo');
INSERT INTO `cuentas` VALUES (3105, 'Capital_Suscrito_Y_Pagado', 'Patrimonio');
INSERT INTO `cuentas` VALUES (423005, 'Ingresos_Por_Servicios', 'Ingresos');
INSERT INTO `cuentas` VALUES (530520, 'Gastos_De_Interes', 'Gastos');
INSERT INTO `cuentas` VALUES (5120, 'Gastos_De_Arrendamiento', 'Gastos');
INSERT INTO `cuentas` VALUES (510503, 'Gastos_De_Salario', 'Gastos');
INSERT INTO `cuentas` VALUES (5135, 'Gastos_De_Servicios_Publicos', 'Gastos');
INSERT INTO `cuentas` VALUES (1305, 'Clientes', 'Activo');

-- ----------------------------
-- Table structure for edificios
-- ----------------------------
DROP TABLE IF EXISTS `edificios`;
CREATE TABLE `edificios`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edificios
-- ----------------------------
INSERT INTO `edificios` VALUES (1, '2012-05-30', 100000000, 'debe');

-- ----------------------------
-- Table structure for equipos_de_computo
-- ----------------------------
DROP TABLE IF EXISTS `equipos_de_computo`;
CREATE TABLE `equipos_de_computo`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipos_de_computo
-- ----------------------------
INSERT INTO `equipos_de_computo` VALUES (1, '2012-05-30', 250000000, 'debe');

-- ----------------------------
-- Table structure for ganancias_y_perdidas
-- ----------------------------
DROP TABLE IF EXISTS `ganancias_y_perdidas`;
CREATE TABLE `ganancias_y_perdidas`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CUENTA` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ganancias_y_perdidas
-- ----------------------------
INSERT INTO `ganancias_y_perdidas` VALUES (1, 1600000, 'debe', 'Gastos_De_Interes');
INSERT INTO `ganancias_y_perdidas` VALUES (2, 200000, 'debe', 'Gastos_De_Arrendamiento');
INSERT INTO `ganancias_y_perdidas` VALUES (3, 5000000, 'debe', 'Gastos_De_Salario');
INSERT INTO `ganancias_y_perdidas` VALUES (4, 380000, 'debe', 'Gastos_De_Servicios_Publicos');
INSERT INTO `ganancias_y_perdidas` VALUES (5, 290000000, 'haber', 'Ingresos_Por_Servicios');

-- ----------------------------
-- Table structure for gastos_de_arrendamiento
-- ----------------------------
DROP TABLE IF EXISTS `gastos_de_arrendamiento`;
CREATE TABLE `gastos_de_arrendamiento`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gastos_de_arrendamiento
-- ----------------------------
INSERT INTO `gastos_de_arrendamiento` VALUES (1, '2012-06-07', 200000, 'debe');

-- ----------------------------
-- Table structure for gastos_de_interes
-- ----------------------------
DROP TABLE IF EXISTS `gastos_de_interes`;
CREATE TABLE `gastos_de_interes`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gastos_de_interes
-- ----------------------------
INSERT INTO `gastos_de_interes` VALUES (1, '2012-06-25', 1600000, 'debe');

-- ----------------------------
-- Table structure for gastos_de_salario
-- ----------------------------
DROP TABLE IF EXISTS `gastos_de_salario`;
CREATE TABLE `gastos_de_salario`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gastos_de_salario
-- ----------------------------
INSERT INTO `gastos_de_salario` VALUES (1, '2012-06-30', 5000000, 'debe');

-- ----------------------------
-- Table structure for gastos_de_servicios_publicos
-- ----------------------------
DROP TABLE IF EXISTS `gastos_de_servicios_publicos`;
CREATE TABLE `gastos_de_servicios_publicos`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gastos_de_servicios_publicos
-- ----------------------------
INSERT INTO `gastos_de_servicios_publicos` VALUES (1, '2012-06-20', 380000, 'debe');

-- ----------------------------
-- Table structure for ingresos_por_servicios
-- ----------------------------
DROP TABLE IF EXISTS `ingresos_por_servicios`;
CREATE TABLE `ingresos_por_servicios`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingresos_por_servicios
-- ----------------------------
INSERT INTO `ingresos_por_servicios` VALUES (1, '2012-06-01', 10000000, 'haber');
INSERT INTO `ingresos_por_servicios` VALUES (2, '2012-06-05', 50000000, 'haber');
INSERT INTO `ingresos_por_servicios` VALUES (3, '2012-06-30', 230000000, 'haber');

-- ----------------------------
-- Table structure for muebles_y_enseres
-- ----------------------------
DROP TABLE IF EXISTS `muebles_y_enseres`;
CREATE TABLE `muebles_y_enseres`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of muebles_y_enseres
-- ----------------------------
INSERT INTO `muebles_y_enseres` VALUES (1, '2012-05-30', 35000000, 'debe');

-- ----------------------------
-- Table structure for obligaciones_financieras
-- ----------------------------
DROP TABLE IF EXISTS `obligaciones_financieras`;
CREATE TABLE `obligaciones_financieras`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of obligaciones_financieras
-- ----------------------------
INSERT INTO `obligaciones_financieras` VALUES (1, '2012-05-30', 550000000, 'haber');
INSERT INTO `obligaciones_financieras` VALUES (2, '2012-06-25', 80000000, 'debe');

-- ----------------------------
-- Table structure for puc
-- ----------------------------
DROP TABLE IF EXISTS `puc`;
CREATE TABLE `puc`  (
  `CODIGO` int(20) NOT NULL,
  `DETALLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RAZON` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of puc
-- ----------------------------
INSERT INTO `puc` VALUES (11, 'Disponible', 'activo');
INSERT INTO `puc` VALUES (1105, 'Caja', 'activo');
INSERT INTO `puc` VALUES (110505, 'Caja general', 'activo');
INSERT INTO `puc` VALUES (110510, 'Cajas menores', 'activo');
INSERT INTO `puc` VALUES (110515, 'Moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (1110, 'Bancos', 'activo');
INSERT INTO `puc` VALUES (111005, 'Moneda nacional', 'activo');
INSERT INTO `puc` VALUES (111010, 'Moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (1115, 'Remesas en tránsito', 'activo');
INSERT INTO `puc` VALUES (111505, 'Moneda nacional', 'activo');
INSERT INTO `puc` VALUES (111510, 'Moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (1120, 'Cuentas de ahorro', 'activo');
INSERT INTO `puc` VALUES (112005, 'Bancos', 'activo');
INSERT INTO `puc` VALUES (112010, 'Corporaciones de ahorro y vivienda', 'activo');
INSERT INTO `puc` VALUES (112015, 'Organismos cooperativos financieros', 'activo');
INSERT INTO `puc` VALUES (1125, 'Fondos', 'activo');
INSERT INTO `puc` VALUES (112505, 'Rotatorios moneda nacional', 'activo');
INSERT INTO `puc` VALUES (112510, 'Rotatorios moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (112515, 'Especiales moneda nacional', 'activo');
INSERT INTO `puc` VALUES (112520, 'Especiales moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (112525, 'De amortización moneda nacional', 'activo');
INSERT INTO `puc` VALUES (112530, 'De amortización moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (12, 'Inversiones', 'activo');
INSERT INTO `puc` VALUES (1205, 'Acciones', 'activo');
INSERT INTO `puc` VALUES (120505, 'Agricultura, ganadería, caza y silvicultura', 'activo');
INSERT INTO `puc` VALUES (120510, 'Pesca', 'activo');
INSERT INTO `puc` VALUES (120515, 'Explotación de minas y canteras', 'activo');
INSERT INTO `puc` VALUES (120520, 'Industria manufacturera', 'activo');
INSERT INTO `puc` VALUES (120525, 'Suministro de electricidad, gas y agua', 'activo');
INSERT INTO `puc` VALUES (120530, 'Construcción', 'activo');
INSERT INTO `puc` VALUES (120535, 'Comercio al por mayor y al por menor', 'activo');
INSERT INTO `puc` VALUES (120540, 'Hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (120545, 'Transporte, almacenamiento y comunicaciones', 'activo');
INSERT INTO `puc` VALUES (120550, 'Actividad financiera', 'activo');
INSERT INTO `puc` VALUES (120555, 'Actividades inmobiliarias, empresariales y de alqu', 'activo');
INSERT INTO `puc` VALUES (120560, 'Enseñanza', 'activo');
INSERT INTO `puc` VALUES (120565, 'Servicios sociales y de salud', 'activo');
INSERT INTO `puc` VALUES (120570, 'Otras actividades de servicios comunitarios, socia', 'activo');
INSERT INTO `puc` VALUES (120599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1210, 'Cuotas o partes de interés social', 'activo');
INSERT INTO `puc` VALUES (121005, 'Agricultura, ganadería, caza y silvicultura', 'activo');
INSERT INTO `puc` VALUES (121010, 'Pesca', 'activo');
INSERT INTO `puc` VALUES (121015, 'Explotación de minas y canteras', 'activo');
INSERT INTO `puc` VALUES (121020, 'Industria manufacturera', 'activo');
INSERT INTO `puc` VALUES (121025, 'Suministro de electricidad, gas y agua', 'activo');
INSERT INTO `puc` VALUES (121030, 'Construcción', 'activo');
INSERT INTO `puc` VALUES (121035, 'Comercio al por mayor y al por menor', 'activo');
INSERT INTO `puc` VALUES (121040, 'Hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (121045, 'Transporte, almacenamiento y comunicaciones', 'activo');
INSERT INTO `puc` VALUES (121050, 'Actividad financiera', 'activo');
INSERT INTO `puc` VALUES (121055, 'Actividades inmobiliarias, empresariales y de alqu', 'activo');
INSERT INTO `puc` VALUES (121060, 'Enseñanza', 'activo');
INSERT INTO `puc` VALUES (121065, 'Servicios sociales y de salud', 'activo');
INSERT INTO `puc` VALUES (121070, 'Otras actividades de servicios comunitarios, socia', 'activo');
INSERT INTO `puc` VALUES (121099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1215, 'Bonos', 'activo');
INSERT INTO `puc` VALUES (121505, 'Bonos públicos moneda nacional', 'activo');
INSERT INTO `puc` VALUES (121510, 'Bonos públicos moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (121515, 'Bonos ordinarios', 'activo');
INSERT INTO `puc` VALUES (121520, 'Bonos convertibles en acciones', 'activo');
INSERT INTO `puc` VALUES (121595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1220, 'Cédulas', 'activo');
INSERT INTO `puc` VALUES (122005, 'Cédulas de capitalización', 'activo');
INSERT INTO `puc` VALUES (122010, 'Cédulas hipotecarias', 'activo');
INSERT INTO `puc` VALUES (122015, 'Cédulas de inversión', 'activo');
INSERT INTO `puc` VALUES (122095, 'Otras', 'activo');
INSERT INTO `puc` VALUES (1225, 'Certificados', 'activo');
INSERT INTO `puc` VALUES (122505, 'Certificados de depósito a término (CDT)', 'activo');
INSERT INTO `puc` VALUES (122510, 'Certificados de depósito de ahorro', 'activo');
INSERT INTO `puc` VALUES (122515, 'Certificados de ahorro de valor constante (CAVC)', 'activo');
INSERT INTO `puc` VALUES (122520, 'Certificados de cambio', 'activo');
INSERT INTO `puc` VALUES (122525, 'Certificados cafeteros valorizables', 'activo');
INSERT INTO `puc` VALUES (122530, 'Certificados eléctricos valorizables (CEV)', 'activo');
INSERT INTO `puc` VALUES (122535, 'Certificados de reembolso tributario (CERT)', 'activo');
INSERT INTO `puc` VALUES (122540, 'Certificados de desarrollo turístico', 'activo');
INSERT INTO `puc` VALUES (122545, 'Certificados de inversión forestal (CIF)', 'activo');
INSERT INTO `puc` VALUES (122595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1230, 'Papeles comerciales', 'activo');
INSERT INTO `puc` VALUES (123005, 'Empresas comerciales', 'activo');
INSERT INTO `puc` VALUES (123010, 'Empresas industriales', 'activo');
INSERT INTO `puc` VALUES (123015, 'Empresas de servicios', 'activo');
INSERT INTO `puc` VALUES (1235, 'Títulos', 'activo');
INSERT INTO `puc` VALUES (123505, 'Títulos de desarrollo agropecuario', 'activo');
INSERT INTO `puc` VALUES (123510, 'Títulos canjeables por certificados de cambio', 'activo');
INSERT INTO `puc` VALUES (123515, 'Títulos de tesorería (TES)', 'activo');
INSERT INTO `puc` VALUES (123520, 'Títulos de participación', 'activo');
INSERT INTO `puc` VALUES (123525, 'Títulos de crédito de fomento', 'activo');
INSERT INTO `puc` VALUES (123530, 'Títulos financieros agroindustriales (TFA)', 'activo');
INSERT INTO `puc` VALUES (123535, 'Títulos de ahorro cafetero (TAC)', 'activo');
INSERT INTO `puc` VALUES (123540, 'Títulos de ahorro nacional (TAN)', 'activo');
INSERT INTO `puc` VALUES (123545, 'Títulos energéticos de rentabilidad creciente (TER', 'activo');
INSERT INTO `puc` VALUES (123550, 'Títulos de ahorro educativo (TAE)', 'activo');
INSERT INTO `puc` VALUES (123555, 'Títulos financieros industriales y comerciales', 'activo');
INSERT INTO `puc` VALUES (123560, 'Tesoros', 'activo');
INSERT INTO `puc` VALUES (123565, 'Títulos de devolución de impuestos nacionales (TID', 'activo');
INSERT INTO `puc` VALUES (123570, 'Títulos inmobiliarios', 'activo');
INSERT INTO `puc` VALUES (123595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1240, 'Aceptaciones bancarias o financieras', 'activo');
INSERT INTO `puc` VALUES (124005, 'Bancos comerciales', 'activo');
INSERT INTO `puc` VALUES (124010, 'Compañías de financiamiento comercial', 'activo');
INSERT INTO `puc` VALUES (124015, 'Corporaciones financieras', 'activo');
INSERT INTO `puc` VALUES (124095, 'Otras', 'activo');
INSERT INTO `puc` VALUES (1245, 'Derechos fiduciarios', 'activo');
INSERT INTO `puc` VALUES (124505, 'Fideicomisos de inversión moneda nacional', 'activo');
INSERT INTO `puc` VALUES (124510, 'Fideicomisos de inversión moneda extranjera', 'activo');
INSERT INTO `puc` VALUES (1250, 'Derechos de recompra de inversiones negociadas (re', 'activo');
INSERT INTO `puc` VALUES (125005, 'Acciones', 'activo');
INSERT INTO `puc` VALUES (125010, 'Cuotas o partes de interés social', 'activo');
INSERT INTO `puc` VALUES (125015, 'Bonos', 'activo');
INSERT INTO `puc` VALUES (125020, 'Cédulas', 'activo');
INSERT INTO `puc` VALUES (125025, 'Certificados', 'activo');
INSERT INTO `puc` VALUES (125030, 'Papeles comerciales', 'activo');
INSERT INTO `puc` VALUES (125035, 'Títulos', 'activo');
INSERT INTO `puc` VALUES (125040, 'Aceptaciones bancarias o financieras', 'activo');
INSERT INTO `puc` VALUES (125095, 'Otros', 'activo');
INSERT INTO `puc` VALUES (125099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1255, 'Obligatorias', 'activo');
INSERT INTO `puc` VALUES (125505, 'Bonos de financiamiento especial', 'activo');
INSERT INTO `puc` VALUES (125510, 'Bonos de financiamiento presupuestal', 'activo');
INSERT INTO `puc` VALUES (125515, 'Bonos para desarrollo social y seguridad interna (', 'activo');
INSERT INTO `puc` VALUES (125595, 'Otras', 'activo');
INSERT INTO `puc` VALUES (1260, 'Cuentas en participación', 'activo');
INSERT INTO `puc` VALUES (126099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1295, 'Otras inversiones', 'activo');
INSERT INTO `puc` VALUES (129505, 'Aportes en cooperativas', 'activo');
INSERT INTO `puc` VALUES (129510, 'Derechos en clubes sociales', 'activo');
INSERT INTO `puc` VALUES (129515, 'Acciones o derechos en clubes deportivos', 'activo');
INSERT INTO `puc` VALUES (129520, 'Bonos en colegios', 'activo');
INSERT INTO `puc` VALUES (129595, 'Diversas', 'activo');
INSERT INTO `puc` VALUES (129599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1299, 'Provisiones', 'activo');
INSERT INTO `puc` VALUES (129905, 'Acciones', 'activo');
INSERT INTO `puc` VALUES (129910, 'Cuotas o partes de interés social', 'activo');
INSERT INTO `puc` VALUES (129915, 'Bonos', 'activo');
INSERT INTO `puc` VALUES (129920, 'Cédulas', 'activo');
INSERT INTO `puc` VALUES (129925, 'Certificados', 'activo');
INSERT INTO `puc` VALUES (129930, 'Papeles comerciales', 'activo');
INSERT INTO `puc` VALUES (129935, 'Títulos', 'activo');
INSERT INTO `puc` VALUES (129940, 'Aceptaciones bancarias o financieras', 'activo');
INSERT INTO `puc` VALUES (129945, 'Derechos fiduciarios', 'activo');
INSERT INTO `puc` VALUES (129950, 'Derechos de recompra de inversiones negociadas', 'activo');
INSERT INTO `puc` VALUES (129955, 'Obligatorias', 'activo');
INSERT INTO `puc` VALUES (129960, 'Cuentas en participación', 'activo');
INSERT INTO `puc` VALUES (129995, 'Otras inversiones', 'activo');
INSERT INTO `puc` VALUES (13, 'Deudores', 'activo');
INSERT INTO `puc` VALUES (1305, 'Clientes', 'activo');
INSERT INTO `puc` VALUES (130505, 'Nacionales ', 'activo');
INSERT INTO `puc` VALUES (130510, 'Del exterior', 'activo');
INSERT INTO `puc` VALUES (130515, 'Deudores del sistema', 'activo');
INSERT INTO `puc` VALUES (1310, 'Cuentas corrientes comerciales', 'activo');
INSERT INTO `puc` VALUES (131005, 'Casa matriz', 'activo');
INSERT INTO `puc` VALUES (131010, 'Compañías vinculadas', 'activo');
INSERT INTO `puc` VALUES (131015, 'Accionistas o socios', 'activo');
INSERT INTO `puc` VALUES (131020, 'Particulares', 'activo');
INSERT INTO `puc` VALUES (131095, 'Otras', 'activo');
INSERT INTO `puc` VALUES (1315, 'Cuentas por cobrar a casa matriz', 'activo');
INSERT INTO `puc` VALUES (131505, 'Ventas', 'activo');
INSERT INTO `puc` VALUES (131510, 'Pagos a nombre de casa matriz', 'activo');
INSERT INTO `puc` VALUES (131515, 'Valores recibidos por casa matriz', 'activo');
INSERT INTO `puc` VALUES (131520, 'Préstamos', 'activo');
INSERT INTO `puc` VALUES (1320, 'Cuentas por cobrar a vinculados económicos', 'activo');
INSERT INTO `puc` VALUES (132005, 'Filiales', 'activo');
INSERT INTO `puc` VALUES (132010, 'Subsidiarias', 'activo');
INSERT INTO `puc` VALUES (132015, 'Sucursales', 'activo');
INSERT INTO `puc` VALUES (1323, 'Cuentas por cobrar a directores', 'activo');
INSERT INTO `puc` VALUES (1325, 'Cuentas por cobrar a socios y accionistas', 'activo');
INSERT INTO `puc` VALUES (132505, 'A socios', 'activo');
INSERT INTO `puc` VALUES (132510, 'A accionistas', 'activo');
INSERT INTO `puc` VALUES (1328, 'Aportes por cobrar', 'activo');
INSERT INTO `puc` VALUES (1330, 'Anticipos y avances', 'activo');
INSERT INTO `puc` VALUES (133005, 'A proveedores', 'activo');
INSERT INTO `puc` VALUES (133010, 'A contratistas', 'activo');
INSERT INTO `puc` VALUES (133015, 'A trabajadores', 'activo');
INSERT INTO `puc` VALUES (133020, 'A agentes', 'activo');
INSERT INTO `puc` VALUES (133025, 'A concesionarios', 'activo');
INSERT INTO `puc` VALUES (133030, 'De adjudicaciones', 'activo');
INSERT INTO `puc` VALUES (133095, 'Otros', 'activo');
INSERT INTO `puc` VALUES (133099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1332, 'Cuentas de operación conjunta', 'activo');
INSERT INTO `puc` VALUES (1335, 'Depósitos', 'activo');
INSERT INTO `puc` VALUES (133505, 'Para importaciones', 'activo');
INSERT INTO `puc` VALUES (133510, 'Para servicios', 'activo');
INSERT INTO `puc` VALUES (133515, 'Para contratos', 'activo');
INSERT INTO `puc` VALUES (133520, 'Para responsabilidades', 'activo');
INSERT INTO `puc` VALUES (133525, 'Para juicios ejecutivos', 'activo');
INSERT INTO `puc` VALUES (133530, 'Para adquisición de acciones, cuotas o derechos so', 'activo');
INSERT INTO `puc` VALUES (133535, 'En garantía', 'activo');
INSERT INTO `puc` VALUES (133595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1340, 'Promesas de compra venta', 'activo');
INSERT INTO `puc` VALUES (134005, 'De bienes raíces', 'activo');
INSERT INTO `puc` VALUES (134010, 'De maquinaria y equipo', 'activo');
INSERT INTO `puc` VALUES (134015, 'De flota y equipo de transporte', 'activo');
INSERT INTO `puc` VALUES (134020, 'De flota y equipo aéreo', 'activo');
INSERT INTO `puc` VALUES (134025, 'De flota y equipo férreo', 'activo');
INSERT INTO `puc` VALUES (134030, 'De flota y equipo  fluvial y/o marítimo', 'activo');
INSERT INTO `puc` VALUES (134035, 'De semovientes', 'activo');
INSERT INTO `puc` VALUES (134095, 'De otros bienes', 'activo');
INSERT INTO `puc` VALUES (1345, 'Ingresos por cobrar', 'activo');
INSERT INTO `puc` VALUES (134505, 'Dividendos y/o participaciones', 'activo');
INSERT INTO `puc` VALUES (134510, 'Intereses', 'activo');
INSERT INTO `puc` VALUES (134515, 'Comisiones', 'activo');
INSERT INTO `puc` VALUES (134520, 'Honorarios', 'activo');
INSERT INTO `puc` VALUES (134525, 'Servicios', 'activo');
INSERT INTO `puc` VALUES (134530, 'Arrendamientos', 'activo');
INSERT INTO `puc` VALUES (134535, 'CERT por cobrar', 'activo');
INSERT INTO `puc` VALUES (134595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1350, 'Retención sobre contratos', 'activo');
INSERT INTO `puc` VALUES (135005, 'De construcción', 'activo');
INSERT INTO `puc` VALUES (135010, 'De prestación de servicios', 'activo');
INSERT INTO `puc` VALUES (135095, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1355, 'Anticipo de impuestos y contribuciones o saldos a ', 'activo');
INSERT INTO `puc` VALUES (135505, 'Anticipo de impuestos de renta y complementarios', 'activo');
INSERT INTO `puc` VALUES (135510, 'Anticipo de impuestos de industria y comercio', 'activo');
INSERT INTO `puc` VALUES (135515, 'Retención en la fuente', 'activo');
INSERT INTO `puc` VALUES (135517, 'Impuesto a las ventas retenido', 'activo');
INSERT INTO `puc` VALUES (135518, 'Impuesto de industria y comercio retenido', 'activo');
INSERT INTO `puc` VALUES (135520, 'Sobrantes en liquidación privada de impuestos', 'activo');
INSERT INTO `puc` VALUES (135525, 'Contribuciones', 'activo');
INSERT INTO `puc` VALUES (135530, 'Impuestos descontables', 'activo');
INSERT INTO `puc` VALUES (135595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1360, 'Reclamaciones', 'activo');
INSERT INTO `puc` VALUES (136005, 'A compañías aseguradoras', 'activo');
INSERT INTO `puc` VALUES (136010, 'A transportadores', 'activo');
INSERT INTO `puc` VALUES (136015, 'Por tiquetes aéreos', 'activo');
INSERT INTO `puc` VALUES (136095, 'Otras', 'activo');
INSERT INTO `puc` VALUES (1365, 'Cuentas por cobrar a trabajadores', 'activo');
INSERT INTO `puc` VALUES (136505, 'Vivienda', 'activo');
INSERT INTO `puc` VALUES (136510, 'Vehículos', 'activo');
INSERT INTO `puc` VALUES (136515, 'Educación', 'activo');
INSERT INTO `puc` VALUES (136520, 'Médicos, odontológicos y similares', 'activo');
INSERT INTO `puc` VALUES (136525, 'Calamidad doméstica', 'activo');
INSERT INTO `puc` VALUES (136530, 'Responsabilidades', 'activo');
INSERT INTO `puc` VALUES (136595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1370, 'Préstamos a particulares  ', 'activo');
INSERT INTO `puc` VALUES (137005, 'Con garantía real', 'activo');
INSERT INTO `puc` VALUES (137010, 'Con garantía personal', 'activo');
INSERT INTO `puc` VALUES (1380, 'Deudores varios', 'activo');
INSERT INTO `puc` VALUES (138005, 'Depositarios', 'activo');
INSERT INTO `puc` VALUES (138010, 'Comisionistas de bolsas', 'activo');
INSERT INTO `puc` VALUES (138015, 'Fondo de inversión', 'activo');
INSERT INTO `puc` VALUES (138020, 'Cuentas por cobrar de terceros', 'activo');
INSERT INTO `puc` VALUES (138025, 'Pagos por cuenta de terceros', 'activo');
INSERT INTO `puc` VALUES (138030, 'Fondos de inversión social', 'activo');
INSERT INTO `puc` VALUES (138095, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1385, 'Derechos de recompra de cartera negociada', 'activo');
INSERT INTO `puc` VALUES (1390, 'Deudas de difícil cobro', 'activo');
INSERT INTO `puc` VALUES (1399, 'Provisiones', 'activo');
INSERT INTO `puc` VALUES (139905, 'Clientes', 'activo');
INSERT INTO `puc` VALUES (139910, 'Cuentas corrientes comerciales', 'activo');
INSERT INTO `puc` VALUES (139915, 'Cuentas por cobrar a casa matriz', 'activo');
INSERT INTO `puc` VALUES (139920, 'Cuentas por cobrar a vinculados económicos', 'activo');
INSERT INTO `puc` VALUES (139925, 'Cuentas por cobrar a socios y accionistas', 'activo');
INSERT INTO `puc` VALUES (139930, 'Anticipos y avances', 'activo');
INSERT INTO `puc` VALUES (139932, 'Cuentas de operación conjunta', 'activo');
INSERT INTO `puc` VALUES (139935, 'Depósitos', 'activo');
INSERT INTO `puc` VALUES (139940, 'Promesas de compraventa', 'activo');
INSERT INTO `puc` VALUES (139945, 'Ingresos por cobrar', 'activo');
INSERT INTO `puc` VALUES (139950, 'Retención sobre contratos', 'activo');
INSERT INTO `puc` VALUES (139955, 'Reclamaciones', 'activo');
INSERT INTO `puc` VALUES (139960, 'Cuentas por cobrar a trabajadores', 'activo');
INSERT INTO `puc` VALUES (139965, 'Préstamos a particulares', 'activo');
INSERT INTO `puc` VALUES (139975, 'Deudores varios', 'activo');
INSERT INTO `puc` VALUES (139980, 'Derechos de recompra de cartera negociada', 'activo');
INSERT INTO `puc` VALUES (14, 'Inventarios**', 'activo');
INSERT INTO `puc` VALUES (1405, 'Materias primas', 'activo');
INSERT INTO `puc` VALUES (140599, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1410, 'Productos en proceso', 'activo');
INSERT INTO `puc` VALUES (141099, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1415, 'Obras de construcción en curso', 'activo');
INSERT INTO `puc` VALUES (141599, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1417, 'Obras de urbanismo', 'activo');
INSERT INTO `puc` VALUES (141799, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1420, 'Contratos en ejecución', 'activo');
INSERT INTO `puc` VALUES (142099, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1425, 'Cultivos en desarrollo', 'activo');
INSERT INTO `puc` VALUES (142599, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1428, 'Plantaciones agrícolas', 'activo');
INSERT INTO `puc` VALUES (142899, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1430, 'Productos terminados', 'activo');
INSERT INTO `puc` VALUES (143005, 'Productos manufacturados', 'activo');
INSERT INTO `puc` VALUES (143010, 'Productos extraídos y/o procesados', 'activo');
INSERT INTO `puc` VALUES (143015, 'Productos agrícolas y forestales', 'activo');
INSERT INTO `puc` VALUES (143020, 'Subproductos', 'activo');
INSERT INTO `puc` VALUES (143025, 'Productos de pesca', 'activo');
INSERT INTO `puc` VALUES (143099, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1435, 'Mercancías no fabricadas por la empresa', 'activo');
INSERT INTO `puc` VALUES (143599, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1440, 'Bienes raíces para la venta', 'activo');
INSERT INTO `puc` VALUES (144099, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1445, 'Semovientes', 'activo');
INSERT INTO `puc` VALUES (144599, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1450, 'Terrenos', 'activo');
INSERT INTO `puc` VALUES (145005, 'Por urbanizar', 'activo');
INSERT INTO `puc` VALUES (145010, 'Urbanizados por construir', 'activo');
INSERT INTO `puc` VALUES (145099, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1455, 'Materiales, repuestos y accesorios', 'activo');
INSERT INTO `puc` VALUES (145599, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1460, 'Envases y empaques', 'activo');
INSERT INTO `puc` VALUES (146099, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1465, 'Inventarios en tránsito', 'activo');
INSERT INTO `puc` VALUES (146599, 'Ajustes por inflación**', 'activo');
INSERT INTO `puc` VALUES (1499, 'Provisiones', 'activo');
INSERT INTO `puc` VALUES (149905, 'Para obsolescencia', 'activo');
INSERT INTO `puc` VALUES (149910, 'Para diferencia de inventario físico', 'activo');
INSERT INTO `puc` VALUES (149915, 'Para pérdidas de inventarios', 'activo');
INSERT INTO `puc` VALUES (149920, 'Lifo', 'activo');
INSERT INTO `puc` VALUES (15, 'Propiedades, planta y equipo', 'activo');
INSERT INTO `puc` VALUES (1504, 'Terrenos', 'activo');
INSERT INTO `puc` VALUES (150405, 'Urbanos', 'activo');
INSERT INTO `puc` VALUES (150410, 'Rurales', 'activo');
INSERT INTO `puc` VALUES (150499, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1506, 'Materiales proyectos petroleros', 'activo');
INSERT INTO `puc` VALUES (150605, 'Tuberías y equipo', 'activo');
INSERT INTO `puc` VALUES (150610, 'Costos de importación materiales', 'activo');
INSERT INTO `puc` VALUES (150615, 'Proyectos de construcción', 'activo');
INSERT INTO `puc` VALUES (150699, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1508, 'Construcciones en curso', 'activo');
INSERT INTO `puc` VALUES (150805, 'Construcciones y edificaciones', 'activo');
INSERT INTO `puc` VALUES (150810, 'Acueductos, plantas y redes', 'activo');
INSERT INTO `puc` VALUES (150815, 'Vías de comunicación', 'activo');
INSERT INTO `puc` VALUES (150820, 'Pozos artesianos', 'activo');
INSERT INTO `puc` VALUES (150825, 'Proyectos de exploración', 'activo');
INSERT INTO `puc` VALUES (150830, 'Proyectos de desarrollo', 'activo');
INSERT INTO `puc` VALUES (150899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1512, 'Maquinaria y equipos en montaje', 'activo');
INSERT INTO `puc` VALUES (151205, 'Maquinaria y equipo', 'activo');
INSERT INTO `puc` VALUES (151210, 'Equipo de oficina', 'activo');
INSERT INTO `puc` VALUES (151215, 'Equipo de computación y comunicación', 'activo');
INSERT INTO `puc` VALUES (151220, 'Equipo médico-científico', 'activo');
INSERT INTO `puc` VALUES (151225, 'Equipo de hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (151230, 'Flota y equipo de transporte', 'activo');
INSERT INTO `puc` VALUES (151235, 'Flota y equipo fluvial y/o marítimo', 'activo');
INSERT INTO `puc` VALUES (151240, 'Flota y equipo aéreo', 'activo');
INSERT INTO `puc` VALUES (151245, 'Flota y equipo férreo', 'activo');
INSERT INTO `puc` VALUES (151250, 'Plantas y redes', 'activo');
INSERT INTO `puc` VALUES (151299, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1516, 'Construcciones y edificaciones', 'activo');
INSERT INTO `puc` VALUES (151605, 'Edificios', 'activo');
INSERT INTO `puc` VALUES (151610, 'Oficinas', 'activo');
INSERT INTO `puc` VALUES (151615, 'Almacenes', 'activo');
INSERT INTO `puc` VALUES (151620, 'Fábricas y plantas industriales', 'activo');
INSERT INTO `puc` VALUES (151625, 'Salas de exhibición y ventas', 'activo');
INSERT INTO `puc` VALUES (151630, 'Cafetería y casinos', 'activo');
INSERT INTO `puc` VALUES (151635, 'Silos', 'activo');
INSERT INTO `puc` VALUES (151640, 'Invernaderos', 'activo');
INSERT INTO `puc` VALUES (151645, 'Casetas y campamentos', 'activo');
INSERT INTO `puc` VALUES (151650, 'Instalaciones agropecuarias', 'activo');
INSERT INTO `puc` VALUES (151655, 'Viviendas para empleados y obreros', 'activo');
INSERT INTO `puc` VALUES (151660, 'Terminal de buses y taxis', 'activo');
INSERT INTO `puc` VALUES (151663, 'Terminal marítimo', 'activo');
INSERT INTO `puc` VALUES (151665, 'Terminal férreo', 'activo');
INSERT INTO `puc` VALUES (151670, 'Parqueaderos, garajes y depósitos', 'activo');
INSERT INTO `puc` VALUES (151675, 'Hangares', 'activo');
INSERT INTO `puc` VALUES (151680, 'Bodegas', 'activo');
INSERT INTO `puc` VALUES (151695, 'Otros', 'activo');
INSERT INTO `puc` VALUES (151699, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1520, 'Maquinaria y equipo', 'activo');
INSERT INTO `puc` VALUES (152099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1524, 'Equipo de oficina', 'activo');
INSERT INTO `puc` VALUES (152405, 'Muebles y enseres', 'activo');
INSERT INTO `puc` VALUES (152410, 'Equipos', 'activo');
INSERT INTO `puc` VALUES (152495, 'Otros', 'activo');
INSERT INTO `puc` VALUES (152499, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1528, 'Equipo de computación y comunicación', 'activo');
INSERT INTO `puc` VALUES (152805, 'Equipos de procesamiento de datos', 'activo');
INSERT INTO `puc` VALUES (152810, 'Equipos de telecomunicaciones', 'activo');
INSERT INTO `puc` VALUES (152815, 'Equipos de radio', 'activo');
INSERT INTO `puc` VALUES (152820, 'Satélites y antenas', 'activo');
INSERT INTO `puc` VALUES (152825, 'Líneas telefónicas', 'activo');
INSERT INTO `puc` VALUES (152895, 'Otros', 'activo');
INSERT INTO `puc` VALUES (152899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1532, 'Equipo médico-científico', 'activo');
INSERT INTO `puc` VALUES (153205, 'Médico', 'activo');
INSERT INTO `puc` VALUES (153210, 'Odontológico', 'activo');
INSERT INTO `puc` VALUES (153215, 'Laboratorio', 'activo');
INSERT INTO `puc` VALUES (153220, 'Instrumental', 'activo');
INSERT INTO `puc` VALUES (153295, 'Otros', 'activo');
INSERT INTO `puc` VALUES (153299, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1536, 'Equipo de hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (153605, 'De habitaciones', 'activo');
INSERT INTO `puc` VALUES (153610, 'De comestibles y bebidas', 'activo');
INSERT INTO `puc` VALUES (153695, 'Otros', 'activo');
INSERT INTO `puc` VALUES (153699, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1540, 'Flota y equipo de transporte', 'activo');
INSERT INTO `puc` VALUES (154005, 'Autos, camionetas y camperos', 'activo');
INSERT INTO `puc` VALUES (154008, 'Camiones, volquetas y furgones', 'activo');
INSERT INTO `puc` VALUES (154010, 'Tractomulas y remolques', 'activo');
INSERT INTO `puc` VALUES (154015, 'Buses y busetas', 'activo');
INSERT INTO `puc` VALUES (154017, 'Recolectores y contenedores', 'activo');
INSERT INTO `puc` VALUES (154020, 'Montacargas', 'activo');
INSERT INTO `puc` VALUES (154025, 'Palas y grúas', 'activo');
INSERT INTO `puc` VALUES (154030, 'Motocicletas', 'activo');
INSERT INTO `puc` VALUES (154035, 'Bicicletas', 'activo');
INSERT INTO `puc` VALUES (154040, 'Estibas y carretas', 'activo');
INSERT INTO `puc` VALUES (154045, 'Bandas transportadoras', 'activo');
INSERT INTO `puc` VALUES (154095, 'Otros', 'activo');
INSERT INTO `puc` VALUES (154099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1544, 'Flota y equipo fluvial y/o marítimo', 'activo');
INSERT INTO `puc` VALUES (154405, 'Buques', 'activo');
INSERT INTO `puc` VALUES (154410, 'Lanchas', 'activo');
INSERT INTO `puc` VALUES (154415, 'Remolcadoras', 'activo');
INSERT INTO `puc` VALUES (154420, 'Botes', 'activo');
INSERT INTO `puc` VALUES (154425, 'Boyas', 'activo');
INSERT INTO `puc` VALUES (154430, 'Amarres', 'activo');
INSERT INTO `puc` VALUES (154435, 'Contenedores y chasises', 'activo');
INSERT INTO `puc` VALUES (154440, 'Gabarras', 'activo');
INSERT INTO `puc` VALUES (154495, 'Otros', 'activo');
INSERT INTO `puc` VALUES (154499, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1548, 'Flota y equipo aéreo', 'activo');
INSERT INTO `puc` VALUES (154805, 'Aviones', 'activo');
INSERT INTO `puc` VALUES (154810, 'Avionetas', 'activo');
INSERT INTO `puc` VALUES (154815, 'Helicópteros ', 'activo');
INSERT INTO `puc` VALUES (154820, 'Turbinas y motores', 'activo');
INSERT INTO `puc` VALUES (154825, 'Manuales de entrenamiento personal técnico', 'activo');
INSERT INTO `puc` VALUES (154830, 'Equipos de vuelo', 'activo');
INSERT INTO `puc` VALUES (154895, 'Otros', 'activo');
INSERT INTO `puc` VALUES (154899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1552, 'Flota y equipo férreo', 'activo');
INSERT INTO `puc` VALUES (155205, 'Locomotoras', 'activo');
INSERT INTO `puc` VALUES (155210, 'Vagones', 'activo');
INSERT INTO `puc` VALUES (155215, 'Redes férreas', 'activo');
INSERT INTO `puc` VALUES (155295, 'Otros', 'activo');
INSERT INTO `puc` VALUES (155299, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1556, 'Acueductos, plantas y redes', 'activo');
INSERT INTO `puc` VALUES (155605, 'Instalaciones para agua y energía', 'activo');
INSERT INTO `puc` VALUES (155610, 'Acueducto, acequias y canalizaciones', 'activo');
INSERT INTO `puc` VALUES (155615, 'Plantas de generación hidráulica', 'activo');
INSERT INTO `puc` VALUES (155620, 'Plantas de generación térmica', 'activo');
INSERT INTO `puc` VALUES (155625, 'Plantas de generación a gas', 'activo');
INSERT INTO `puc` VALUES (155628, 'Plantas de generación diesel, gasolina y petróleo', 'activo');
INSERT INTO `puc` VALUES (155630, 'Plantas de distribución', 'activo');
INSERT INTO `puc` VALUES (155635, 'Plantas de transmisión y subestaciones', 'activo');
INSERT INTO `puc` VALUES (155640, 'Oleoductos', 'activo');
INSERT INTO `puc` VALUES (155645, 'Gasoductos', 'activo');
INSERT INTO `puc` VALUES (155647, 'Poliductos', 'activo');
INSERT INTO `puc` VALUES (155650, 'Redes de distribución', 'activo');
INSERT INTO `puc` VALUES (155655, 'Plantas de tratamiento', 'activo');
INSERT INTO `puc` VALUES (155660, 'Redes de recolección de aguas negras', 'activo');
INSERT INTO `puc` VALUES (155665, 'Instalaciones y equipo de bombeo', 'activo');
INSERT INTO `puc` VALUES (155670, 'Redes de distribución de vapor', 'activo');
INSERT INTO `puc` VALUES (155675, 'Redes de aire', 'activo');
INSERT INTO `puc` VALUES (155680, 'Redes alimentación de gas', 'activo');
INSERT INTO `puc` VALUES (155682, 'Redes externas de telefonía', 'activo');
INSERT INTO `puc` VALUES (155685, 'Plantas deshidratadoras', 'activo');
INSERT INTO `puc` VALUES (155695, 'Otros', 'activo');
INSERT INTO `puc` VALUES (155699, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1560, 'Armamento de vigilancia', 'activo');
INSERT INTO `puc` VALUES (156099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1562, 'Envases y empaques', 'activo');
INSERT INTO `puc` VALUES (156299, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1564, 'Plantaciones agrícolas y forestales', 'activo');
INSERT INTO `puc` VALUES (156405, 'Cultivos en desarrollo', 'activo');
INSERT INTO `puc` VALUES (156410, 'Cultivos amortizables', 'activo');
INSERT INTO `puc` VALUES (156499, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1568, 'Vías de comunicación', 'activo');
INSERT INTO `puc` VALUES (156805, 'Pavimentación y patios', 'activo');
INSERT INTO `puc` VALUES (156810, 'Vías', 'activo');
INSERT INTO `puc` VALUES (156815, 'Puentes', 'activo');
INSERT INTO `puc` VALUES (156820, 'Calles', 'activo');
INSERT INTO `puc` VALUES (156825, 'Aeródromos', 'activo');
INSERT INTO `puc` VALUES (156895, 'Otros', 'activo');
INSERT INTO `puc` VALUES (156899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1572, 'Minas y canteras', 'activo');
INSERT INTO `puc` VALUES (157205, 'Minas', 'activo');
INSERT INTO `puc` VALUES (157210, 'Canteras', 'activo');
INSERT INTO `puc` VALUES (157299, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1576, 'Pozos artesianos', 'activo');
INSERT INTO `puc` VALUES (157699, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1580, 'Yacimientos', 'activo');
INSERT INTO `puc` VALUES (158099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1584, 'Semovientes', 'activo');
INSERT INTO `puc` VALUES (158499, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1588, 'Propiedades, planta y equipo en tránsito', 'activo');
INSERT INTO `puc` VALUES (158805, 'Maquinaria y equipo', 'activo');
INSERT INTO `puc` VALUES (158810, 'Equipo de oficina', 'activo');
INSERT INTO `puc` VALUES (158815, 'Equipo de computación y comunicación', 'activo');
INSERT INTO `puc` VALUES (158820, 'Equipo médico-científico', 'activo');
INSERT INTO `puc` VALUES (158825, 'Equipo de hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (158830, 'Flota y equipo de transporte', 'activo');
INSERT INTO `puc` VALUES (158835, 'Flota y equipo fluvial y/o marítimo', 'activo');
INSERT INTO `puc` VALUES (158840, 'Flota y equipo aéreo', 'activo');
INSERT INTO `puc` VALUES (158845, 'Flota y equipo férreo', 'activo');
INSERT INTO `puc` VALUES (158850, 'Plantas y redes', 'activo');
INSERT INTO `puc` VALUES (158855, 'Armamento de vigilancia', 'activo');
INSERT INTO `puc` VALUES (158860, 'Semovientes', 'activo');
INSERT INTO `puc` VALUES (158865, 'Envases y empaques', 'activo');
INSERT INTO `puc` VALUES (158899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1592, 'Depreciación acumulada', 'activo');
INSERT INTO `puc` VALUES (159205, 'Construcciones y edificaciones', 'activo');
INSERT INTO `puc` VALUES (159210, 'Maquinaria y equipo', 'activo');
INSERT INTO `puc` VALUES (159215, 'Equipo de oficina', 'activo');
INSERT INTO `puc` VALUES (159220, 'Equipo de computación y comunicación', 'activo');
INSERT INTO `puc` VALUES (159225, 'Equipo médico-científico', 'activo');
INSERT INTO `puc` VALUES (159230, 'Equipo de hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (159235, 'Flota y equipo de transporte', 'activo');
INSERT INTO `puc` VALUES (159240, 'Flota y equipo fluvial y/o marítimo', 'activo');
INSERT INTO `puc` VALUES (159245, 'Flota y equipo aéreo', 'activo');
INSERT INTO `puc` VALUES (159250, 'Flota y equipo férreo', 'activo');
INSERT INTO `puc` VALUES (159255, 'Acueductos, plantas y redes', 'activo');
INSERT INTO `puc` VALUES (159260, 'Armamento de vigilancia', 'activo');
INSERT INTO `puc` VALUES (159265, 'Envases y empaques', 'activo');
INSERT INTO `puc` VALUES (159299, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1596, 'Depreciación diferida', 'activo');
INSERT INTO `puc` VALUES (159605, 'Exceso fiscal sobre la contable', 'activo');
INSERT INTO `puc` VALUES (159610, 'Defecto fiscal sobre la contable (CR)', 'activo');
INSERT INTO `puc` VALUES (159699, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1597, 'Amortización acumulada', 'activo');
INSERT INTO `puc` VALUES (159705, 'Plantaciones agrícolas y forestales', 'activo');
INSERT INTO `puc` VALUES (159710, 'Vías de comunicación', 'activo');
INSERT INTO `puc` VALUES (159715, 'Semovientes', 'activo');
INSERT INTO `puc` VALUES (159799, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1598, 'Agotamiento acumulado', 'activo');
INSERT INTO `puc` VALUES (159805, 'Minas y canteras', 'activo');
INSERT INTO `puc` VALUES (159815, 'Pozos artesianos', 'activo');
INSERT INTO `puc` VALUES (159820, 'Yacimientos', 'activo');
INSERT INTO `puc` VALUES (159899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1599, 'Provisiones', 'activo');
INSERT INTO `puc` VALUES (159904, 'Terrenos', 'activo');
INSERT INTO `puc` VALUES (159906, 'Materiales proyectos petroleros', 'activo');
INSERT INTO `puc` VALUES (159908, 'Construcciones en curso', 'activo');
INSERT INTO `puc` VALUES (159912, 'Maquinaria en montaje', 'activo');
INSERT INTO `puc` VALUES (159916, 'Construcciones y edificaciones', 'activo');
INSERT INTO `puc` VALUES (159920, 'Maquinaria y equipo', 'activo');
INSERT INTO `puc` VALUES (159924, 'Equipo de oficina', 'activo');
INSERT INTO `puc` VALUES (159928, 'Equipo de computación y comunicación', 'activo');
INSERT INTO `puc` VALUES (159932, 'Equipo médico-científico', 'activo');
INSERT INTO `puc` VALUES (159936, 'Equipo de hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (159940, 'Flota y equipo de transporte', 'activo');
INSERT INTO `puc` VALUES (159944, 'Flota y equipo fluvial y/o marítimo', 'activo');
INSERT INTO `puc` VALUES (159948, 'Flota y equipo aéreo', 'activo');
INSERT INTO `puc` VALUES (159952, 'Flota y equipo férreo', 'activo');
INSERT INTO `puc` VALUES (159956, 'Acueductos, plantas y redes', 'activo');
INSERT INTO `puc` VALUES (159960, 'Armamento de vigilancia', 'activo');
INSERT INTO `puc` VALUES (159962, 'Envases y empaques', 'activo');
INSERT INTO `puc` VALUES (159964, 'Plantaciones agrícolas y forestales', 'activo');
INSERT INTO `puc` VALUES (159968, 'Vías de comunicación', 'activo');
INSERT INTO `puc` VALUES (159972, 'Minas y canteras', 'activo');
INSERT INTO `puc` VALUES (159980, 'Pozos artesianos', 'activo');
INSERT INTO `puc` VALUES (159984, 'Yacimientos', 'activo');
INSERT INTO `puc` VALUES (159988, 'Semovientes', 'activo');
INSERT INTO `puc` VALUES (159992, 'Propiedades, planta y equipo en tránsito', 'activo');
INSERT INTO `puc` VALUES (16, 'Intangibles', 'activo');
INSERT INTO `puc` VALUES (1605, 'Crédito mercantil', 'activo');
INSERT INTO `puc` VALUES (160505, 'Formado o estimado', 'activo');
INSERT INTO `puc` VALUES (160510, 'Adquirido o comprado', 'activo');
INSERT INTO `puc` VALUES (160599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1610, 'Marcas', 'activo');
INSERT INTO `puc` VALUES (161005, 'Adquiridas', 'activo');
INSERT INTO `puc` VALUES (161010, 'Formadas', 'activo');
INSERT INTO `puc` VALUES (161099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1615, 'Patentes', 'activo');
INSERT INTO `puc` VALUES (161505, 'Adquiridas', 'activo');
INSERT INTO `puc` VALUES (161510, 'Formadas', 'activo');
INSERT INTO `puc` VALUES (161599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1620, 'Concesiones y franquicias', 'activo');
INSERT INTO `puc` VALUES (162005, 'Concesiones ', 'activo');
INSERT INTO `puc` VALUES (162010, 'Franquicias', 'activo');
INSERT INTO `puc` VALUES (162099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1625, 'Derechos', 'activo');
INSERT INTO `puc` VALUES (162505, 'Derechos de autor', 'activo');
INSERT INTO `puc` VALUES (162510, 'Puesto de bolsa', 'activo');
INSERT INTO `puc` VALUES (162515, 'En fideicomisos inmobiliarios', 'activo');
INSERT INTO `puc` VALUES (162520, 'En fideicomisos de garantía', 'activo');
INSERT INTO `puc` VALUES (162525, 'En fideicomisos de administración', 'activo');
INSERT INTO `puc` VALUES (162530, 'De exhibición - películas', 'activo');
INSERT INTO `puc` VALUES (162535, 'En bienes recibidos en arrendamiento financiero (l', 'activo');
INSERT INTO `puc` VALUES (162595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (162599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1630, 'Know how', 'activo');
INSERT INTO `puc` VALUES (163099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1635, 'Licencias', 'activo');
INSERT INTO `puc` VALUES (163599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1698, 'Depreciación y/o amortización acumulada', 'activo');
INSERT INTO `puc` VALUES (169805, 'Crédito mercantil', 'activo');
INSERT INTO `puc` VALUES (169810, 'Marcas', 'activo');
INSERT INTO `puc` VALUES (169815, 'Patentes', 'activo');
INSERT INTO `puc` VALUES (169820, 'Concesiones y franquicias', 'activo');
INSERT INTO `puc` VALUES (169830, 'Derechos', 'activo');
INSERT INTO `puc` VALUES (169835, 'Know how', 'activo');
INSERT INTO `puc` VALUES (169840, 'Licencias', 'activo');
INSERT INTO `puc` VALUES (169899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1699, 'Provisiones', 'activo');
INSERT INTO `puc` VALUES (17, 'Diferidos', 'activo');
INSERT INTO `puc` VALUES (1705, 'Gastos pagados por anticipado', 'activo');
INSERT INTO `puc` VALUES (170505, 'Intereses', 'activo');
INSERT INTO `puc` VALUES (170510, 'Honorarios', 'activo');
INSERT INTO `puc` VALUES (170515, 'Comisiones', 'activo');
INSERT INTO `puc` VALUES (170520, 'Seguros y fianzas', 'activo');
INSERT INTO `puc` VALUES (170525, 'Arrendamientos', 'activo');
INSERT INTO `puc` VALUES (170530, 'Bodegajes', 'activo');
INSERT INTO `puc` VALUES (170535, 'Mantenimiento equipos', 'activo');
INSERT INTO `puc` VALUES (170540, 'Servicios', 'activo');
INSERT INTO `puc` VALUES (170545, 'Suscripciones', 'activo');
INSERT INTO `puc` VALUES (170595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (1710, 'Cargos diferidos', 'activo');
INSERT INTO `puc` VALUES (171004, 'Organización y preoperativos', 'activo');
INSERT INTO `puc` VALUES (0, 'Ajustes por inflación)*', 'costos');
INSERT INTO `puc` VALUES (171012, 'Estudios, investigaciones y proyectos', 'activo');
INSERT INTO `puc` VALUES (171016, 'Programas para computador (software)', 'activo');
INSERT INTO `puc` VALUES (171020, 'Útiles y papelería', 'activo');
INSERT INTO `puc` VALUES (171024, 'Mejoras a propiedades ajenas', 'activo');
INSERT INTO `puc` VALUES (171028, 'Contribuciones y afiliaciones', 'activo');
INSERT INTO `puc` VALUES (171032, 'Entrenamiento de personal', 'activo');
INSERT INTO `puc` VALUES (171036, 'Ferias y exposiciones', 'activo');
INSERT INTO `puc` VALUES (171040, 'Licencias', 'activo');
INSERT INTO `puc` VALUES (171044, 'Publicidad, propaganda y promoción', 'activo');
INSERT INTO `puc` VALUES (171048, 'Elementos de aseo y cafetería', 'activo');
INSERT INTO `puc` VALUES (171052, 'Moldes y troqueles', 'activo');
INSERT INTO `puc` VALUES (171056, 'Instrumental quirúrgico', 'activo');
INSERT INTO `puc` VALUES (171060, 'Dotación y suministro a trabajadores', 'activo');
INSERT INTO `puc` VALUES (171064, 'Elementos de ropería y lencería', 'activo');
INSERT INTO `puc` VALUES (171068, 'Loza y cristalería', 'activo');
INSERT INTO `puc` VALUES (171069, 'Platería', 'activo');
INSERT INTO `puc` VALUES (171070, 'Cubiertería', 'activo');
INSERT INTO `puc` VALUES (171076, 'Impuesto de renta diferido “débitos” por diferenci', 'activo');
INSERT INTO `puc` VALUES (171080, 'Concursos y licitaciones', 'activo');
INSERT INTO `puc` VALUES (171095, 'Otros', 'activo');
INSERT INTO `puc` VALUES (171099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1715, 'Costos de exploración por amortizar', 'activo');
INSERT INTO `puc` VALUES (171505, 'Pozos secos', 'activo');
INSERT INTO `puc` VALUES (171510, 'Pozos no comerciales', 'activo');
INSERT INTO `puc` VALUES (171515, 'Otros costos de exploración', 'activo');
INSERT INTO `puc` VALUES (171599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1720, 'Costos de explotación y desarrollo', 'activo');
INSERT INTO `puc` VALUES (172005, 'Perforación y explotación', 'activo');
INSERT INTO `puc` VALUES (172010, 'Perforaciones campos en desarrollo', 'activo');
INSERT INTO `puc` VALUES (172015, 'Facilidades de producción', 'activo');
INSERT INTO `puc` VALUES (172020, 'Servicio a pozos', 'activo');
INSERT INTO `puc` VALUES (172099, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1730, 'Cargos por corrección monetaria diferida', 'activo');
INSERT INTO `puc` VALUES (1798, 'Amortización acumulada', 'activo');
INSERT INTO `puc` VALUES (179805, 'Costos de exploración por amortizar', 'activo');
INSERT INTO `puc` VALUES (179810, 'Costos de explotación y desarrollo', 'activo');
INSERT INTO `puc` VALUES (179899, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (18, 'Otros activos', 'activo');
INSERT INTO `puc` VALUES (1805, 'Bienes de arte y cultura', 'activo');
INSERT INTO `puc` VALUES (180505, 'Obras de arte', 'activo');
INSERT INTO `puc` VALUES (180510, 'Bibliotecas', 'activo');
INSERT INTO `puc` VALUES (180595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (180599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1895, 'Diversos', 'activo');
INSERT INTO `puc` VALUES (189505, 'Máquinas porteadoras', 'activo');
INSERT INTO `puc` VALUES (189510, 'Bienes entregados en comodato', 'activo');
INSERT INTO `puc` VALUES (189515, 'Amortización acumulada de bienes entregados en com', 'activo');
INSERT INTO `puc` VALUES (189520, 'Bienes recibidos en pago', 'activo');
INSERT INTO `puc` VALUES (189525, 'Derechos sucesorales', 'activo');
INSERT INTO `puc` VALUES (189530, 'Estampillas', 'activo');
INSERT INTO `puc` VALUES (189595, 'Otros', 'activo');
INSERT INTO `puc` VALUES (189599, 'Ajustes por inflación', 'activo');
INSERT INTO `puc` VALUES (1899, 'Provisiones', 'activo');
INSERT INTO `puc` VALUES (189905, 'Bienes de arte y cultura', 'activo');
INSERT INTO `puc` VALUES (189995, 'Diversos', 'activo');
INSERT INTO `puc` VALUES (19, 'Valorizaciones', 'activo');
INSERT INTO `puc` VALUES (1905, 'De inversiones', 'activo');
INSERT INTO `puc` VALUES (190505, 'Acciones', 'activo');
INSERT INTO `puc` VALUES (190510, 'Cuotas o partes de interés social', 'activo');
INSERT INTO `puc` VALUES (190515, 'Derechos fiduciarios', 'activo');
INSERT INTO `puc` VALUES (1910, 'De propiedades, planta y equipo', 'activo');
INSERT INTO `puc` VALUES (191004, 'Terrenos', 'activo');
INSERT INTO `puc` VALUES (191006, 'Materiales proyectos petroleros', 'activo');
INSERT INTO `puc` VALUES (191008, 'Construcciones y edificaciones', 'activo');
INSERT INTO `puc` VALUES (191012, 'Maquinaria y equipo', 'activo');
INSERT INTO `puc` VALUES (191016, 'Equipo de oficina', 'activo');
INSERT INTO `puc` VALUES (191020, 'Equipo de computación y comunicación', 'activo');
INSERT INTO `puc` VALUES (191024, 'Equipo médico-científico', 'activo');
INSERT INTO `puc` VALUES (191028, 'Equipo de hoteles y restaurantes', 'activo');
INSERT INTO `puc` VALUES (191032, 'Flota y equipo de transporte', 'activo');
INSERT INTO `puc` VALUES (191036, 'Flota y equipo fluvial y/o marítimo', 'activo');
INSERT INTO `puc` VALUES (191040, 'Flota y equipo aéreo', 'activo');
INSERT INTO `puc` VALUES (191044, 'Flota y equipo férreo', 'activo');
INSERT INTO `puc` VALUES (191048, 'Acueductos, plantas y redes', 'activo');
INSERT INTO `puc` VALUES (191052, 'Armamento de vigilancia', 'activo');
INSERT INTO `puc` VALUES (191056, 'Envases y empaques', 'activo');
INSERT INTO `puc` VALUES (191060, 'Plantaciones agrícolas y forestales', 'activo');
INSERT INTO `puc` VALUES (191064, 'Vías de comunicación', 'activo');
INSERT INTO `puc` VALUES (191068, 'Minas y canteras', 'activo');
INSERT INTO `puc` VALUES (191072, 'Pozos artesianos', 'activo');
INSERT INTO `puc` VALUES (191076, 'Yacimientos', 'activo');
INSERT INTO `puc` VALUES (191080, 'Semovientes', 'activo');
INSERT INTO `puc` VALUES (1995, 'De otros activos', 'activo');
INSERT INTO `puc` VALUES (199505, 'Bienes de arte y cultura', 'activo');
INSERT INTO `puc` VALUES (199510, 'Bienes entregados en comodato', 'activo');
INSERT INTO `puc` VALUES (199515, 'Bienes recibidos en pago', 'activo');
INSERT INTO `puc` VALUES (199520, 'Inventario de semovientes', 'activo');
INSERT INTO `puc` VALUES (21, 'Obligaciones financieras', 'pasivo');
INSERT INTO `puc` VALUES (2105, 'Bancos nacionales', 'pasivo');
INSERT INTO `puc` VALUES (210505, 'Sobregiros', 'pasivo');
INSERT INTO `puc` VALUES (210510, 'Pagarés', 'pasivo');
INSERT INTO `puc` VALUES (210515, 'Cartas de crédito', 'pasivo');
INSERT INTO `puc` VALUES (210520, 'Aceptaciones bancarias', 'pasivo');
INSERT INTO `puc` VALUES (2110, 'Bancos del exterior', 'pasivo');
INSERT INTO `puc` VALUES (211005, 'Sobregiros', 'pasivo');
INSERT INTO `puc` VALUES (211010, 'Pagarés', 'pasivo');
INSERT INTO `puc` VALUES (211015, 'Cartas de crédito', 'pasivo');
INSERT INTO `puc` VALUES (211020, 'Aceptaciones bancarias', 'pasivo');
INSERT INTO `puc` VALUES (2115, 'Corporaciones financieras', 'pasivo');
INSERT INTO `puc` VALUES (211505, 'Pagarés', 'pasivo');
INSERT INTO `puc` VALUES (211510, 'Aceptaciones financieras', 'pasivo');
INSERT INTO `puc` VALUES (211515, 'Cartas de crédito', 'pasivo');
INSERT INTO `puc` VALUES (211520, 'Contratos de arrendamiento financiero (leasing)', 'pasivo');
INSERT INTO `puc` VALUES (2120, 'Compañías de financiamiento comercial', 'pasivo');
INSERT INTO `puc` VALUES (212005, 'Pagarés', 'pasivo');
INSERT INTO `puc` VALUES (212010, 'Aceptaciones financieras', 'pasivo');
INSERT INTO `puc` VALUES (212020, 'Contratos de arrendamiento financiero (leasing)', 'pasivo');
INSERT INTO `puc` VALUES (2125, 'Corporaciones de ahorro y vivienda', 'pasivo');
INSERT INTO `puc` VALUES (212505, 'Sobregiros', 'pasivo');
INSERT INTO `puc` VALUES (212510, 'Pagarés', 'pasivo');
INSERT INTO `puc` VALUES (212515, 'Hipotecarias', 'pasivo');
INSERT INTO `puc` VALUES (2130, 'Entidades financieras del exterior', 'pasivo');
INSERT INTO `puc` VALUES (2135, 'Compromisos de recompra de inversiones negociadas', 'pasivo');
INSERT INTO `puc` VALUES (213505, 'Acciones', 'pasivo');
INSERT INTO `puc` VALUES (213510, 'Cuotas o partes de interés social', 'pasivo');
INSERT INTO `puc` VALUES (213515, 'Bonos', 'pasivo');
INSERT INTO `puc` VALUES (213520, 'Cédulas', 'pasivo');
INSERT INTO `puc` VALUES (213525, 'Certificados', 'pasivo');
INSERT INTO `puc` VALUES (213530, 'Papeles comerciales', 'pasivo');
INSERT INTO `puc` VALUES (213535, 'Títulos', 'pasivo');
INSERT INTO `puc` VALUES (213540, 'Aceptaciones bancarias o financieras', 'pasivo');
INSERT INTO `puc` VALUES (213595, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2140, 'Compromisos de recompra de cartera negociada', 'pasivo');
INSERT INTO `puc` VALUES (2145, 'Obligaciones gubernamentales', 'pasivo');
INSERT INTO `puc` VALUES (214505, 'Gobierno Nacional', 'pasivo');
INSERT INTO `puc` VALUES (214510, 'Entidades oficiales', 'pasivo');
INSERT INTO `puc` VALUES (2195, 'Otras obligaciones', 'pasivo');
INSERT INTO `puc` VALUES (219505, 'Particulares', 'pasivo');
INSERT INTO `puc` VALUES (219510, 'Compañías vinculadas', 'pasivo');
INSERT INTO `puc` VALUES (219515, 'Casa matriz', 'pasivo');
INSERT INTO `puc` VALUES (219520, 'Socios o accionistas', 'pasivo');
INSERT INTO `puc` VALUES (219525, 'Fondos y cooperativas', 'pasivo');
INSERT INTO `puc` VALUES (219530, 'Directores', 'pasivo');
INSERT INTO `puc` VALUES (219595, 'Otras', 'pasivo');
INSERT INTO `puc` VALUES (22, 'Proveedores', 'pasivo');
INSERT INTO `puc` VALUES (2205, 'Nacionales', 'pasivo');
INSERT INTO `puc` VALUES (2210, 'Del exterior', 'pasivo');
INSERT INTO `puc` VALUES (2215, 'Cuentas corrientes comerciales', 'pasivo');
INSERT INTO `puc` VALUES (2220, 'Casa matriz', 'pasivo');
INSERT INTO `puc` VALUES (2225, 'Compañías vinculadas', 'pasivo');
INSERT INTO `puc` VALUES (23, 'Cuentas por pagar', 'pasivo');
INSERT INTO `puc` VALUES (2305, 'Cuentas corrientes comerciales', 'pasivo');
INSERT INTO `puc` VALUES (2310, 'A casa matriz', 'pasivo');
INSERT INTO `puc` VALUES (2315, 'A compañías vinculadas', 'pasivo');
INSERT INTO `puc` VALUES (2320, 'A contratistas', 'pasivo');
INSERT INTO `puc` VALUES (2330, 'Órdenes de compra por utilizar', 'pasivo');
INSERT INTO `puc` VALUES (2335, 'Costos y gastos por pagar', 'pasivo');
INSERT INTO `puc` VALUES (233505, 'Gastos financieros', 'pasivo');
INSERT INTO `puc` VALUES (233510, 'Gastos legales', 'pasivo');
INSERT INTO `puc` VALUES (233515, 'Libros, suscripciones, periódicos y revistas', 'pasivo');
INSERT INTO `puc` VALUES (233520, 'Comisiones', 'pasivo');
INSERT INTO `puc` VALUES (233525, 'Honorarios', 'pasivo');
INSERT INTO `puc` VALUES (233530, 'Servicios técnicos', 'pasivo');
INSERT INTO `puc` VALUES (233535, 'Servicios de mantenimiento', 'pasivo');
INSERT INTO `puc` VALUES (233540, 'Arrendamientos', 'pasivo');
INSERT INTO `puc` VALUES (233545, 'Transportes, fletes y acarreos', 'pasivo');
INSERT INTO `puc` VALUES (233550, 'Servicios públicos', 'pasivo');
INSERT INTO `puc` VALUES (233555, 'Seguros', 'pasivo');
INSERT INTO `puc` VALUES (233560, 'Gastos de viaje', 'pasivo');
INSERT INTO `puc` VALUES (233565, 'Gastos de representación y relaciones públicas', 'pasivo');
INSERT INTO `puc` VALUES (233570, 'Servicios aduaneros', 'pasivo');
INSERT INTO `puc` VALUES (233595, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2340, 'Instalamentos por pagar', 'pasivo');
INSERT INTO `puc` VALUES (2345, 'Acreedores oficiales', 'pasivo');
INSERT INTO `puc` VALUES (2350, 'Regalías por pagar', 'pasivo');
INSERT INTO `puc` VALUES (2355, 'Deudas con accionistas o socios', 'pasivo');
INSERT INTO `puc` VALUES (235505, 'Accionistas', 'pasivo');
INSERT INTO `puc` VALUES (235510, 'Socios', 'pasivo');
INSERT INTO `puc` VALUES (2357, 'Deudas con directores', 'pasivo');
INSERT INTO `puc` VALUES (2360, 'Dividendos o participaciones por pagar', 'pasivo');
INSERT INTO `puc` VALUES (236005, 'Dividendos', 'pasivo');
INSERT INTO `puc` VALUES (236010, 'Participaciones', 'pasivo');
INSERT INTO `puc` VALUES (2365, 'Retención en la fuente', 'pasivo');
INSERT INTO `puc` VALUES (236505, 'Salarios y pagos laborales', 'pasivo');
INSERT INTO `puc` VALUES (236510, 'Dividendos y/o participaciones', 'pasivo');
INSERT INTO `puc` VALUES (236515, 'Honorarios', 'pasivo');
INSERT INTO `puc` VALUES (236520, 'Comisiones', 'pasivo');
INSERT INTO `puc` VALUES (236525, 'Servicios', 'pasivo');
INSERT INTO `puc` VALUES (236530, 'Arrendamientos', 'pasivo');
INSERT INTO `puc` VALUES (236535, 'Rendimientos financieros', 'pasivo');
INSERT INTO `puc` VALUES (236540, 'Compras', 'pasivo');
INSERT INTO `puc` VALUES (236545, 'Loterías, rifas, apuestas y similares', 'pasivo');
INSERT INTO `puc` VALUES (236550, 'Por pagos al exterior', 'pasivo');
INSERT INTO `puc` VALUES (236555, 'Por ingresos obtenidos en el exterior', 'pasivo');
INSERT INTO `puc` VALUES (236560, 'Enajenación propiedades planta y equipo, personas ', 'pasivo');
INSERT INTO `puc` VALUES (236565, 'Por impuesto de timbre', 'pasivo');
INSERT INTO `puc` VALUES (236570, 'Otras retenciones y patrimonio', 'pasivo');
INSERT INTO `puc` VALUES (236575, 'Autorretenciones', 'pasivo');
INSERT INTO `puc` VALUES (2367, 'Impuesto a las ventas retenido', 'pasivo');
INSERT INTO `puc` VALUES (2368, 'Impuesto de industria y comercio retenido', 'pasivo');
INSERT INTO `puc` VALUES (2370, 'Retenciones y aportes de nómina', 'pasivo');
INSERT INTO `puc` VALUES (237005, 'Aportes a entidades promotoras de salud, EPS', 'pasivo');
INSERT INTO `puc` VALUES (237006, 'Aportes a administradoras de riesgos profesionales', 'pasivo');
INSERT INTO `puc` VALUES (237010, 'Aportes al ICBF, SENA y cajas de compensación', 'pasivo');
INSERT INTO `puc` VALUES (237015, 'Aportes al FIC', 'pasivo');
INSERT INTO `puc` VALUES (237025, 'Embargos judiciales', 'pasivo');
INSERT INTO `puc` VALUES (237030, 'Libranzas', 'pasivo');
INSERT INTO `puc` VALUES (237035, 'Sindicatos', 'pasivo');
INSERT INTO `puc` VALUES (237040, 'Cooperativas', 'pasivo');
INSERT INTO `puc` VALUES (237045, 'Fondos', 'pasivo');
INSERT INTO `puc` VALUES (237095, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2375, 'Cuotas por devolver', 'pasivo');
INSERT INTO `puc` VALUES (2380, 'Acreedores varios', 'pasivo');
INSERT INTO `puc` VALUES (238005, 'Depositarios', 'pasivo');
INSERT INTO `puc` VALUES (238010, 'Comisionistas de bolsas', 'pasivo');
INSERT INTO `puc` VALUES (238015, 'Sociedad administradora-Fondos de inversión', 'pasivo');
INSERT INTO `puc` VALUES (238020, 'Reintegros por pagar', 'pasivo');
INSERT INTO `puc` VALUES (238025, 'Fondo de perseverancia', 'pasivo');
INSERT INTO `puc` VALUES (238030, 'Fondos de cesantías y/o pensiones', 'pasivo');
INSERT INTO `puc` VALUES (238035, 'Donaciones asignadas por pagar', 'pasivo');
INSERT INTO `puc` VALUES (238095, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (24, 'Impuestos, gravámenes y tasas', 'pasivo');
INSERT INTO `puc` VALUES (2404, 'De renta y complementarios', 'pasivo');
INSERT INTO `puc` VALUES (240405, 'Vigencia fiscal corriente', 'pasivo');
INSERT INTO `puc` VALUES (240410, 'Vigencias fiscales anteriores', 'pasivo');
INSERT INTO `puc` VALUES (2408, 'Impuesto sobre las ventas por pagar', 'pasivo');
INSERT INTO `puc` VALUES (2412, 'De industria y comercio', 'pasivo');
INSERT INTO `puc` VALUES (241205, 'Vigencia fiscal corriente', 'pasivo');
INSERT INTO `puc` VALUES (241210, 'Vigencias fiscales anteriores', 'pasivo');
INSERT INTO `puc` VALUES (2416, 'A la propiedad raíz', 'pasivo');
INSERT INTO `puc` VALUES (2420, 'Derechos sobre instrumentos públicos', 'pasivo');
INSERT INTO `puc` VALUES (2424, 'De valorización', 'pasivo');
INSERT INTO `puc` VALUES (242405, 'Vigencia fiscal corriente', 'pasivo');
INSERT INTO `puc` VALUES (242410, 'Vigencias fiscales anteriores', 'pasivo');
INSERT INTO `puc` VALUES (2428, 'De turismo', 'pasivo');
INSERT INTO `puc` VALUES (2432, 'Tasa por utilización de puertos', 'pasivo');
INSERT INTO `puc` VALUES (2436, 'De vehículos', 'pasivo');
INSERT INTO `puc` VALUES (243605, 'Vigencia fiscal corriente', 'pasivo');
INSERT INTO `puc` VALUES (243610, 'Vigencias fiscales anteriores', 'pasivo');
INSERT INTO `puc` VALUES (2440, 'De espectáculos públicos', 'pasivo');
INSERT INTO `puc` VALUES (2444, 'De hidrocarburos y minas', 'pasivo');
INSERT INTO `puc` VALUES (244405, 'De hidrocarburos ', 'pasivo');
INSERT INTO `puc` VALUES (244410, 'De minas', 'pasivo');
INSERT INTO `puc` VALUES (2448, 'Regalías e impuestos a la pequeña y mediana minerí', 'pasivo');
INSERT INTO `puc` VALUES (2452, 'A las exportaciones cafeteras', 'pasivo');
INSERT INTO `puc` VALUES (2456, 'A las importaciones', 'pasivo');
INSERT INTO `puc` VALUES (2460, 'Cuotas de fomento', 'pasivo');
INSERT INTO `puc` VALUES (2464, 'De licores, cervezas y cigarrillos', 'pasivo');
INSERT INTO `puc` VALUES (246405, 'De licores', 'pasivo');
INSERT INTO `puc` VALUES (246410, 'De cervezas', 'pasivo');
INSERT INTO `puc` VALUES (246415, 'De cigarrillos', 'pasivo');
INSERT INTO `puc` VALUES (2468, 'Al sacrificio de ganado', 'pasivo');
INSERT INTO `puc` VALUES (2472, 'Al azar y juegos', 'pasivo');
INSERT INTO `puc` VALUES (2476, 'Gravámenes y regalías por utilización del suelo', 'pasivo');
INSERT INTO `puc` VALUES (2495, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (25, 'Obligaciones laborales', 'pasivo');
INSERT INTO `puc` VALUES (2505, 'Salarios por pagar', 'pasivo');
INSERT INTO `puc` VALUES (2510, 'Cesantías consolidadas', 'pasivo');
INSERT INTO `puc` VALUES (251005, 'Ley laboral anterior', 'pasivo');
INSERT INTO `puc` VALUES (251010, 'Ley 50 de 1990 y normas posteriores', 'pasivo');
INSERT INTO `puc` VALUES (2515, 'Intereses sobre cesantías', 'pasivo');
INSERT INTO `puc` VALUES (2520, 'Prima de servicios', 'pasivo');
INSERT INTO `puc` VALUES (2525, 'Vacaciones consolidadas', 'pasivo');
INSERT INTO `puc` VALUES (2530, 'Prestaciones extralegales', 'pasivo');
INSERT INTO `puc` VALUES (253005, 'Primas', 'pasivo');
INSERT INTO `puc` VALUES (253010, 'Auxilios', 'pasivo');
INSERT INTO `puc` VALUES (253015, 'Dotación y suministro a trabajadores', 'pasivo');
INSERT INTO `puc` VALUES (253020, 'Bonificaciones', 'pasivo');
INSERT INTO `puc` VALUES (253025, 'Seguros', 'pasivo');
INSERT INTO `puc` VALUES (253095, 'Otras', 'pasivo');
INSERT INTO `puc` VALUES (2532, 'Pensiones por pagar', 'pasivo');
INSERT INTO `puc` VALUES (2535, 'Cuotas partes pensiones de jubilación', 'pasivo');
INSERT INTO `puc` VALUES (2540, 'Indemnizaciones laborales', 'pasivo');
INSERT INTO `puc` VALUES (26, 'Pasivos estimados y provisiones', 'pasivo');
INSERT INTO `puc` VALUES (2605, 'Para costos y gastos', 'pasivo');
INSERT INTO `puc` VALUES (260505, 'Intereses', 'pasivo');
INSERT INTO `puc` VALUES (260510, 'Comisiones', 'pasivo');
INSERT INTO `puc` VALUES (260515, 'Honorarios', 'pasivo');
INSERT INTO `puc` VALUES (260520, 'Servicios técnicos', 'pasivo');
INSERT INTO `puc` VALUES (260525, 'Transportes, fletes y acarreos', 'pasivo');
INSERT INTO `puc` VALUES (260530, 'Gastos de viaje', 'pasivo');
INSERT INTO `puc` VALUES (260535, 'Servicios públicos', 'pasivo');
INSERT INTO `puc` VALUES (260540, 'Regalías', 'pasivo');
INSERT INTO `puc` VALUES (260545, 'Garantías', 'pasivo');
INSERT INTO `puc` VALUES (260550, 'Materiales y repuestos', 'pasivo');
INSERT INTO `puc` VALUES (260595, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2610, 'Para obligaciones laborales', 'pasivo');
INSERT INTO `puc` VALUES (261005, 'Cesantías', 'pasivo');
INSERT INTO `puc` VALUES (261010, 'Intereses sobre cesantías', 'pasivo');
INSERT INTO `puc` VALUES (261015, 'Vacaciones', 'pasivo');
INSERT INTO `puc` VALUES (261020, 'Prima de servicios', 'pasivo');
INSERT INTO `puc` VALUES (261025, 'Prestaciones extralegales', 'pasivo');
INSERT INTO `puc` VALUES (261030, 'Viáticos', 'pasivo');
INSERT INTO `puc` VALUES (261095, 'Otras', 'pasivo');
INSERT INTO `puc` VALUES (2615, 'Para obligaciones fiscales', 'pasivo');
INSERT INTO `puc` VALUES (261505, 'De renta y complementarios', 'pasivo');
INSERT INTO `puc` VALUES (261510, 'De industria y comercio', 'pasivo');
INSERT INTO `puc` VALUES (261515, 'Tasa por utilización de puertos', 'pasivo');
INSERT INTO `puc` VALUES (261520, 'De vehículos', 'pasivo');
INSERT INTO `puc` VALUES (261525, 'De hidrocarburos y minas', 'pasivo');
INSERT INTO `puc` VALUES (261595, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2620, 'Pensiones de jubilación', 'pasivo');
INSERT INTO `puc` VALUES (262005, 'Cálculo actuarial pensiones de jubilación', 'pasivo');
INSERT INTO `puc` VALUES (262010, 'Pensiones de jubilación por amortizar (DB)', 'pasivo');
INSERT INTO `puc` VALUES (2625, 'Para obras de urbanismo', 'pasivo');
INSERT INTO `puc` VALUES (262505, 'Acueducto y alcantarillado', 'pasivo');
INSERT INTO `puc` VALUES (262510, 'Energía eléctrica', 'pasivo');
INSERT INTO `puc` VALUES (262515, 'Teléfonos', 'pasivo');
INSERT INTO `puc` VALUES (262595, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2630, 'Para mantenimiento y reparaciones', 'pasivo');
INSERT INTO `puc` VALUES (263005, 'Terrenos', 'pasivo');
INSERT INTO `puc` VALUES (263010, 'Construcciones y edificaciones', 'pasivo');
INSERT INTO `puc` VALUES (263015, 'Maquinaria y equipo', 'pasivo');
INSERT INTO `puc` VALUES (263020, 'Equipo de oficina', 'pasivo');
INSERT INTO `puc` VALUES (263025, 'Equipo de computación y comunicación', 'pasivo');
INSERT INTO `puc` VALUES (263030, 'Equipo médico-científico', 'pasivo');
INSERT INTO `puc` VALUES (263035, 'Equipo de hoteles y restaurantes', 'pasivo');
INSERT INTO `puc` VALUES (263040, 'Flota y equipo de transporte', 'pasivo');
INSERT INTO `puc` VALUES (263045, 'Flota y equipo fluvial y/o marítimo', 'pasivo');
INSERT INTO `puc` VALUES (263050, 'Flota y equipo aéreo', 'pasivo');
INSERT INTO `puc` VALUES (263055, 'Flota y equipo férreo', 'pasivo');
INSERT INTO `puc` VALUES (263060, 'Acueductos, plantas y redes', 'pasivo');
INSERT INTO `puc` VALUES (263065, 'Armamento de vigilancia', 'pasivo');
INSERT INTO `puc` VALUES (263070, 'Envases y empaques', 'pasivo');
INSERT INTO `puc` VALUES (263075, 'Plantaciones agrícolas y forestales', 'pasivo');
INSERT INTO `puc` VALUES (263080, 'Vías de comunicación', 'pasivo');
INSERT INTO `puc` VALUES (263085, 'Pozos artesianos', 'pasivo');
INSERT INTO `puc` VALUES (263095, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2635, 'Para contingencias', 'pasivo');
INSERT INTO `puc` VALUES (263505, 'Multas y sanciones autoridades administrativas', 'pasivo');
INSERT INTO `puc` VALUES (263510, 'Intereses por multas y sanciones', 'pasivo');
INSERT INTO `puc` VALUES (263515, 'Reclamos', 'pasivo');
INSERT INTO `puc` VALUES (263520, 'Laborales', 'pasivo');
INSERT INTO `puc` VALUES (263525, 'Civiles', 'pasivo');
INSERT INTO `puc` VALUES (263530, 'Penales', 'pasivo');
INSERT INTO `puc` VALUES (263535, 'Administrativos', 'pasivo');
INSERT INTO `puc` VALUES (263540, 'Comerciales', 'pasivo');
INSERT INTO `puc` VALUES (263595, 'Otras', 'pasivo');
INSERT INTO `puc` VALUES (2640, 'Para obligaciones de garantías', 'pasivo');
INSERT INTO `puc` VALUES (2695, 'Provisiones diversas', 'pasivo');
INSERT INTO `puc` VALUES (269505, 'Para beneficencia', 'pasivo');
INSERT INTO `puc` VALUES (269510, 'Para comunicaciones', 'pasivo');
INSERT INTO `puc` VALUES (269515, 'Para pérdida en transporte', 'pasivo');
INSERT INTO `puc` VALUES (269520, 'Para operación', 'pasivo');
INSERT INTO `puc` VALUES (269525, 'Para protección de bienes agotables', 'pasivo');
INSERT INTO `puc` VALUES (269530, 'Para ajustes en redención de unidades', 'pasivo');
INSERT INTO `puc` VALUES (269535, 'Autoseguro', 'pasivo');
INSERT INTO `puc` VALUES (269540, 'Planes y programas de reforestación y electrificac', 'pasivo');
INSERT INTO `puc` VALUES (269595, 'Otras', 'pasivo');
INSERT INTO `puc` VALUES (27, 'Diferidos', 'pasivo');
INSERT INTO `puc` VALUES (2705, 'Ingresos recibidos por anticipado', 'pasivo');
INSERT INTO `puc` VALUES (270505, 'Intereses', 'pasivo');
INSERT INTO `puc` VALUES (270510, 'Comisiones', 'pasivo');
INSERT INTO `puc` VALUES (270515, 'Arrendamientos', 'pasivo');
INSERT INTO `puc` VALUES (270520, 'Honorarios', 'pasivo');
INSERT INTO `puc` VALUES (270525, 'Servicios técnicos', 'pasivo');
INSERT INTO `puc` VALUES (270530, 'De suscriptores', 'pasivo');
INSERT INTO `puc` VALUES (270535, 'Transportes, fletes y acarreos', 'pasivo');
INSERT INTO `puc` VALUES (270540, 'Mercancía en tránsito ya vendida', 'pasivo');
INSERT INTO `puc` VALUES (270545, 'Matrículas y pensiones', 'pasivo');
INSERT INTO `puc` VALUES (270550, 'Cuotas de administración', 'pasivo');
INSERT INTO `puc` VALUES (270595, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2710, 'Abonos diferidos', 'pasivo');
INSERT INTO `puc` VALUES (271005, 'Reajuste del sistema', 'pasivo');
INSERT INTO `puc` VALUES (2715, 'Utilidad diferida en ventas a plazos', 'pasivo');
INSERT INTO `puc` VALUES (2720, 'Crédito por corrección monetaria diferida', 'pasivo');
INSERT INTO `puc` VALUES (2725, 'Impuestos diferidos', 'pasivo');
INSERT INTO `puc` VALUES (272505, 'Por depreciación flexible', 'pasivo');
INSERT INTO `puc` VALUES (272595, 'Diversos', 'pasivo');
INSERT INTO `puc` VALUES (272599, 'Ajustes por inflación', 'pasivo');
INSERT INTO `puc` VALUES (28, 'Otros pasivos', 'pasivo');
INSERT INTO `puc` VALUES (2805, 'Anticipos y avances recibidos', 'pasivo');
INSERT INTO `puc` VALUES (280505, 'De clientes', 'pasivo');
INSERT INTO `puc` VALUES (280510, 'Sobre contratos', 'pasivo');
INSERT INTO `puc` VALUES (280515, 'Para obras en proceso', 'pasivo');
INSERT INTO `puc` VALUES (280595, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2810, 'Depósitos recibidos', 'pasivo');
INSERT INTO `puc` VALUES (281005, 'Para futura suscripción de acciones', 'pasivo');
INSERT INTO `puc` VALUES (281010, 'Para futuro pago de cuotas o derechos sociales', 'pasivo');
INSERT INTO `puc` VALUES (281015, 'Para garantía en la prestación de servicios', 'pasivo');
INSERT INTO `puc` VALUES (281020, 'Para garantía de contratos', 'pasivo');
INSERT INTO `puc` VALUES (281025, 'De licitaciones', 'pasivo');
INSERT INTO `puc` VALUES (281030, 'De manejo de bienes', 'pasivo');
INSERT INTO `puc` VALUES (281035, 'Fondo de reserva', 'pasivo');
INSERT INTO `puc` VALUES (281095, 'Otros', 'pasivo');
INSERT INTO `puc` VALUES (2815, 'Ingresos recibidos para terceros', 'pasivo');
INSERT INTO `puc` VALUES (281505, 'Valores recibidos para terceros', 'pasivo');
INSERT INTO `puc` VALUES (281510, 'Venta por cuenta de terceros', 'pasivo');
INSERT INTO `puc` VALUES (2820, 'Cuentas de operación conjunta', 'pasivo');
INSERT INTO `puc` VALUES (2825, 'Retenciones a terceros sobre contratos', 'pasivo');
INSERT INTO `puc` VALUES (282505, 'Cumplimiento obligaciones laborales', 'pasivo');
INSERT INTO `puc` VALUES (282510, 'Para estabilidad de obra', 'pasivo');
INSERT INTO `puc` VALUES (282515, 'Garantía cumplimiento de contratos', 'pasivo');
INSERT INTO `puc` VALUES (2830, 'Embargos judiciales', 'pasivo');
INSERT INTO `puc` VALUES (283005, 'Indemnizaciones', 'pasivo');
INSERT INTO `puc` VALUES (283010, 'Depósitos judiciales', 'pasivo');
INSERT INTO `puc` VALUES (2835, 'Acreedores del sistema', 'pasivo');
INSERT INTO `puc` VALUES (283505, 'Cuotas netas', 'pasivo');
INSERT INTO `puc` VALUES (283510, 'Grupos en formación', 'pasivo');
INSERT INTO `puc` VALUES (2840, 'Cuentas en participación', 'pasivo');
INSERT INTO `puc` VALUES (2895, 'Diversos', 'pasivo');
INSERT INTO `puc` VALUES (289505, 'Préstamos de productos', 'pasivo');
INSERT INTO `puc` VALUES (289510, 'Reembolso de costos exploratorios', 'pasivo');
INSERT INTO `puc` VALUES (289515, 'Programa de extensión agropecuaria', 'pasivo');
INSERT INTO `puc` VALUES (29, 'Bonos y papeles comerciales', 'pasivo');
INSERT INTO `puc` VALUES (2905, 'Bonos en circulación', 'pasivo');
INSERT INTO `puc` VALUES (2910, 'Bonos obligatoriamente convertibles en acciones', 'pasivo');
INSERT INTO `puc` VALUES (2915, 'Papeles comerciales', 'pasivo');
INSERT INTO `puc` VALUES (2920, 'Bonos pensionales', 'pasivo');
INSERT INTO `puc` VALUES (292005, 'Valor bonos pensionales', 'pasivo');
INSERT INTO `puc` VALUES (292010, 'Bonos pensionales por amortizar (DB)', 'pasivo');
INSERT INTO `puc` VALUES (292015, 'Intereses causados sobre bonos pensionales', 'pasivo');
INSERT INTO `puc` VALUES (2925, 'Títulos pensionales', 'pasivo');
INSERT INTO `puc` VALUES (292505, 'Valor títulos pensionales', 'pasivo');
INSERT INTO `puc` VALUES (292510, 'Títulos pensionales por amortizar (DB)', 'pasivo');
INSERT INTO `puc` VALUES (292515, 'Intereses causados sobre títulos pensionales', 'pasivo');
INSERT INTO `puc` VALUES (31, 'Capital social', 'patrimonio');
INSERT INTO `puc` VALUES (3105, 'Capital suscrito y pagado', 'patrimonio');
INSERT INTO `puc` VALUES (310505, 'Capital autorizado', 'patrimonio');
INSERT INTO `puc` VALUES (310510, 'Capital por suscribir (DB)', 'patrimonio');
INSERT INTO `puc` VALUES (310515, 'Capital suscrito por cobrar (DB)', 'patrimonio');
INSERT INTO `puc` VALUES (3115, 'Aportes sociales', 'patrimonio');
INSERT INTO `puc` VALUES (311505, 'Cuotas o partes de interés social', 'patrimonio');
INSERT INTO `puc` VALUES (311510, 'Aportes de socios-fondo mutuo de inversión', 'patrimonio');
INSERT INTO `puc` VALUES (311515, 'Contribución de la empresa-fondo mutuo de inversió', 'patrimonio');
INSERT INTO `puc` VALUES (311520, 'Suscripciones del público', 'patrimonio');
INSERT INTO `puc` VALUES (3120, 'Capital asignado', 'patrimonio');
INSERT INTO `puc` VALUES (3125, 'Inversión suplementaria al capital asignado', 'patrimonio');
INSERT INTO `puc` VALUES (3130, 'Capital de personas naturales', 'patrimonio');
INSERT INTO `puc` VALUES (3135, 'Aportes del Estado', 'patrimonio');
INSERT INTO `puc` VALUES (3140, 'Fondo social', 'patrimonio');
INSERT INTO `puc` VALUES (32, 'Superávit de capital', 'patrimonio');
INSERT INTO `puc` VALUES (3205, 'Prima en colocación de acciones, cuotas o partes d', 'patrimonio');
INSERT INTO `puc` VALUES (320505, 'Prima en colocación de acciones', 'patrimonio');
INSERT INTO `puc` VALUES (320510, 'Prima en colocación de acciones por cobrar (DB)', 'patrimonio');
INSERT INTO `puc` VALUES (320515, 'Prima en colocación de cuotas o partes de interés ', 'patrimonio');
INSERT INTO `puc` VALUES (3210, 'Donaciones', 'patrimonio');
INSERT INTO `puc` VALUES (321005, 'En dinero', 'patrimonio');
INSERT INTO `puc` VALUES (321010, 'En valores mobiliarios', 'patrimonio');
INSERT INTO `puc` VALUES (321015, 'En bienes muebles', 'patrimonio');
INSERT INTO `puc` VALUES (321020, 'En bienes inmuebles', 'patrimonio');
INSERT INTO `puc` VALUES (321025, 'En intangibles', 'patrimonio');
INSERT INTO `puc` VALUES (3215, 'Crédito mercantil', 'patrimonio');
INSERT INTO `puc` VALUES (3220, 'Know how', 'patrimonio');
INSERT INTO `puc` VALUES (3225, 'Superávit método de participación', 'patrimonio');
INSERT INTO `puc` VALUES (322505, 'De acciones', 'patrimonio');
INSERT INTO `puc` VALUES (322510, 'De cuotas o partes de interés social', 'patrimonio');
INSERT INTO `puc` VALUES (33, 'Reservas', 'patrimonio');
INSERT INTO `puc` VALUES (3305, 'Reservas obligatorias', 'patrimonio');
INSERT INTO `puc` VALUES (330505, 'Reserva legal', 'patrimonio');
INSERT INTO `puc` VALUES (330510, 'Reservas por disposiciones fiscales', 'patrimonio');
INSERT INTO `puc` VALUES (330515, 'Reserva para readquisición de acciones', 'patrimonio');
INSERT INTO `puc` VALUES (330516, 'Acciones propias readquiridas (DB)', 'patrimonio');
INSERT INTO `puc` VALUES (330517, 'Reserva para readquisición de cuotas o partes de i', 'patrimonio');
INSERT INTO `puc` VALUES (330518, 'Cuotas o partes de interés social propias readquir', 'patrimonio');
INSERT INTO `puc` VALUES (330520, 'Reserva para extensión agropecuaria', 'patrimonio');
INSERT INTO `puc` VALUES (330525, 'Reserva Ley 7ª de 1990', 'patrimonio');
INSERT INTO `puc` VALUES (330530, 'Reserva para reposición de semovientes', 'patrimonio');
INSERT INTO `puc` VALUES (330535, 'Reserva Ley 4ª de 1980', 'patrimonio');
INSERT INTO `puc` VALUES (330595, 'Otras', 'patrimonio');
INSERT INTO `puc` VALUES (3310, 'Reservas estatutarias', 'patrimonio');
INSERT INTO `puc` VALUES (331005, 'Para futuras capitalizaciones', 'patrimonio');
INSERT INTO `puc` VALUES (331010, 'Para reposición de activos', 'patrimonio');
INSERT INTO `puc` VALUES (331015, 'Para futuros ensanches', 'patrimonio');
INSERT INTO `puc` VALUES (331095, 'Otras', 'patrimonio');
INSERT INTO `puc` VALUES (3315, 'Reservas ocasionales', 'patrimonio');
INSERT INTO `puc` VALUES (331505, 'Para beneficencia y civismo', 'patrimonio');
INSERT INTO `puc` VALUES (331510, 'Para futuras capitalizaciones', 'patrimonio');
INSERT INTO `puc` VALUES (331515, 'Para futuros ensanches', 'patrimonio');
INSERT INTO `puc` VALUES (331520, 'Para adquisición o reposición de propiedades, plan', 'patrimonio');
INSERT INTO `puc` VALUES (331525, 'Para investigaciones y desarrollo', 'patrimonio');
INSERT INTO `puc` VALUES (331530, 'Para fomento económico', 'patrimonio');
INSERT INTO `puc` VALUES (331535, 'Para capital de trabajo', 'patrimonio');
INSERT INTO `puc` VALUES (331540, 'Para estabilización de rendimientos', 'patrimonio');
INSERT INTO `puc` VALUES (331545, 'A disposición del máximo órgano social', 'patrimonio');
INSERT INTO `puc` VALUES (331595, 'Otras', 'patrimonio');
INSERT INTO `puc` VALUES (34, 'Revalorización del patrimonio', 'patrimonio');
INSERT INTO `puc` VALUES (3405, 'Ajustes por inflación**', 'patrimonio');
INSERT INTO `puc` VALUES (340505, 'De capital social', 'patrimonio');
INSERT INTO `puc` VALUES (340510, 'De superávit de capital', 'patrimonio');
INSERT INTO `puc` VALUES (340515, 'De reservas', 'patrimonio');
INSERT INTO `puc` VALUES (340520, 'De resultados de ejercicios anteriores', 'patrimonio');
INSERT INTO `puc` VALUES (340525, 'De activos en período improductivo', 'patrimonio');
INSERT INTO `puc` VALUES (340530, 'De saneamiento fiscal', 'patrimonio');
INSERT INTO `puc` VALUES (340535, 'De ajustes Decreto 3019 de 1989', 'patrimonio');
INSERT INTO `puc` VALUES (340540, 'De dividendos y participaciones decretadas en acci', 'patrimonio');
INSERT INTO `puc` VALUES (340545, 'Superávit método de participación', 'patrimonio');
INSERT INTO `puc` VALUES (3410, 'Saneamiento fiscal', 'patrimonio');
INSERT INTO `puc` VALUES (3415, 'Ajustes por inflación Decreto 3019 de 1989', 'patrimonio');
INSERT INTO `puc` VALUES (35, 'Dividendos o participaciones decretados en accione', 'patrimonio');
INSERT INTO `puc` VALUES (3505, 'Dividendos decretados en acciones', 'patrimonio');
INSERT INTO `puc` VALUES (3510, 'Participaciones decretadas en cuotas o partes de i', 'patrimonio');
INSERT INTO `puc` VALUES (3605, 'Utilidad del ejercicio', 'patrimonio');
INSERT INTO `puc` VALUES (3610, 'Pérdida del ejercicio', 'patrimonio');
INSERT INTO `puc` VALUES (3705, 'Utilidades acumuladas', 'patrimonio');
INSERT INTO `puc` VALUES (3710, 'Pérdidas acumuladas', 'patrimonio');
INSERT INTO `puc` VALUES (38, 'Superávit por valorizaciones', 'patrimonio');
INSERT INTO `puc` VALUES (3805, 'De inversiones', 'patrimonio');
INSERT INTO `puc` VALUES (380505, 'Acciones', 'patrimonio');
INSERT INTO `puc` VALUES (380510, 'Cuotas o partes de interés social', 'patrimonio');
INSERT INTO `puc` VALUES (380515, 'Derechos fiduciarios', 'patrimonio');
INSERT INTO `puc` VALUES (3810, 'De propiedades, planta y equipo', 'patrimonio');
INSERT INTO `puc` VALUES (381004, 'Terrenos', 'patrimonio');
INSERT INTO `puc` VALUES (381006, 'Materiales proyectos petroleros', 'patrimonio');
INSERT INTO `puc` VALUES (381008, 'Construcciones y edificaciones', 'patrimonio');
INSERT INTO `puc` VALUES (381012, 'Maquinaria y equipo', 'patrimonio');
INSERT INTO `puc` VALUES (381016, 'Equipo de oficina', 'patrimonio');
INSERT INTO `puc` VALUES (381020, 'Equipo de computación y comunicación', 'patrimonio');
INSERT INTO `puc` VALUES (381024, 'Equipo médico-científico', 'patrimonio');
INSERT INTO `puc` VALUES (381028, 'Equipo de hoteles y restaurantes', 'patrimonio');
INSERT INTO `puc` VALUES (381032, 'Flota y equipo de transporte', 'patrimonio');
INSERT INTO `puc` VALUES (381036, 'Flota y equipo fluvial y/o marítimo', 'patrimonio');
INSERT INTO `puc` VALUES (381040, 'Flota y equipo aéreo', 'patrimonio');
INSERT INTO `puc` VALUES (381044, 'Flota y equipo férreo', 'patrimonio');
INSERT INTO `puc` VALUES (381048, 'Acueductos, plantas y redes', 'patrimonio');
INSERT INTO `puc` VALUES (381052, 'Armamento de vigilancia', 'patrimonio');
INSERT INTO `puc` VALUES (381056, 'Envases y empaques', 'patrimonio');
INSERT INTO `puc` VALUES (381060, 'Plantaciones agrícolas y forestales', 'patrimonio');
INSERT INTO `puc` VALUES (381064, 'Vías de comunicación', 'patrimonio');
INSERT INTO `puc` VALUES (381068, 'Minas y canteras', 'patrimonio');
INSERT INTO `puc` VALUES (381072, 'Pozos artesianos', 'patrimonio');
INSERT INTO `puc` VALUES (381076, 'Yacimientos', 'patrimonio');
INSERT INTO `puc` VALUES (381080, 'Semovientes', 'patrimonio');
INSERT INTO `puc` VALUES (3895, 'De otros activos', 'patrimonio');
INSERT INTO `puc` VALUES (389505, 'Bienes de arte y cultura', 'patrimonio');
INSERT INTO `puc` VALUES (389510, 'Bienes entregados en comodato', 'patrimonio');
INSERT INTO `puc` VALUES (389515, 'Bienes recibidos en pago', 'patrimonio');
INSERT INTO `puc` VALUES (389520, 'Inventario de semovientes', 'patrimonio');
INSERT INTO `puc` VALUES (41, 'Operacionales', 'ingresos');
INSERT INTO `puc` VALUES (4105, 'Agricultura, ganadería, caza y silvicultura', 'ingresos');
INSERT INTO `puc` VALUES (410505, 'Cultivo de cereales', 'ingresos');
INSERT INTO `puc` VALUES (410510, 'Cultivos de hortalizas, legumbres y plantas orname', 'ingresos');
INSERT INTO `puc` VALUES (410515, 'Cultivos de frutas, nueces y plantas aromáticas', 'ingresos');
INSERT INTO `puc` VALUES (410520, 'Cultivo de café', 'ingresos');
INSERT INTO `puc` VALUES (410525, 'Cultivo de flores', 'ingresos');
INSERT INTO `puc` VALUES (410530, 'Cultivo de caña de azúcar', 'ingresos');
INSERT INTO `puc` VALUES (410535, 'Cultivo de algodón y plantas para material textil', 'ingresos');
INSERT INTO `puc` VALUES (410540, 'Cultivo de banano', 'ingresos');
INSERT INTO `puc` VALUES (410545, 'Otros cultivos agrícolas', 'ingresos');
INSERT INTO `puc` VALUES (410550, 'Cría de ovejas, cabras, asnos, mulas y burdéganos', 'ingresos');
INSERT INTO `puc` VALUES (410555, 'Cría de ganado caballar y vacuno', 'ingresos');
INSERT INTO `puc` VALUES (410560, 'Producción avícola', 'ingresos');
INSERT INTO `puc` VALUES (410565, 'Cría de otros animales', 'ingresos');
INSERT INTO `puc` VALUES (410570, 'Servicios agrícolas y ganaderos', 'ingresos');
INSERT INTO `puc` VALUES (410575, 'Actividad de caza', 'ingresos');
INSERT INTO `puc` VALUES (410580, 'Actividad de silvicultura', 'ingresos');
INSERT INTO `puc` VALUES (410595, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4110, 'Pesca', 'ingresos');
INSERT INTO `puc` VALUES (411005, 'Actividad de pesca', 'ingresos');
INSERT INTO `puc` VALUES (411010, 'Explotación de criaderos de peces', 'ingresos');
INSERT INTO `puc` VALUES (411095, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4115, 'Explotación de minas y canteras', 'ingresos');
INSERT INTO `puc` VALUES (411505, 'Carbón', 'ingresos');
INSERT INTO `puc` VALUES (411510, 'Petróleo crudo', 'ingresos');
INSERT INTO `puc` VALUES (411512, 'Gas natural', 'ingresos');
INSERT INTO `puc` VALUES (411514, 'Servicios relacionados con extracción de petróleo ', 'ingresos');
INSERT INTO `puc` VALUES (411515, 'Minerales de hierro', 'ingresos');
INSERT INTO `puc` VALUES (411520, 'Minerales metalíferos no ferrosos', 'ingresos');
INSERT INTO `puc` VALUES (411525, 'Piedra, arena y arcilla', 'ingresos');
INSERT INTO `puc` VALUES (411527, 'Piedras preciosas', 'ingresos');
INSERT INTO `puc` VALUES (411528, 'Oro', 'ingresos');
INSERT INTO `puc` VALUES (411530, 'Otras minas y canteras', 'ingresos');
INSERT INTO `puc` VALUES (411532, 'Prestación de servicios sector minero', 'ingresos');
INSERT INTO `puc` VALUES (411595, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4120, 'Industrias manufactureras', 'ingresos');
INSERT INTO `puc` VALUES (412001, 'Producción y procesamiento de carnes y productos c', 'ingresos');
INSERT INTO `puc` VALUES (412002, 'Productos de pescado', 'ingresos');
INSERT INTO `puc` VALUES (412003, 'Productos de frutas, legumbres y hortalizas', 'ingresos');
INSERT INTO `puc` VALUES (412004, 'Elaboración de aceites y grasas', 'ingresos');
INSERT INTO `puc` VALUES (412005, 'Elaboración de productos lácteos', 'ingresos');
INSERT INTO `puc` VALUES (412006, 'Elaboración de productos de molinería', 'ingresos');
INSERT INTO `puc` VALUES (412007, 'Elaboración de almidones y derivados', 'ingresos');
INSERT INTO `puc` VALUES (412008, 'Elaboración de alimentos para animales', 'ingresos');
INSERT INTO `puc` VALUES (412009, 'Elaboración de productos para panadería', 'ingresos');
INSERT INTO `puc` VALUES (412010, 'Elaboración de azúcar y melazas', 'ingresos');
INSERT INTO `puc` VALUES (412011, 'Elaboración de cacao, chocolate y confitería', 'ingresos');
INSERT INTO `puc` VALUES (412012, 'Elaboración de pastas y productos farináceos', 'ingresos');
INSERT INTO `puc` VALUES (412013, 'Elaboración de productos de café', 'ingresos');
INSERT INTO `puc` VALUES (412014, 'Elaboración de otros productos alimenticios', 'ingresos');
INSERT INTO `puc` VALUES (412015, 'Elaboración de bebidas alcohólicas y alcohol etíli', 'ingresos');
INSERT INTO `puc` VALUES (412016, 'Elaboración de vinos', 'ingresos');
INSERT INTO `puc` VALUES (412017, 'Elaboración de bebidas malteadas y de malta', 'ingresos');
INSERT INTO `puc` VALUES (412018, 'Elaboración de bebidas no alcohólicas', 'ingresos');
INSERT INTO `puc` VALUES (412019, 'Elaboración de productos de tabaco', 'ingresos');
INSERT INTO `puc` VALUES (412020, 'Preparación e hilatura de fibras textiles y tejedu', 'ingresos');
INSERT INTO `puc` VALUES (412021, 'Acabado de productos textiles', 'ingresos');
INSERT INTO `puc` VALUES (412022, 'Elaboración de artículos de materiales textiles', 'ingresos');
INSERT INTO `puc` VALUES (412023, 'Elaboración de tapices y alfombras', 'ingresos');
INSERT INTO `puc` VALUES (412024, 'Elaboración de cuerdas, cordeles, bramantes y rede', 'ingresos');
INSERT INTO `puc` VALUES (412025, 'Elaboración de otros productos textiles', 'ingresos');
INSERT INTO `puc` VALUES (412026, 'Elaboración de tejidos', 'ingresos');
INSERT INTO `puc` VALUES (412027, 'Elaboración de prendas de vestir', 'ingresos');
INSERT INTO `puc` VALUES (412028, 'Preparación, adobo y teñido de pieles', 'ingresos');
INSERT INTO `puc` VALUES (412029, 'Curtido, adobo o preparación de cuero', 'ingresos');
INSERT INTO `puc` VALUES (412030, 'Elaboración de maletas, bolsos y similares', 'ingresos');
INSERT INTO `puc` VALUES (412031, 'Elaboración de calzado', 'ingresos');
INSERT INTO `puc` VALUES (412032, 'Producción de madera, artículos de madera y corcho', 'ingresos');
INSERT INTO `puc` VALUES (412033, 'Elaboración de pasta y productos de madera, papel ', 'ingresos');
INSERT INTO `puc` VALUES (412034, 'Ediciones y publicaciones', 'ingresos');
INSERT INTO `puc` VALUES (412035, 'Impresión', 'ingresos');
INSERT INTO `puc` VALUES (412036, 'Servicios relacionados con la edición y la impresi', 'ingresos');
INSERT INTO `puc` VALUES (412037, 'Reproducción de grabaciones', 'ingresos');
INSERT INTO `puc` VALUES (412038, 'Elaboración de productos de horno de coque', 'ingresos');
INSERT INTO `puc` VALUES (412039, 'Elaboración de productos de la refinación de petró', 'ingresos');
INSERT INTO `puc` VALUES (412040, 'Elaboración de sustancias químicas básicas', 'ingresos');
INSERT INTO `puc` VALUES (412041, 'Elaboración de abonos y compuestos de nitrógeno', 'ingresos');
INSERT INTO `puc` VALUES (412042, 'Elaboración de plástico y caucho sintético', 'ingresos');
INSERT INTO `puc` VALUES (412043, 'Elaboración de productos químicos de uso agropecua', 'ingresos');
INSERT INTO `puc` VALUES (412044, 'Elaboración de pinturas, tintas y masillas', 'ingresos');
INSERT INTO `puc` VALUES (412045, 'Elaboración de productos farmacéuticos y botánicos', 'ingresos');
INSERT INTO `puc` VALUES (412046, 'Elaboración de jabones, detergentes y preparados d', 'ingresos');
INSERT INTO `puc` VALUES (412047, 'Elaboración de otros productos químicos', 'ingresos');
INSERT INTO `puc` VALUES (412048, 'Elaboración de fibras', 'ingresos');
INSERT INTO `puc` VALUES (412049, 'Elaboración  de otros productos de caucho', 'ingresos');
INSERT INTO `puc` VALUES (412050, 'Elaboración  de productos de plástico', 'ingresos');
INSERT INTO `puc` VALUES (412051, 'Elaboración  de vidrio y productos de vidrio', 'ingresos');
INSERT INTO `puc` VALUES (412052, 'Elaboración  de productos de cerámica, loza, piedr', 'ingresos');
INSERT INTO `puc` VALUES (412053, 'Elaboración  de cemento, cal y yeso', 'ingresos');
INSERT INTO `puc` VALUES (412054, 'Elaboración  de artículos de hormigón, cemento y y', 'ingresos');
INSERT INTO `puc` VALUES (412055, 'Corte, tallado y acabado de la piedra', 'ingresos');
INSERT INTO `puc` VALUES (412056, 'Elaboración de otros productos minerales no metáli', 'ingresos');
INSERT INTO `puc` VALUES (412057, 'Industrias básicas y fundición de hierro y acero', 'ingresos');
INSERT INTO `puc` VALUES (412058, 'Productos primarios de metales preciosos y de meta', 'ingresos');
INSERT INTO `puc` VALUES (412059, 'Fundición de metales no ferrosos', 'ingresos');
INSERT INTO `puc` VALUES (412060, 'Fabricación de productos metálicos para uso estruc', 'ingresos');
INSERT INTO `puc` VALUES (412061, 'Forja, prensado, estampado, laminado de metal y pu', 'ingresos');
INSERT INTO `puc` VALUES (412062, 'Revestimiento de metales y obras de ingeniería mec', 'ingresos');
INSERT INTO `puc` VALUES (412063, 'Fabricación de artículos de ferretería', 'ingresos');
INSERT INTO `puc` VALUES (412064, 'Elaboración de otros productos de metal', 'ingresos');
INSERT INTO `puc` VALUES (412065, 'Fabricación de maquinaria y equipo', 'ingresos');
INSERT INTO `puc` VALUES (412066, 'Fabricación de equipos de elevación y manipulación', 'ingresos');
INSERT INTO `puc` VALUES (412067, 'Elaboración de aparatos de uso doméstico', 'ingresos');
INSERT INTO `puc` VALUES (412068, 'Elaboración de equipo de oficina', 'ingresos');
INSERT INTO `puc` VALUES (412069, 'Elaboración de pilas y baterías primarias', 'ingresos');
INSERT INTO `puc` VALUES (412070, 'Elaboración de equipo de iluminación', 'ingresos');
INSERT INTO `puc` VALUES (412071, 'Elaboración de otros tipos de equipo eléctrico', 'ingresos');
INSERT INTO `puc` VALUES (412072, 'Fabricación de equipos de radio, televisión y comu', 'ingresos');
INSERT INTO `puc` VALUES (412073, 'Fabricación de aparatos e instrumentos médicos', 'ingresos');
INSERT INTO `puc` VALUES (412074, 'Fabricación de instrumentos de medición y control', 'ingresos');
INSERT INTO `puc` VALUES (412075, 'Fabricación de instrumentos de óptica y equipo fot', 'ingresos');
INSERT INTO `puc` VALUES (412076, 'Fabricación de relojes', 'ingresos');
INSERT INTO `puc` VALUES (412077, 'Fabricación de vehículos automotores', 'ingresos');
INSERT INTO `puc` VALUES (412078, 'Fabricación de carrocerías para automotores', 'ingresos');
INSERT INTO `puc` VALUES (412079, 'Fabricación de partes piezas y accesorios para aut', 'ingresos');
INSERT INTO `puc` VALUES (412080, 'Fabricación y reparación de buques y otras embarca', 'ingresos');
INSERT INTO `puc` VALUES (412081, 'Fabricación de locomotoras y material rodante para', 'ingresos');
INSERT INTO `puc` VALUES (412082, 'Fabricación de aeronaves', 'ingresos');
INSERT INTO `puc` VALUES (412083, 'Fabricación de motocicletas', 'ingresos');
INSERT INTO `puc` VALUES (412084, 'Fabricación de bicicletas y sillas de ruedas', 'ingresos');
INSERT INTO `puc` VALUES (412085, 'Fabricación de otros tipos de transporte', 'ingresos');
INSERT INTO `puc` VALUES (412086, 'Fabricación de muebles', 'ingresos');
INSERT INTO `puc` VALUES (412087, 'Fabricación de joyas y artículos conexos', 'ingresos');
INSERT INTO `puc` VALUES (412088, 'Fabricación de instrumentos de música', 'ingresos');
INSERT INTO `puc` VALUES (412089, 'Fabricación de artículos y equipo para deporte', 'ingresos');
INSERT INTO `puc` VALUES (412090, 'Fabricación de juegos y juguetes', 'ingresos');
INSERT INTO `puc` VALUES (412091, 'Reciclamiento de desperdicios', 'ingresos');
INSERT INTO `puc` VALUES (412095, 'Productos de otras industrias manufactureras', 'ingresos');
INSERT INTO `puc` VALUES (4125, 'Suministro de electricidad, gas y agua', 'ingresos');
INSERT INTO `puc` VALUES (412505, 'Generación, captación y distribución de energía el', 'ingresos');
INSERT INTO `puc` VALUES (412510, 'Fabricación de gas y distribución de combustibles ', 'ingresos');
INSERT INTO `puc` VALUES (412515, 'Captación, depuración y distribución de agua ', 'ingresos');
INSERT INTO `puc` VALUES (412595, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4130, 'Construcción', 'ingresos');
INSERT INTO `puc` VALUES (413005, 'Preparación de terrenos', 'ingresos');
INSERT INTO `puc` VALUES (413010, 'Construcción de edificios y obras de ingeniería ci', 'ingresos');
INSERT INTO `puc` VALUES (413015, 'Acondicionamiento de edificios', 'ingresos');
INSERT INTO `puc` VALUES (413020, 'Terminación de edificaciones', 'ingresos');
INSERT INTO `puc` VALUES (413025, 'Alquiler de equipo con operarios', 'ingresos');
INSERT INTO `puc` VALUES (413095, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4135, 'Comercio al por mayor y al por menor', 'ingresos');
INSERT INTO `puc` VALUES (413502, 'Venta de vehículos automotores', 'ingresos');
INSERT INTO `puc` VALUES (413504, 'Mantenimiento, reparación y lavado de vehículos au', 'ingresos');
INSERT INTO `puc` VALUES (413506, 'Venta de partes, piezas y accesorios de vehículos ', 'ingresos');
INSERT INTO `puc` VALUES (413508, 'Venta de combustibles sólidos, líquidos, gaseosos', 'ingresos');
INSERT INTO `puc` VALUES (413510, 'Venta de lubricantes, aditivos, llantas y lujos pa', 'ingresos');
INSERT INTO `puc` VALUES (413512, 'Venta a cambio de retribución o por contrata', 'ingresos');
INSERT INTO `puc` VALUES (413514, 'Venta de insumos, materias primas agropecuarias y ', 'ingresos');
INSERT INTO `puc` VALUES (413516, 'Venta de otros insumos y materias primas no agrope', 'ingresos');
INSERT INTO `puc` VALUES (413518, 'Venta de animales vivos y cueros', 'ingresos');
INSERT INTO `puc` VALUES (413520, 'Venta de productos en almacenes no especializados', 'ingresos');
INSERT INTO `puc` VALUES (413522, 'Venta de productos agropecuarios', 'ingresos');
INSERT INTO `puc` VALUES (413524, 'Venta de productos textiles, de vestir, de cuero y', 'ingresos');
INSERT INTO `puc` VALUES (413526, 'Venta de papel y cartón', 'ingresos');
INSERT INTO `puc` VALUES (413528, 'Venta de libros, revistas, elementos de papelería,', 'ingresos');
INSERT INTO `puc` VALUES (413530, 'Venta de juegos, juguetes y artículos deportivos', 'ingresos');
INSERT INTO `puc` VALUES (413532, 'Venta de instrumentos quirúrgicos y ortopédicos', 'ingresos');
INSERT INTO `puc` VALUES (413534, 'Venta de artículos en relojerías y joyerías', 'ingresos');
INSERT INTO `puc` VALUES (413536, 'Venta de electrodomésticos y muebles', 'ingresos');
INSERT INTO `puc` VALUES (413538, 'Venta de productos de aseo, farmacéuticos, medicin', 'ingresos');
INSERT INTO `puc` VALUES (413540, 'Venta de cubiertos, vajillas, cristalería, porcela', 'ingresos');
INSERT INTO `puc` VALUES (413542, 'Venta de materiales de construcción, fontanería y ', 'ingresos');
INSERT INTO `puc` VALUES (413544, 'Venta de pinturas y lacas', 'ingresos');
INSERT INTO `puc` VALUES (413546, 'Venta de productos de vidrios y marquetería', 'ingresos');
INSERT INTO `puc` VALUES (413548, 'Venta de herramientas y artículos de ferretería', 'ingresos');
INSERT INTO `puc` VALUES (413550, 'Venta de químicos', 'ingresos');
INSERT INTO `puc` VALUES (413552, 'Venta de productos intermedios, desperdicios y des', 'ingresos');
INSERT INTO `puc` VALUES (413554, 'Venta de maquinaria, equipo de oficina y programas', 'ingresos');
INSERT INTO `puc` VALUES (413556, 'Venta de artículos en cacharrerías y misceláneas', 'ingresos');
INSERT INTO `puc` VALUES (413558, 'Venta de instrumentos musicales', 'ingresos');
INSERT INTO `puc` VALUES (413560, 'Venta de artículos en casas de empeño y prenderías', 'ingresos');
INSERT INTO `puc` VALUES (413562, 'Venta de equipo fotográfico', 'ingresos');
INSERT INTO `puc` VALUES (413564, 'Venta de equipo óptico y de precisión', 'ingresos');
INSERT INTO `puc` VALUES (413566, 'Venta de empaques', 'ingresos');
INSERT INTO `puc` VALUES (413568, 'Venta de equipo profesional y científico', 'ingresos');
INSERT INTO `puc` VALUES (413570, 'Venta de loterías, rifas, chance, apuestas y simil', 'ingresos');
INSERT INTO `puc` VALUES (413572, 'Reparación de efectos personales y electrodoméstic', 'ingresos');
INSERT INTO `puc` VALUES (413595, 'Venta de otros productos', 'ingresos');
INSERT INTO `puc` VALUES (4140, 'Hoteles y restaurantes', 'ingresos');
INSERT INTO `puc` VALUES (414005, 'Hotelería', 'ingresos');
INSERT INTO `puc` VALUES (414010, 'Campamento y otros tipos de hospedaje', 'ingresos');
INSERT INTO `puc` VALUES (414015, 'Restaurantes', 'ingresos');
INSERT INTO `puc` VALUES (414020, 'Bares y cantinas', 'ingresos');
INSERT INTO `puc` VALUES (414095, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4145, 'Transporte, almacenamiento y comunicaciones', 'ingresos');
INSERT INTO `puc` VALUES (414505, 'Servicio de transporte por carretera', 'ingresos');
INSERT INTO `puc` VALUES (414510, 'Servicio de transporte por vía férrea ', 'ingresos');
INSERT INTO `puc` VALUES (414515, 'Servicio de transporte por vía acuática', 'ingresos');
INSERT INTO `puc` VALUES (414520, 'Servicio de transporte por vía aérea', 'ingresos');
INSERT INTO `puc` VALUES (414525, 'Servicio de transporte por tuberías', 'ingresos');
INSERT INTO `puc` VALUES (414530, 'Manipulación de carga', 'ingresos');
INSERT INTO `puc` VALUES (414535, 'Almacenamiento y depósito', 'ingresos');
INSERT INTO `puc` VALUES (414540, 'Servicios complementarios para el transporte', 'ingresos');
INSERT INTO `puc` VALUES (414545, 'Agencias de viaje', 'ingresos');
INSERT INTO `puc` VALUES (414550, 'Otras agencias de transporte', 'ingresos');
INSERT INTO `puc` VALUES (414555, 'Servicio postal y de correo', 'ingresos');
INSERT INTO `puc` VALUES (414560, 'Servicio telefónico', 'ingresos');
INSERT INTO `puc` VALUES (414565, 'Servicio de telégrafo', 'ingresos');
INSERT INTO `puc` VALUES (414570, 'Servicio de transmisión de datos', 'ingresos');
INSERT INTO `puc` VALUES (414575, 'Servicio de radio y televisión por cable', 'ingresos');
INSERT INTO `puc` VALUES (414580, 'Transmisión de sonido e imágenes por contrato', 'ingresos');
INSERT INTO `puc` VALUES (414595, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4150, 'Actividad financiera', 'ingresos');
INSERT INTO `puc` VALUES (415005, 'Venta de inversiones', 'ingresos');
INSERT INTO `puc` VALUES (415010, 'Dividendos de sociedades anónimas y/o asimiladas', 'ingresos');
INSERT INTO `puc` VALUES (415015, 'Participaciones de sociedades limitadas y/o asimil', 'ingresos');
INSERT INTO `puc` VALUES (415020, 'Intereses', 'ingresos');
INSERT INTO `puc` VALUES (415025, 'Reajuste monetario-UPAC (hoy UVR)', 'ingresos');
INSERT INTO `puc` VALUES (415030, 'Comisiones', 'ingresos');
INSERT INTO `puc` VALUES (415035, 'Operaciones de descuento', 'ingresos');
INSERT INTO `puc` VALUES (415040, 'Cuotas de inscripción-consorcios', 'ingresos');
INSERT INTO `puc` VALUES (415045, 'Cuotas de administración-consorcios', 'ingresos');
INSERT INTO `puc` VALUES (415050, 'Reajuste del sistema-consorcios', 'ingresos');
INSERT INTO `puc` VALUES (415055, 'Eliminación de suscriptores-consorcios', 'ingresos');
INSERT INTO `puc` VALUES (415060, 'Cuotas de ingreso o retiro-sociedad administradora', 'ingresos');
INSERT INTO `puc` VALUES (415065, 'Servicios a comisionistas', 'ingresos');
INSERT INTO `puc` VALUES (415070, 'Inscripciones y cuotas', 'ingresos');
INSERT INTO `puc` VALUES (415075, 'Recuperación de garantías', 'ingresos');
INSERT INTO `puc` VALUES (415080, 'Ingresos método de participación', 'ingresos');
INSERT INTO `puc` VALUES (415095, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4155, 'Actividades inmobiliarias, empresariales y de alqu', 'ingresos');
INSERT INTO `puc` VALUES (415505, 'Arrendamientos de bienes inmuebles', 'ingresos');
INSERT INTO `puc` VALUES (415510, 'Inmobiliarias por retribución o contrata', 'ingresos');
INSERT INTO `puc` VALUES (415515, 'Alquiler equipo de transporte', 'ingresos');
INSERT INTO `puc` VALUES (415520, 'Alquiler maquinaria y equipo', 'ingresos');
INSERT INTO `puc` VALUES (415525, 'Alquiler de efectos personales y enseres doméstico', 'ingresos');
INSERT INTO `puc` VALUES (415530, 'Consultoría en equipo y programas de informática', 'ingresos');
INSERT INTO `puc` VALUES (415535, 'Procesamiento de datos', 'ingresos');
INSERT INTO `puc` VALUES (415540, 'Mantenimiento y reparación de maquinaria de oficin', 'ingresos');
INSERT INTO `puc` VALUES (415545, 'Investigaciones científicas y de desarrollo', 'ingresos');
INSERT INTO `puc` VALUES (415550, 'Actividades empresariales de consultoría', 'ingresos');
INSERT INTO `puc` VALUES (415555, 'Publicidad', 'ingresos');
INSERT INTO `puc` VALUES (415560, 'Dotación de personal', 'ingresos');
INSERT INTO `puc` VALUES (415565, 'Investigación y seguridad', 'ingresos');
INSERT INTO `puc` VALUES (415570, 'Limpieza de inmuebles', 'ingresos');
INSERT INTO `puc` VALUES (415575, 'Fotografía', 'ingresos');
INSERT INTO `puc` VALUES (415580, 'Envase y empaque', 'ingresos');
INSERT INTO `puc` VALUES (415585, 'Fotocopiado', 'ingresos');
INSERT INTO `puc` VALUES (415590, 'Mantenimiento y reparación de maquinaria y equipo', 'ingresos');
INSERT INTO `puc` VALUES (415595, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4160, 'Enseñanza', 'ingresos');
INSERT INTO `puc` VALUES (416005, 'Actividades relacionadas con la educación', 'ingresos');
INSERT INTO `puc` VALUES (416095, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4165, 'Servicios sociales y de salud', 'ingresos');
INSERT INTO `puc` VALUES (416505, 'Servicio hospitalario', 'ingresos');
INSERT INTO `puc` VALUES (416510, 'Servicio médico', 'ingresos');
INSERT INTO `puc` VALUES (416515, 'Servicio odontológico', 'ingresos');
INSERT INTO `puc` VALUES (416520, 'Servicio de laboratorio', 'ingresos');
INSERT INTO `puc` VALUES (416525, 'Actividades veterinarias', 'ingresos');
INSERT INTO `puc` VALUES (416530, 'Actividades de servicios sociales', 'ingresos');
INSERT INTO `puc` VALUES (416595, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4170, 'Otras actividades de servicios comunitarios, socia', 'ingresos');
INSERT INTO `puc` VALUES (417005, 'Eliminación de desperdicios y aguas residuales', 'ingresos');
INSERT INTO `puc` VALUES (417010, 'Actividades de asociación', 'ingresos');
INSERT INTO `puc` VALUES (417015, 'Producción y distribución de filmes y videocintas', 'ingresos');
INSERT INTO `puc` VALUES (417020, 'Exhibición de filmes y videocintas', 'ingresos');
INSERT INTO `puc` VALUES (417025, 'Actividad de radio y televisión', 'ingresos');
INSERT INTO `puc` VALUES (417030, 'Actividad teatral, musical y artística', 'ingresos');
INSERT INTO `puc` VALUES (417035, 'Grabación y producción de discos', 'ingresos');
INSERT INTO `puc` VALUES (417040, 'Entretenimiento y esparcimiento', 'ingresos');
INSERT INTO `puc` VALUES (417045, 'Agencias de noticias', 'ingresos');
INSERT INTO `puc` VALUES (417050, 'Lavanderías y similares', 'ingresos');
INSERT INTO `puc` VALUES (417055, 'Peluquerías y similares', 'ingresos');
INSERT INTO `puc` VALUES (417060, 'Servicios funerarios', 'ingresos');
INSERT INTO `puc` VALUES (417065, 'Zonas francas', 'ingresos');
INSERT INTO `puc` VALUES (417095, 'Actividades conexas', 'ingresos');
INSERT INTO `puc` VALUES (4175, 'Devoluciones  en ventas (DB)', 'ingresos');
INSERT INTO `puc` VALUES (42, 'No operacionales', 'ingresos');
INSERT INTO `puc` VALUES (4205, 'Otras ventas ', 'ingresos');
INSERT INTO `puc` VALUES (420505, 'Materia prima', 'ingresos');
INSERT INTO `puc` VALUES (420510, 'Material de desecho', 'ingresos');
INSERT INTO `puc` VALUES (420515, 'Materiales varios', 'ingresos');
INSERT INTO `puc` VALUES (420520, 'Productos de diversificación', 'ingresos');
INSERT INTO `puc` VALUES (420525, 'Excedentes de exportación', 'ingresos');
INSERT INTO `puc` VALUES (420530, 'Envases y empaques', 'ingresos');
INSERT INTO `puc` VALUES (420535, 'Productos agrícolas', 'ingresos');
INSERT INTO `puc` VALUES (420540, 'De propaganda', 'ingresos');
INSERT INTO `puc` VALUES (420545, 'Productos en remate', 'ingresos');
INSERT INTO `puc` VALUES (420550, 'Combustibles y lubricantes', 'ingresos');
INSERT INTO `puc` VALUES (4210, 'Financieros', 'ingresos');
INSERT INTO `puc` VALUES (421005, 'Intereses', 'ingresos');
INSERT INTO `puc` VALUES (421010, 'Reajuste monetario-UPAC (hoy UVR)', 'ingresos');
INSERT INTO `puc` VALUES (421015, 'Descuentos amortizados', 'ingresos');
INSERT INTO `puc` VALUES (421020, 'Diferencia en cambio', 'ingresos');
INSERT INTO `puc` VALUES (421025, 'Financiación vehículos', 'ingresos');
INSERT INTO `puc` VALUES (421030, 'Financiación sistemas de viajes', 'ingresos');
INSERT INTO `puc` VALUES (421035, 'Aceptaciones bancarias', 'ingresos');
INSERT INTO `puc` VALUES (421040, 'Descuentos comerciales condicionados', 'ingresos');
INSERT INTO `puc` VALUES (421045, 'Descuentos bancarios', 'ingresos');
INSERT INTO `puc` VALUES (421050, 'Comisiones cheques de otras plazas', 'ingresos');
INSERT INTO `puc` VALUES (421055, 'Multas y recargos', 'ingresos');
INSERT INTO `puc` VALUES (421060, 'Sanciones cheques devueltos', 'ingresos');
INSERT INTO `puc` VALUES (421095, 'Otros', 'ingresos');
INSERT INTO `puc` VALUES (4215, 'Dividendos y participaciones', 'ingresos');
INSERT INTO `puc` VALUES (421505, 'De sociedades anónimas y/o asimiladas', 'ingresos');
INSERT INTO `puc` VALUES (421510, 'De sociedades limitadas y/o asimiladas', 'ingresos');
INSERT INTO `puc` VALUES (4218, 'Ingresos método de participación', 'ingresos');
INSERT INTO `puc` VALUES (421805, 'De sociedades anónimas y/o asimiladas', 'ingresos');
INSERT INTO `puc` VALUES (421810, 'De sociedades limitadas y/o asimiladas', 'ingresos');
INSERT INTO `puc` VALUES (4220, 'Arrendamientos', 'ingresos');
INSERT INTO `puc` VALUES (422005, 'Terrenos', 'ingresos');
INSERT INTO `puc` VALUES (422010, 'Construcciones y edificios', 'ingresos');
INSERT INTO `puc` VALUES (422015, 'Maquinaria y equipo', 'ingresos');
INSERT INTO `puc` VALUES (422020, 'Equipo de oficina', 'ingresos');
INSERT INTO `puc` VALUES (422025, 'Equipo de computación y comunicación', 'ingresos');
INSERT INTO `puc` VALUES (422030, 'Equipo médico-científico', 'ingresos');
INSERT INTO `puc` VALUES (422035, 'Equipo de hoteles y restaurantes', 'ingresos');
INSERT INTO `puc` VALUES (422040, 'Flota y equipo de transporte', 'ingresos');
INSERT INTO `puc` VALUES (422045, 'Flota y equipo fluvial y/o marítimo', 'ingresos');
INSERT INTO `puc` VALUES (422050, 'Flota y equipo aéreo', 'ingresos');
INSERT INTO `puc` VALUES (422055, 'Flota y equipo férreo', 'ingresos');
INSERT INTO `puc` VALUES (422060, 'Acueductos, plantas y redes', 'ingresos');
INSERT INTO `puc` VALUES (422062, 'Envases y empaques', 'ingresos');
INSERT INTO `puc` VALUES (422065, 'Plantaciones agrícolas y forestales', 'ingresos');
INSERT INTO `puc` VALUES (422070, 'Aeródromos', 'ingresos');
INSERT INTO `puc` VALUES (422075, 'Semovientes', 'ingresos');
INSERT INTO `puc` VALUES (4225, 'Comisiones', 'ingresos');
INSERT INTO `puc` VALUES (422505, 'Sobre inversiones', 'ingresos');
INSERT INTO `puc` VALUES (422510, 'De concesionarios', 'ingresos');
INSERT INTO `puc` VALUES (422515, 'De actividades financieras', 'ingresos');
INSERT INTO `puc` VALUES (422520, 'Por venta de servicios de taller', 'ingresos');
INSERT INTO `puc` VALUES (422525, 'Por venta de seguros', 'ingresos');
INSERT INTO `puc` VALUES (422530, 'Por ingresos para terceros', 'ingresos');
INSERT INTO `puc` VALUES (422535, 'Por distribución de películas', 'ingresos');
INSERT INTO `puc` VALUES (422540, 'Derechos de autor', 'ingresos');
INSERT INTO `puc` VALUES (422545, 'Derechos de programación', 'ingresos');
INSERT INTO `puc` VALUES (4230, 'Honorarios', 'ingresos');
INSERT INTO `puc` VALUES (423005, 'Asesorías', 'ingresos');
INSERT INTO `puc` VALUES (423010, 'Asistencia técnica', 'ingresos');
INSERT INTO `puc` VALUES (423015, 'Administración de vinculadas', 'ingresos');
INSERT INTO `puc` VALUES (4235, 'Servicios', 'ingresos');
INSERT INTO `puc` VALUES (423505, 'De báscula', 'ingresos');
INSERT INTO `puc` VALUES (423510, 'De transporte', 'ingresos');
INSERT INTO `puc` VALUES (423515, 'De prensa', 'ingresos');
INSERT INTO `puc` VALUES (423520, 'Administrativos', 'ingresos');
INSERT INTO `puc` VALUES (423525, 'Técnicos', 'ingresos');
INSERT INTO `puc` VALUES (423530, 'De computación', 'ingresos');
INSERT INTO `puc` VALUES (423535, 'De telefax', 'ingresos');
INSERT INTO `puc` VALUES (423540, 'Taller de vehículos', 'ingresos');
INSERT INTO `puc` VALUES (423545, 'De recepción de aeronaves', 'ingresos');
INSERT INTO `puc` VALUES (423550, 'De transporte programa gas natural', 'ingresos');
INSERT INTO `puc` VALUES (423555, 'Por contratos', 'ingresos');
INSERT INTO `puc` VALUES (423560, 'De trilla', 'ingresos');
INSERT INTO `puc` VALUES (423565, 'De mantenimiento', 'ingresos');
INSERT INTO `puc` VALUES (423570, 'Al personal', 'ingresos');
INSERT INTO `puc` VALUES (423575, 'De casino', 'ingresos');
INSERT INTO `puc` VALUES (423580, 'Fletes', 'ingresos');
INSERT INTO `puc` VALUES (423585, 'Entre compañías', 'ingresos');
INSERT INTO `puc` VALUES (423595, 'Otros', 'ingresos');
INSERT INTO `puc` VALUES (4240, 'Utilidad en venta de inversiones', 'ingresos');
INSERT INTO `puc` VALUES (424005, 'Acciones', 'ingresos');
INSERT INTO `puc` VALUES (424010, 'Cuotas o partes de interés social', 'ingresos');
INSERT INTO `puc` VALUES (424015, 'Bonos', 'ingresos');
INSERT INTO `puc` VALUES (424020, 'Cédulas', 'ingresos');
INSERT INTO `puc` VALUES (424025, 'Certificados', 'ingresos');
INSERT INTO `puc` VALUES (424030, 'Papeles comerciales', 'ingresos');
INSERT INTO `puc` VALUES (424035, 'Títulos', 'ingresos');
INSERT INTO `puc` VALUES (424045, 'Derechos fiduciarios', 'ingresos');
INSERT INTO `puc` VALUES (424050, 'Obligatorias', 'ingresos');
INSERT INTO `puc` VALUES (424095, 'Otras', 'ingresos');
INSERT INTO `puc` VALUES (4245, 'Utilidad en venta de propiedades, planta y equipo ', 'ingresos');
INSERT INTO `puc` VALUES (424504, 'Terrenos', 'ingresos');
INSERT INTO `puc` VALUES (424506, 'Materiales industria petrolera', 'ingresos');
INSERT INTO `puc` VALUES (424508, 'Construcciones en curso', 'ingresos');
INSERT INTO `puc` VALUES (424512, 'Maquinaria en montaje', 'ingresos');
INSERT INTO `puc` VALUES (424516, 'Construcciones y edificaciones', 'ingresos');
INSERT INTO `puc` VALUES (424520, 'Maquinaria y equipo', 'ingresos');
INSERT INTO `puc` VALUES (424524, 'Equipo de oficina', 'ingresos');
INSERT INTO `puc` VALUES (424528, 'Equipo de computación y comunicación', 'ingresos');
INSERT INTO `puc` VALUES (424532, 'Equipo médico-científico', 'ingresos');
INSERT INTO `puc` VALUES (424536, 'Equipo de hoteles y restaurantes', 'ingresos');
INSERT INTO `puc` VALUES (424540, 'Flota y equipo de transporte', 'ingresos');
INSERT INTO `puc` VALUES (424544, 'Flota y equipo fluvial y/o marítimo', 'ingresos');
INSERT INTO `puc` VALUES (424548, 'Flota y equipo aéreo', 'ingresos');
INSERT INTO `puc` VALUES (424552, 'Flota y equipo férreo', 'ingresos');
INSERT INTO `puc` VALUES (424556, 'Acueductos, plantas y redes', 'ingresos');
INSERT INTO `puc` VALUES (424560, 'Armamento de vigilancia', 'ingresos');
INSERT INTO `puc` VALUES (424562, 'Envases y empaques', 'ingresos');
INSERT INTO `puc` VALUES (424564, 'Plantaciones agrícolas y forestales', 'ingresos');
INSERT INTO `puc` VALUES (424568, 'Vías de comunicación', 'ingresos');
INSERT INTO `puc` VALUES (424572, 'Minas y Canteras', 'ingresos');
INSERT INTO `puc` VALUES (424580, 'Pozos artesianos', 'ingresos');
INSERT INTO `puc` VALUES (424584, 'Yacimientos', 'ingresos');
INSERT INTO `puc` VALUES (424588, 'Semovientes', 'ingresos');
INSERT INTO `puc` VALUES (4248, 'Utilidad en venta de otros bienes', 'ingresos');
INSERT INTO `puc` VALUES (424805, 'Intangibles', 'ingresos');
INSERT INTO `puc` VALUES (424810, 'Otros activos', 'ingresos');
INSERT INTO `puc` VALUES (4250, 'Recuperaciones', 'ingresos');
INSERT INTO `puc` VALUES (425005, 'Deudas malas', 'ingresos');
INSERT INTO `puc` VALUES (425010, 'Seguros', 'ingresos');
INSERT INTO `puc` VALUES (425015, 'Reclamos', 'ingresos');
INSERT INTO `puc` VALUES (425020, 'Reintegro por personal en comisión', 'ingresos');
INSERT INTO `puc` VALUES (425025, 'Reintegro garantías', 'ingresos');
INSERT INTO `puc` VALUES (425030, 'Descuentos concedidos', 'ingresos');
INSERT INTO `puc` VALUES (425035, 'De  provisiones', 'ingresos');
INSERT INTO `puc` VALUES (425040, 'Gastos bancarios', 'ingresos');
INSERT INTO `puc` VALUES (425045, 'De depreciación', 'ingresos');
INSERT INTO `puc` VALUES (425050, 'Reintegro de otros costos y gastos', 'ingresos');
INSERT INTO `puc` VALUES (4255, 'Indemnizaciones', 'ingresos');
INSERT INTO `puc` VALUES (425505, 'Por siniestro', 'ingresos');
INSERT INTO `puc` VALUES (425510, 'Por suministros', 'ingresos');
INSERT INTO `puc` VALUES (425515, 'Lucro cesante compañías de seguros', 'ingresos');
INSERT INTO `puc` VALUES (425520, 'Daño emergente compañías de seguros', 'ingresos');
INSERT INTO `puc` VALUES (425525, 'Por pérdida de mercancía', 'ingresos');
INSERT INTO `puc` VALUES (425530, 'Por incumplimiento de contratos', 'ingresos');
INSERT INTO `puc` VALUES (425535, 'De terceros', 'ingresos');
INSERT INTO `puc` VALUES (425540, 'Por incapacidades ISS', 'ingresos');
INSERT INTO `puc` VALUES (425595, 'Otras', 'ingresos');
INSERT INTO `puc` VALUES (4260, 'Participaciones en concesiones', 'ingresos');
INSERT INTO `puc` VALUES (4265, 'Ingresos de ejercicios anteriores', 'ingresos');
INSERT INTO `puc` VALUES (4275, 'Devoluciones en otras ventas (DB)', 'ingresos');
INSERT INTO `puc` VALUES (4295, 'Diversos', 'ingresos');
INSERT INTO `puc` VALUES (429503, 'CERT', 'ingresos');
INSERT INTO `puc` VALUES (429505, 'Aprovechamientos', 'ingresos');
INSERT INTO `puc` VALUES (429507, 'Auxilios', 'ingresos');
INSERT INTO `puc` VALUES (429509, 'Subvenciones', 'ingresos');
INSERT INTO `puc` VALUES (429511, 'Ingresos por investigación y desarrollo', 'ingresos');
INSERT INTO `puc` VALUES (429513, 'Por trabajos ejecutados', 'ingresos');
INSERT INTO `puc` VALUES (429515, 'Regalías', 'ingresos');
INSERT INTO `puc` VALUES (429517, 'Derivados de las exportaciones', 'ingresos');
INSERT INTO `puc` VALUES (429519, 'Otros ingresos de explotación', 'ingresos');
INSERT INTO `puc` VALUES (429521, 'De la actividad ganadera', 'ingresos');
INSERT INTO `puc` VALUES (429525, 'Derechos y licitaciones', 'ingresos');
INSERT INTO `puc` VALUES (429530, 'Ingresos por elementos perdidos', 'ingresos');
INSERT INTO `puc` VALUES (429533, 'Multas y recargos', 'ingresos');
INSERT INTO `puc` VALUES (429535, 'Preavisos descontados', 'ingresos');
INSERT INTO `puc` VALUES (429537, 'Reclamos', 'ingresos');
INSERT INTO `puc` VALUES (429540, 'Recobro de daños', 'ingresos');
INSERT INTO `puc` VALUES (429543, 'Premios', 'ingresos');
INSERT INTO `puc` VALUES (429545, 'Bonificaciones', 'ingresos');
INSERT INTO `puc` VALUES (429547, 'Productos descontados', 'ingresos');
INSERT INTO `puc` VALUES (429549, 'Reconocimientos ISS', 'ingresos');
INSERT INTO `puc` VALUES (429551, 'Excedentes', 'ingresos');
INSERT INTO `puc` VALUES (429553, 'Sobrantes de caja ', 'ingresos');
INSERT INTO `puc` VALUES (429555, 'Sobrantes en liquidación fletes', 'ingresos');
INSERT INTO `puc` VALUES (429557, 'Subsidios estatales', 'ingresos');
INSERT INTO `puc` VALUES (429559, 'Capacitación distribuidores', 'ingresos');
INSERT INTO `puc` VALUES (429561, 'De escrituración', 'ingresos');
INSERT INTO `puc` VALUES (429563, 'Registro promesas de venta', 'ingresos');
INSERT INTO `puc` VALUES (429567, 'Útiles, papelería y fotocopias', 'ingresos');
INSERT INTO `puc` VALUES (429571, 'Resultados, matrículas y traspasos', 'ingresos');
INSERT INTO `puc` VALUES (429573, 'Decoraciones', 'ingresos');
INSERT INTO `puc` VALUES (429575, 'Manejo de carga', 'ingresos');
INSERT INTO `puc` VALUES (429579, 'Historia clínica', 'ingresos');
INSERT INTO `puc` VALUES (429581, 'Ajuste al peso', 'ingresos');
INSERT INTO `puc` VALUES (429583, 'Llamadas telefónicas', 'ingresos');
INSERT INTO `puc` VALUES (47, 'Ajustes por inflación', 'ingresos');
INSERT INTO `puc` VALUES (4705, 'Corrección monetaria', 'ingresos');
INSERT INTO `puc` VALUES (470505, 'Inversiones (CR)', 'ingresos');
INSERT INTO `puc` VALUES (470510, 'Inventarios (CR)**', 'ingresos');
INSERT INTO `puc` VALUES (470515, 'Propiedades, planta y equipo (CR)', 'ingresos');
INSERT INTO `puc` VALUES (470520, 'Intangibles (CR)', 'ingresos');
INSERT INTO `puc` VALUES (470525, 'Activos diferidos ', 'ingresos');
INSERT INTO `puc` VALUES (470530, 'Otros activos (CR)', 'ingresos');
INSERT INTO `puc` VALUES (470535, 'Pasivos sujetos de ajuste', 'ingresos');
INSERT INTO `puc` VALUES (470540, 'Patrimonio**', 'ingresos');
INSERT INTO `puc` VALUES (470545, 'Depreciación acumulada (DB)', 'ingresos');
INSERT INTO `puc` VALUES (470550, 'Depreciación diferida (CR)', 'ingresos');
INSERT INTO `puc` VALUES (470555, 'Agotamiento acumulado (DB)', 'ingresos');
INSERT INTO `puc` VALUES (470560, 'Amortización acumulada (DB)', 'ingresos');
INSERT INTO `puc` VALUES (470590, 'Compras (CR)**', 'ingresos');
INSERT INTO `puc` VALUES (470591, 'Devoluciones en compras (DB)**', 'ingresos');
INSERT INTO `puc` VALUES (51, 'Operacionales de administración', 'gastos');
INSERT INTO `puc` VALUES (5105, 'Gastos de personal', 'gastos');
INSERT INTO `puc` VALUES (510503, 'Salario integral', 'gastos');
INSERT INTO `puc` VALUES (510506, 'Sueldos', 'gastos');
INSERT INTO `puc` VALUES (510512, 'Jornales', 'gastos');
INSERT INTO `puc` VALUES (510515, 'Horas extras y recargos', 'gastos');
INSERT INTO `puc` VALUES (510518, 'Comisiones', 'gastos');
INSERT INTO `puc` VALUES (510521, 'Viáticos', 'gastos');
INSERT INTO `puc` VALUES (510524, 'Incapacidades', 'gastos');
INSERT INTO `puc` VALUES (510527, 'Auxilio de transporte', 'gastos');
INSERT INTO `puc` VALUES (510530, 'Cesantías', 'gastos');
INSERT INTO `puc` VALUES (510533, 'Intereses sobre cesantías', 'gastos');
INSERT INTO `puc` VALUES (510536, 'Prima de servicios', 'gastos');
INSERT INTO `puc` VALUES (510539, 'Vacaciones', 'gastos');
INSERT INTO `puc` VALUES (510542, 'Primas extralegales', 'gastos');
INSERT INTO `puc` VALUES (510545, 'Auxilios', 'gastos');
INSERT INTO `puc` VALUES (510548, 'Bonificaciones', 'gastos');
INSERT INTO `puc` VALUES (510551, 'Dotación y suministro a trabajadores', 'gastos');
INSERT INTO `puc` VALUES (510554, 'Seguros', 'gastos');
INSERT INTO `puc` VALUES (510557, 'Cuotas partes pensiones de jubilación', 'gastos');
INSERT INTO `puc` VALUES (510558, 'Amortización cálculo actuarial pensiones de jubila', 'gastos');
INSERT INTO `puc` VALUES (510559, 'Pensiones de jubilación', 'gastos');
INSERT INTO `puc` VALUES (510560, 'Indemnizaciones laborales', 'gastos');
INSERT INTO `puc` VALUES (510561, 'Amortización bonos pensionales', 'gastos');
INSERT INTO `puc` VALUES (510562, 'Amortización títulos pensionales', 'gastos');
INSERT INTO `puc` VALUES (510563, 'Capacitación al personal', 'gastos');
INSERT INTO `puc` VALUES (510566, 'Gastos deportivos y de recreación', 'gastos');
INSERT INTO `puc` VALUES (510568, 'Aportes a administradoras de riesgos profesionales', 'gastos');
INSERT INTO `puc` VALUES (510569, 'Aportes a entidades promotoras de salud, EPS', 'gastos');
INSERT INTO `puc` VALUES (510570, 'Aportes a fondos de pensiones y/o cesantías', 'gastos');
INSERT INTO `puc` VALUES (510572, 'Aportes cajas de compensación familiar', 'gastos');
INSERT INTO `puc` VALUES (510575, 'Aportes ICBF ', 'gastos');
INSERT INTO `puc` VALUES (510578, 'SENA', 'gastos');
INSERT INTO `puc` VALUES (510581, 'Aportes sindicales', 'gastos');
INSERT INTO `puc` VALUES (510584, 'Gastos médicos y drogas', 'gastos');
INSERT INTO `puc` VALUES (510595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5110, 'Honorarios', 'gastos');
INSERT INTO `puc` VALUES (511005, 'Junta directiva', 'gastos');
INSERT INTO `puc` VALUES (511010, 'Revisoría fiscal', 'gastos');
INSERT INTO `puc` VALUES (511015, 'Auditoría externa', 'gastos');
INSERT INTO `puc` VALUES (511020, 'Avalúos', 'gastos');
INSERT INTO `puc` VALUES (511025, 'Asesoría jurídica', 'gastos');
INSERT INTO `puc` VALUES (511030, 'Asesoría financiera', 'gastos');
INSERT INTO `puc` VALUES (511035, 'Asesoría técnica', 'gastos');
INSERT INTO `puc` VALUES (511095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5115, 'Impuestos', 'gastos');
INSERT INTO `puc` VALUES (511505, 'Industria y comercio', 'gastos');
INSERT INTO `puc` VALUES (511510, 'De timbres', 'gastos');
INSERT INTO `puc` VALUES (511515, 'A la propiedad raíz', 'gastos');
INSERT INTO `puc` VALUES (511520, 'Derechos sobre instrumentos públicos', 'gastos');
INSERT INTO `puc` VALUES (511525, 'De valorización', 'gastos');
INSERT INTO `puc` VALUES (511530, 'De turismo', 'gastos');
INSERT INTO `puc` VALUES (511535, 'Tasa por utilización de puertos', 'gastos');
INSERT INTO `puc` VALUES (511540, 'De vehículos', 'gastos');
INSERT INTO `puc` VALUES (511545, 'De espectáculos públicos', 'gastos');
INSERT INTO `puc` VALUES (511550, 'Cuotas de fomento', 'gastos');
INSERT INTO `puc` VALUES (511570, 'IVA descontable', 'gastos');
INSERT INTO `puc` VALUES (511595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5120, 'Arrendamientos', 'gastos');
INSERT INTO `puc` VALUES (512005, 'Terrenos', 'gastos');
INSERT INTO `puc` VALUES (512010, 'Construcciones y edificaciones', 'gastos');
INSERT INTO `puc` VALUES (512015, 'Maquinaria y equipo', 'gastos');
INSERT INTO `puc` VALUES (512020, 'Equipo de oficina', 'gastos');
INSERT INTO `puc` VALUES (512025, 'Equipo de computación y comunicación', 'gastos');
INSERT INTO `puc` VALUES (512030, 'Equipo médico-científico', 'gastos');
INSERT INTO `puc` VALUES (512035, 'Equipo de hoteles y restaurantes', 'gastos');
INSERT INTO `puc` VALUES (512040, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (512045, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (512050, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (512055, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (512060, 'Acueductos, plantas y redes', 'gastos');
INSERT INTO `puc` VALUES (512065, 'Aeródromos', 'gastos');
INSERT INTO `puc` VALUES (512070, 'Semovientes', 'gastos');
INSERT INTO `puc` VALUES (512095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5125, 'Contribuciones y afiliaciones', 'gastos');
INSERT INTO `puc` VALUES (512505, 'Contribuciones', 'gastos');
INSERT INTO `puc` VALUES (512510, 'Afiliaciones y sostenimiento', 'gastos');
INSERT INTO `puc` VALUES (5130, 'Seguros', 'gastos');
INSERT INTO `puc` VALUES (513005, 'Manejo', 'gastos');
INSERT INTO `puc` VALUES (513010, 'Cumplimiento', 'gastos');
INSERT INTO `puc` VALUES (513015, 'Corriente débil', 'gastos');
INSERT INTO `puc` VALUES (513020, 'Vida colectiva', 'gastos');
INSERT INTO `puc` VALUES (513025, 'Incendio', 'gastos');
INSERT INTO `puc` VALUES (513030, 'Terremoto', 'gastos');
INSERT INTO `puc` VALUES (513035, 'Sustracción y hurto', 'gastos');
INSERT INTO `puc` VALUES (513040, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (513045, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (513050, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (513055, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (513060, 'Responsabilidad civil y extracontractual', 'gastos');
INSERT INTO `puc` VALUES (513065, 'Vuelo', 'gastos');
INSERT INTO `puc` VALUES (513070, 'Rotura de maquinaria', 'gastos');
INSERT INTO `puc` VALUES (513075, 'Obligatorio accidente de tránsito', 'gastos');
INSERT INTO `puc` VALUES (513080, 'Lucro cesante', 'gastos');
INSERT INTO `puc` VALUES (513085, 'Transporte de mercancía', 'gastos');
INSERT INTO `puc` VALUES (513095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5135, 'Servicios', 'gastos');
INSERT INTO `puc` VALUES (513505, 'Aseo y vigilancia', 'gastos');
INSERT INTO `puc` VALUES (513510, 'Temporales', 'gastos');
INSERT INTO `puc` VALUES (513515, 'Asistencia técnica', 'gastos');
INSERT INTO `puc` VALUES (513520, 'Procesamiento electrónico de datos', 'gastos');
INSERT INTO `puc` VALUES (513525, 'Acueducto y alcantarillado', 'gastos');
INSERT INTO `puc` VALUES (513530, 'Energía eléctrica', 'gastos');
INSERT INTO `puc` VALUES (513535, 'Teléfono', 'gastos');
INSERT INTO `puc` VALUES (513540, 'Correo, portes y telegramas', 'gastos');
INSERT INTO `puc` VALUES (513545, 'Fax y télex', 'gastos');
INSERT INTO `puc` VALUES (513550, 'Transporte, fletes y acarreos', 'gastos');
INSERT INTO `puc` VALUES (513555, 'Gas', 'gastos');
INSERT INTO `puc` VALUES (513595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5140, 'Gastos legales', 'gastos');
INSERT INTO `puc` VALUES (514005, 'Notariales', 'gastos');
INSERT INTO `puc` VALUES (514010, 'Registro mercantil', 'gastos');
INSERT INTO `puc` VALUES (514015, 'Trámites y licencias', 'gastos');
INSERT INTO `puc` VALUES (514020, 'Aduaneros', 'gastos');
INSERT INTO `puc` VALUES (514025, 'Consulares', 'gastos');
INSERT INTO `puc` VALUES (514095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5145, 'Mantenimiento y reparaciones', 'gastos');
INSERT INTO `puc` VALUES (514505, 'Terrenos', 'gastos');
INSERT INTO `puc` VALUES (514510, 'Construcciones y edificaciones', 'gastos');
INSERT INTO `puc` VALUES (514515, 'Maquinaria y equipo', 'gastos');
INSERT INTO `puc` VALUES (514520, 'Equipo de oficina', 'gastos');
INSERT INTO `puc` VALUES (514525, 'Equipo de computación y comunicación', 'gastos');
INSERT INTO `puc` VALUES (514530, 'Equipo médico-científico', 'gastos');
INSERT INTO `puc` VALUES (514535, 'Equipo de hoteles y restaurantes', 'gastos');
INSERT INTO `puc` VALUES (514540, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (514545, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (514550, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (514555, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (514560, 'Acueductos, plantas y redes', 'gastos');
INSERT INTO `puc` VALUES (514565, 'Armamento de vigilancia', 'gastos');
INSERT INTO `puc` VALUES (514570, 'Vías de comunicación', 'gastos');
INSERT INTO `puc` VALUES (5150, 'Adecuación e instalación', 'gastos');
INSERT INTO `puc` VALUES (515005, 'Instalaciones eléctricas', 'gastos');
INSERT INTO `puc` VALUES (515010, 'Arreglos ornamentales', 'gastos');
INSERT INTO `puc` VALUES (515015, 'Reparaciones locativas', 'gastos');
INSERT INTO `puc` VALUES (515095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5155, 'Gastos de viaje', 'gastos');
INSERT INTO `puc` VALUES (515505, 'Alojamiento y manutención', 'gastos');
INSERT INTO `puc` VALUES (515510, 'Pasajes fluviales y/o marítimos', 'gastos');
INSERT INTO `puc` VALUES (515515, 'Pasajes aéreos', 'gastos');
INSERT INTO `puc` VALUES (515520, 'Pasajes terrestres', 'gastos');
INSERT INTO `puc` VALUES (515525, 'Pasajes férreos', 'gastos');
INSERT INTO `puc` VALUES (515595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5160, 'Depreciaciones', 'gastos');
INSERT INTO `puc` VALUES (516005, 'Construcciones y edificaciones', 'gastos');
INSERT INTO `puc` VALUES (516010, 'Maquinaria y equipo', 'gastos');
INSERT INTO `puc` VALUES (516015, 'Equipo de oficina', 'gastos');
INSERT INTO `puc` VALUES (516020, 'Equipo de computación y comunicación', 'gastos');
INSERT INTO `puc` VALUES (516025, 'Equipo médico-científico', 'gastos');
INSERT INTO `puc` VALUES (516030, 'Equipo de hoteles y restaurantes', 'gastos');
INSERT INTO `puc` VALUES (516035, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (516040, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (516045, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (516050, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (516055, 'Acueductos, plantas y redes', 'gastos');
INSERT INTO `puc` VALUES (516060, 'Armamento de vigilancia', 'gastos');
INSERT INTO `puc` VALUES (5165, 'Amortizaciones', 'gastos');
INSERT INTO `puc` VALUES (516505, 'Vías de comunicación', 'gastos');
INSERT INTO `puc` VALUES (516510, 'Intangibles', 'gastos');
INSERT INTO `puc` VALUES (516515, 'Cargos diferidos', 'gastos');
INSERT INTO `puc` VALUES (516595, 'Otras', 'gastos');
INSERT INTO `puc` VALUES (5195, 'Diversos', 'gastos');
INSERT INTO `puc` VALUES (519505, 'Comisiones', 'gastos');
INSERT INTO `puc` VALUES (519510, 'Libros, suscripciones, periódicos y revistas', 'gastos');
INSERT INTO `puc` VALUES (519515, 'Música ambiental', 'gastos');
INSERT INTO `puc` VALUES (519520, 'Gastos de representación y relaciones públicas', 'gastos');
INSERT INTO `puc` VALUES (519525, 'Elementos de aseo y cafetería', 'gastos');
INSERT INTO `puc` VALUES (519530, 'Útiles, papelería y fotocopias', 'gastos');
INSERT INTO `puc` VALUES (519535, 'Combustibles y lubricantes', 'gastos');
INSERT INTO `puc` VALUES (519540, 'Envases y empaques', 'gastos');
INSERT INTO `puc` VALUES (519545, 'Taxis y buses', 'gastos');
INSERT INTO `puc` VALUES (519550, 'Estampillas', 'gastos');
INSERT INTO `puc` VALUES (519555, 'Microfilmación', 'gastos');
INSERT INTO `puc` VALUES (519560, 'Casino y restaurante', 'gastos');
INSERT INTO `puc` VALUES (519565, 'Parqueaderos', 'gastos');
INSERT INTO `puc` VALUES (519570, 'Indemnización por daños a terceros', 'gastos');
INSERT INTO `puc` VALUES (519575, 'Pólvora y similares', 'gastos');
INSERT INTO `puc` VALUES (519595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5199, 'Provisiones', 'gastos');
INSERT INTO `puc` VALUES (519905, 'Inversiones', 'gastos');
INSERT INTO `puc` VALUES (519910, 'Deudores', 'gastos');
INSERT INTO `puc` VALUES (519915, 'Propiedades, planta y equipo', 'gastos');
INSERT INTO `puc` VALUES (519995, 'Otros activos', 'gastos');
INSERT INTO `puc` VALUES (52, 'Operacionales de ventas', 'gastos');
INSERT INTO `puc` VALUES (5205, 'Gastos de personal', 'gastos');
INSERT INTO `puc` VALUES (520503, 'Salario integral', 'gastos');
INSERT INTO `puc` VALUES (520506, 'Sueldos', 'gastos');
INSERT INTO `puc` VALUES (520512, 'Jornales', 'gastos');
INSERT INTO `puc` VALUES (520515, 'Horas extras y recargos', 'gastos');
INSERT INTO `puc` VALUES (520518, 'Comisiones', 'gastos');
INSERT INTO `puc` VALUES (520521, 'Viáticos', 'gastos');
INSERT INTO `puc` VALUES (520524, 'Incapacidades', 'gastos');
INSERT INTO `puc` VALUES (520527, 'Auxilio de transporte', 'gastos');
INSERT INTO `puc` VALUES (520530, 'Cesantías', 'gastos');
INSERT INTO `puc` VALUES (520533, 'Intereses sobre cesantías', 'gastos');
INSERT INTO `puc` VALUES (520536, 'Prima de servicios', 'gastos');
INSERT INTO `puc` VALUES (520539, 'Vacaciones', 'gastos');
INSERT INTO `puc` VALUES (520542, 'Primas extralegales', 'gastos');
INSERT INTO `puc` VALUES (520545, 'Auxilios', 'gastos');
INSERT INTO `puc` VALUES (520548, 'Bonificaciones', 'gastos');
INSERT INTO `puc` VALUES (520551, 'Dotación y suministro a trabajadores', 'gastos');
INSERT INTO `puc` VALUES (520554, 'Seguros', 'gastos');
INSERT INTO `puc` VALUES (520557, 'Cuotas partes pensiones de jubilación', 'gastos');
INSERT INTO `puc` VALUES (520558, 'Amortización cálculo actuarial pensiones de jubila', 'gastos');
INSERT INTO `puc` VALUES (520559, 'Pensiones de jubilación', 'gastos');
INSERT INTO `puc` VALUES (520560, 'Indemnizaciones laborales', 'gastos');
INSERT INTO `puc` VALUES (520561, 'Amortización bonos pensionales', 'gastos');
INSERT INTO `puc` VALUES (520562, 'Amortización títulos pensionales', 'gastos');
INSERT INTO `puc` VALUES (520563, 'Capacitación al personal', 'gastos');
INSERT INTO `puc` VALUES (520566, 'Gastos deportivos y de recreación', 'gastos');
INSERT INTO `puc` VALUES (520568, 'Aportes a administradoras de riesgos profesionales', 'gastos');
INSERT INTO `puc` VALUES (520569, 'Aportes a entidades promotoras de salud, EPS', 'gastos');
INSERT INTO `puc` VALUES (520570, 'Aportes a fondos de pensiones y/o cesantías', 'gastos');
INSERT INTO `puc` VALUES (520572, 'Aportes cajas de compensación familiar', 'gastos');
INSERT INTO `puc` VALUES (520575, 'Aportes ICBF ', 'gastos');
INSERT INTO `puc` VALUES (520578, 'SENA', 'gastos');
INSERT INTO `puc` VALUES (520581, 'Aportes sindicales', 'gastos');
INSERT INTO `puc` VALUES (520584, 'Gastos médicos y drogas', 'gastos');
INSERT INTO `puc` VALUES (520595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5210, 'Honorarios', 'gastos');
INSERT INTO `puc` VALUES (521005, 'Junta directiva', 'gastos');
INSERT INTO `puc` VALUES (521010, 'Revisoría fiscal', 'gastos');
INSERT INTO `puc` VALUES (521015, 'Auditoría externa', 'gastos');
INSERT INTO `puc` VALUES (521020, 'Avalúos', 'gastos');
INSERT INTO `puc` VALUES (521025, 'Asesoría jurídica', 'gastos');
INSERT INTO `puc` VALUES (521030, 'Asesoría financiera', 'gastos');
INSERT INTO `puc` VALUES (521035, 'Asesoría técnica', 'gastos');
INSERT INTO `puc` VALUES (521095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5215, 'Impuestos', 'gastos');
INSERT INTO `puc` VALUES (521505, 'Industria y comercio', 'gastos');
INSERT INTO `puc` VALUES (521510, 'De timbres', 'gastos');
INSERT INTO `puc` VALUES (521515, 'A la propiedad raíz', 'gastos');
INSERT INTO `puc` VALUES (521520, 'Derechos sobre instrumentos públicos', 'gastos');
INSERT INTO `puc` VALUES (521525, 'De valorización', 'gastos');
INSERT INTO `puc` VALUES (521530, 'De turismo', 'gastos');
INSERT INTO `puc` VALUES (521535, 'Tasa por utilización de puertos', 'gastos');
INSERT INTO `puc` VALUES (521540, 'De vehículos', 'gastos');
INSERT INTO `puc` VALUES (521545, 'De espectáculos públicos', 'gastos');
INSERT INTO `puc` VALUES (521550, 'Cuotas de fomento', 'gastos');
INSERT INTO `puc` VALUES (521555, 'Licores', 'gastos');
INSERT INTO `puc` VALUES (521560, 'Cervezas', 'gastos');
INSERT INTO `puc` VALUES (521565, 'Cigarrillos', 'gastos');
INSERT INTO `puc` VALUES (521570, 'IVA descontable', 'gastos');
INSERT INTO `puc` VALUES (521595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5220, 'Arrendamientos', 'gastos');
INSERT INTO `puc` VALUES (522005, 'Terrenos', 'gastos');
INSERT INTO `puc` VALUES (522010, 'Construcciones y edificaciones', 'gastos');
INSERT INTO `puc` VALUES (522015, 'Maquinaria y equipo', 'gastos');
INSERT INTO `puc` VALUES (522020, 'Equipo de oficina', 'gastos');
INSERT INTO `puc` VALUES (522025, 'Equipo de computación y comunicación', 'gastos');
INSERT INTO `puc` VALUES (522030, 'Equipo médico-científico', 'gastos');
INSERT INTO `puc` VALUES (522035, 'Equipo de hoteles y restaurantes', 'gastos');
INSERT INTO `puc` VALUES (522040, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (522045, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (522050, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (522055, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (522060, 'Acueductos, plantas y redes', 'gastos');
INSERT INTO `puc` VALUES (522065, 'Aeródromos', 'gastos');
INSERT INTO `puc` VALUES (522070, 'Semovientes', 'gastos');
INSERT INTO `puc` VALUES (522095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5225, 'Contribuciones y afiliaciones', 'gastos');
INSERT INTO `puc` VALUES (522505, 'Contribuciones', 'gastos');
INSERT INTO `puc` VALUES (522510, 'Afiliaciones y sostenimiento', 'gastos');
INSERT INTO `puc` VALUES (5230, 'Seguros', 'gastos');
INSERT INTO `puc` VALUES (523005, 'Manejo', 'gastos');
INSERT INTO `puc` VALUES (523010, 'Cumplimiento', 'gastos');
INSERT INTO `puc` VALUES (523015, 'Corriente débil', 'gastos');
INSERT INTO `puc` VALUES (523020, 'Vida colectiva', 'gastos');
INSERT INTO `puc` VALUES (523025, 'Incendio', 'gastos');
INSERT INTO `puc` VALUES (523030, 'Terremoto', 'gastos');
INSERT INTO `puc` VALUES (523035, 'Sustracción y hurto', 'gastos');
INSERT INTO `puc` VALUES (523040, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (523045, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (523050, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (523055, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (523060, 'Responsabilidad civil y extracontractual', 'gastos');
INSERT INTO `puc` VALUES (523065, 'Vuelo', 'gastos');
INSERT INTO `puc` VALUES (523070, 'Rotura de maquinaria', 'gastos');
INSERT INTO `puc` VALUES (523075, 'Obligatorio accidente de tránsito', 'gastos');
INSERT INTO `puc` VALUES (523080, 'Lucro cesante', 'gastos');
INSERT INTO `puc` VALUES (523095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5235, 'Servicios', 'gastos');
INSERT INTO `puc` VALUES (523505, 'Aseo y vigilancia', 'gastos');
INSERT INTO `puc` VALUES (523510, 'Temporales', 'gastos');
INSERT INTO `puc` VALUES (523515, 'Asistencia técnica', 'gastos');
INSERT INTO `puc` VALUES (523520, 'Procesamiento electrónico de datos', 'gastos');
INSERT INTO `puc` VALUES (523525, 'Acueducto y alcantarillado', 'gastos');
INSERT INTO `puc` VALUES (523530, 'Energía eléctrica', 'gastos');
INSERT INTO `puc` VALUES (523535, 'Teléfono', 'gastos');
INSERT INTO `puc` VALUES (523540, 'Correo, portes y telegramas', 'gastos');
INSERT INTO `puc` VALUES (523545, 'Fax y télex', 'gastos');
INSERT INTO `puc` VALUES (523550, 'Transporte, fletes y acarreos', 'gastos');
INSERT INTO `puc` VALUES (523555, 'Gas', 'gastos');
INSERT INTO `puc` VALUES (523560, 'Publicidad, propaganda y promoción', 'gastos');
INSERT INTO `puc` VALUES (523595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5240, 'Gastos legales', 'gastos');
INSERT INTO `puc` VALUES (524005, 'Notariales', 'gastos');
INSERT INTO `puc` VALUES (524010, 'Registro mercantil', 'gastos');
INSERT INTO `puc` VALUES (524015, 'Trámites y licencias', 'gastos');
INSERT INTO `puc` VALUES (524020, 'Aduaneros', 'gastos');
INSERT INTO `puc` VALUES (524025, 'Consulares', 'gastos');
INSERT INTO `puc` VALUES (524095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5245, 'Mantenimiento y reparaciones', 'gastos');
INSERT INTO `puc` VALUES (524505, 'Terrenos', 'gastos');
INSERT INTO `puc` VALUES (524510, 'Construcciones y edificaciones', 'gastos');
INSERT INTO `puc` VALUES (524515, 'Maquinaria y equipo', 'gastos');
INSERT INTO `puc` VALUES (524520, 'Equipo de oficina', 'gastos');
INSERT INTO `puc` VALUES (524525, 'Equipo de computación y comunicación', 'gastos');
INSERT INTO `puc` VALUES (524530, 'Equipo médico-científico', 'gastos');
INSERT INTO `puc` VALUES (524535, 'Equipo de hoteles y restaurantes', 'gastos');
INSERT INTO `puc` VALUES (524540, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (524545, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (524550, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (524555, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (524560, 'Acueductos, plantas y redes', 'gastos');
INSERT INTO `puc` VALUES (524565, 'Armamento de vigilancia', 'gastos');
INSERT INTO `puc` VALUES (524570, 'Vías de comunicación', 'gastos');
INSERT INTO `puc` VALUES (5250, 'Adecuación e instalación', 'gastos');
INSERT INTO `puc` VALUES (525005, 'Instalaciones eléctricas', 'gastos');
INSERT INTO `puc` VALUES (525010, 'Arreglos ornamentales', 'gastos');
INSERT INTO `puc` VALUES (525015, 'Reparaciones locativas', 'gastos');
INSERT INTO `puc` VALUES (525095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5255, 'Gastos de viaje', 'gastos');
INSERT INTO `puc` VALUES (525505, 'Alojamiento y manutención', 'gastos');
INSERT INTO `puc` VALUES (525510, 'Pasajes fluviales y/o marítimos', 'gastos');
INSERT INTO `puc` VALUES (525515, 'Pasajes aéreos', 'gastos');
INSERT INTO `puc` VALUES (525520, 'Pasajes terrestres', 'gastos');
INSERT INTO `puc` VALUES (525525, 'Pasajes férreos', 'gastos');
INSERT INTO `puc` VALUES (525595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5260, 'Depreciaciones', 'gastos');
INSERT INTO `puc` VALUES (526005, 'Construcciones y edificaciones', 'gastos');
INSERT INTO `puc` VALUES (526010, 'Maquinaria y equipo', 'gastos');
INSERT INTO `puc` VALUES (526015, 'Equipo de oficina', 'gastos');
INSERT INTO `puc` VALUES (526020, 'Equipo de computación y comunicación', 'gastos');
INSERT INTO `puc` VALUES (526025, 'Equipo médico-científico', 'gastos');
INSERT INTO `puc` VALUES (526030, 'Equipo de hoteles y restaurantes', 'gastos');
INSERT INTO `puc` VALUES (526035, 'Flota y equipo de transporte', 'gastos');
INSERT INTO `puc` VALUES (526040, 'Flota y equipo fluvial y/o marítimo', 'gastos');
INSERT INTO `puc` VALUES (526045, 'Flota y equipo aéreo', 'gastos');
INSERT INTO `puc` VALUES (526050, 'Flota y equipo férreo', 'gastos');
INSERT INTO `puc` VALUES (526055, 'Acueductos, plantas y redes', 'gastos');
INSERT INTO `puc` VALUES (526060, 'Armamento de vigilancia', 'gastos');
INSERT INTO `puc` VALUES (526065, 'Envases y empaques', 'gastos');
INSERT INTO `puc` VALUES (5265, 'Amortizaciones', 'gastos');
INSERT INTO `puc` VALUES (526505, 'Vías de comunicación', 'gastos');
INSERT INTO `puc` VALUES (526510, 'Intangibles', 'gastos');
INSERT INTO `puc` VALUES (526515, 'Cargos diferidos', 'gastos');
INSERT INTO `puc` VALUES (526595, 'Otras', 'gastos');
INSERT INTO `puc` VALUES (5270, 'Financieros-reajuste del sistema', 'gastos');
INSERT INTO `puc` VALUES (5275, 'Pérdidas método de participación', 'gastos');
INSERT INTO `puc` VALUES (527505, 'De sociedades anónimas y/o asimiladas', 'gastos');
INSERT INTO `puc` VALUES (527510, 'De sociedades limitadas y/o asimiladas', 'gastos');
INSERT INTO `puc` VALUES (5295, 'Diversos', 'gastos');
INSERT INTO `puc` VALUES (529505, 'Comisiones', 'gastos');
INSERT INTO `puc` VALUES (529510, 'Libros, suscripciones, periódicos y revistas', 'gastos');
INSERT INTO `puc` VALUES (529515, 'Música ambiental', 'gastos');
INSERT INTO `puc` VALUES (529520, 'Gastos de representación y relaciones públicas', 'gastos');
INSERT INTO `puc` VALUES (529525, 'Elementos de aseo y cafetería', 'gastos');
INSERT INTO `puc` VALUES (529530, 'Útiles, papelería y fotocopias', 'gastos');
INSERT INTO `puc` VALUES (529535, 'Combustibles y lubricantes', 'gastos');
INSERT INTO `puc` VALUES (529540, 'Envases y empaques', 'gastos');
INSERT INTO `puc` VALUES (529545, 'Taxis y buses', 'gastos');
INSERT INTO `puc` VALUES (529550, 'Estampillas', 'gastos');
INSERT INTO `puc` VALUES (529555, 'Microfilmación', 'gastos');
INSERT INTO `puc` VALUES (529560, 'Casino y restaurante', 'gastos');
INSERT INTO `puc` VALUES (529565, 'Parqueaderos', 'gastos');
INSERT INTO `puc` VALUES (529570, 'Indemnización por daños a terceros', 'gastos');
INSERT INTO `puc` VALUES (529575, 'Pólvora y similares', 'gastos');
INSERT INTO `puc` VALUES (529595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5299, 'Provisiones', 'gastos');
INSERT INTO `puc` VALUES (529905, 'Inversiones', 'gastos');
INSERT INTO `puc` VALUES (529910, 'Deudores', 'gastos');
INSERT INTO `puc` VALUES (529915, 'Inventarios', 'gastos');
INSERT INTO `puc` VALUES (529920, 'Propiedades, planta y equipo', 'gastos');
INSERT INTO `puc` VALUES (529995, 'Otros activos', 'gastos');
INSERT INTO `puc` VALUES (53, 'No operacionales', 'gastos');
INSERT INTO `puc` VALUES (5305, 'Financieros', 'gastos');
INSERT INTO `puc` VALUES (530505, 'Gastos bancarios', 'gastos');
INSERT INTO `puc` VALUES (530510, 'Reajuste monetario-UPAC (hoy UVR)', 'gastos');
INSERT INTO `puc` VALUES (530515, 'Comisiones', 'gastos');
INSERT INTO `puc` VALUES (530520, 'Intereses', 'gastos');
INSERT INTO `puc` VALUES (530525, 'Diferencia en cambio', 'gastos');
INSERT INTO `puc` VALUES (530530, 'Gastos en negociación certificados de cambio', 'gastos');
INSERT INTO `puc` VALUES (530535, 'Descuentos comerciales condicionados', 'gastos');
INSERT INTO `puc` VALUES (530540, 'Gastos manejo y emisión de bonos', 'gastos');
INSERT INTO `puc` VALUES (530545, 'Prima amortizada', 'gastos');
INSERT INTO `puc` VALUES (530595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5310, 'Pérdida en venta y retiro de bienes', 'gastos');
INSERT INTO `puc` VALUES (531005, 'Venta de inversiones', 'gastos');
INSERT INTO `puc` VALUES (531010, 'Venta de cartera', 'gastos');
INSERT INTO `puc` VALUES (531015, 'Venta de propiedades, planta y equipo', 'gastos');
INSERT INTO `puc` VALUES (531020, 'Venta de intangibles', 'gastos');
INSERT INTO `puc` VALUES (531025, 'Venta de otros activos', 'gastos');
INSERT INTO `puc` VALUES (531030, 'Retiro de propiedades, planta y equipo', 'gastos');
INSERT INTO `puc` VALUES (531035, 'Retiro de otros activos', 'gastos');
INSERT INTO `puc` VALUES (531040, 'Pérdidas por siniestros', 'gastos');
INSERT INTO `puc` VALUES (531095, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5313, 'Pérdidas método de participación', 'gastos');
INSERT INTO `puc` VALUES (531305, 'De sociedades anónimas y/o asimiladas', 'gastos');
INSERT INTO `puc` VALUES (531310, 'De sociedades limitadas y/o asimiladas', 'gastos');
INSERT INTO `puc` VALUES (5315, 'Gastos extraordinarios', 'gastos');
INSERT INTO `puc` VALUES (531505, 'Costas y procesos judiciales', 'gastos');
INSERT INTO `puc` VALUES (531510, 'Actividades culturales y cívicas', 'gastos');
INSERT INTO `puc` VALUES (531515, 'Costos y gastos de ejercicios anteriores', 'gastos');
INSERT INTO `puc` VALUES (531520, 'Impuestos asumidos', 'gastos');
INSERT INTO `puc` VALUES (531595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (5395, 'Gastos diversos', 'gastos');
INSERT INTO `puc` VALUES (539505, 'Demandas laborales', 'gastos');
INSERT INTO `puc` VALUES (539510, 'Demandas por incumplimiento de contratos', 'gastos');
INSERT INTO `puc` VALUES (539515, 'Indemnizaciones', 'gastos');
INSERT INTO `puc` VALUES (539520, 'Multas, sanciones y litigios', 'gastos');
INSERT INTO `puc` VALUES (539525, 'Donaciones', 'gastos');
INSERT INTO `puc` VALUES (539530, 'Constitución de garantías', 'gastos');
INSERT INTO `puc` VALUES (539535, 'Amortización de bienes entregados en comodato', 'gastos');
INSERT INTO `puc` VALUES (539595, 'Otros', 'gastos');
INSERT INTO `puc` VALUES (54, 'Impuesto de renta y complementarios', 'gastos');
INSERT INTO `puc` VALUES (5405, 'Impuesto de renta y complementarios', 'gastos');
INSERT INTO `puc` VALUES (540505, 'Impuesto de renta y complementarios', 'gastos');
INSERT INTO `puc` VALUES (59, 'Ganancias y pérdidas', 'gastos');
INSERT INTO `puc` VALUES (5905, 'Ganancias y pérdidas', 'gastos');
INSERT INTO `puc` VALUES (590505, 'Ganancias y pérdidas', 'gastos');
INSERT INTO `puc` VALUES (6, 'Costos de ventas*', 'costos');
INSERT INTO `puc` VALUES (61, 'Costo de ventas y de prestación de servicios', 'costos');
INSERT INTO `puc` VALUES (6105, 'Agricultura, ganadería, caza y silvicultura', 'costos');
INSERT INTO `puc` VALUES (610505, 'Cultivo de cereales', 'costos');
INSERT INTO `puc` VALUES (610510, 'Cultivos de hortalizas, legumbres y plantas orname', 'costos');
INSERT INTO `puc` VALUES (610515, 'Cultivos de frutas, nueces y plantas aromáticas', 'costos');
INSERT INTO `puc` VALUES (610520, 'Cultivo de café', 'costos');
INSERT INTO `puc` VALUES (610525, 'Cultivo de flores', 'costos');
INSERT INTO `puc` VALUES (610530, 'Cultivo de caña de azúcar', 'costos');
INSERT INTO `puc` VALUES (610535, 'Cultivo de algodón y plantas para material textil', 'costos');
INSERT INTO `puc` VALUES (610540, 'Cultivo de banano', 'costos');
INSERT INTO `puc` VALUES (610545, 'Otros cultivos agrícolas', 'costos');
INSERT INTO `puc` VALUES (610550, 'Cría de ovejas, cabras, asnos, mulas y burdéganos', 'costos');
INSERT INTO `puc` VALUES (610555, 'Cría de ganado caballar y vacuno', 'costos');
INSERT INTO `puc` VALUES (610560, 'Producción avícola', 'costos');
INSERT INTO `puc` VALUES (610565, 'Cría de otros animales', 'costos');
INSERT INTO `puc` VALUES (610570, 'Servicios agrícolas y ganaderos', 'costos');
INSERT INTO `puc` VALUES (610575, 'Actividad de caza', 'costos');
INSERT INTO `puc` VALUES (610580, 'Actividad de silvicultura', 'costos');
INSERT INTO `puc` VALUES (610595, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (611005, 'Actividad de pesca', 'costos');
INSERT INTO `puc` VALUES (611010, 'Explotación de criaderos de peces', 'costos');
INSERT INTO `puc` VALUES (611095, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6115, 'Explotación de minas y canteras', 'costos');
INSERT INTO `puc` VALUES (611505, 'Carbón', 'costos');
INSERT INTO `puc` VALUES (611510, 'Petróleo crudo', 'costos');
INSERT INTO `puc` VALUES (611512, 'Gas natural', 'costos');
INSERT INTO `puc` VALUES (611514, 'Servicios relacionados con extracción de petróleo ', 'costos');
INSERT INTO `puc` VALUES (611515, 'Minerales de hierro', 'costos');
INSERT INTO `puc` VALUES (611520, 'Minerales metalíferos no ferrosos', 'costos');
INSERT INTO `puc` VALUES (611525, 'Piedra, arena y arcilla', 'costos');
INSERT INTO `puc` VALUES (611527, 'Piedras preciosas', 'costos');
INSERT INTO `puc` VALUES (611528, 'Oro', 'costos');
INSERT INTO `puc` VALUES (611530, 'Otras minas y canteras', 'costos');
INSERT INTO `puc` VALUES (611532, 'Prestación de servicios sector minero', 'costos');
INSERT INTO `puc` VALUES (611595, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6120, 'Industrias manufactureras', 'costos');
INSERT INTO `puc` VALUES (612001, 'Producción y procesamiento de carnes y productos c', 'costos');
INSERT INTO `puc` VALUES (612002, 'Productos de pescado', 'costos');
INSERT INTO `puc` VALUES (612003, 'Productos de frutas, legumbres y hortalizas', 'costos');
INSERT INTO `puc` VALUES (612004, 'Elaboración de aceites y grasas', 'costos');
INSERT INTO `puc` VALUES (612005, 'Elaboración  de productos lácteos', 'costos');
INSERT INTO `puc` VALUES (612006, 'Elaboración de productos de molinería', 'costos');
INSERT INTO `puc` VALUES (612007, 'Elaboración de almidones y derivados', 'costos');
INSERT INTO `puc` VALUES (612008, 'Elaboración de alimentos para animales', 'costos');
INSERT INTO `puc` VALUES (612009, 'Elaboración de productos para panadería', 'costos');
INSERT INTO `puc` VALUES (612010, 'Elaboración de azúcar y melazas', 'costos');
INSERT INTO `puc` VALUES (612011, 'Elaboración de cacao, chocolate y confitería', 'costos');
INSERT INTO `puc` VALUES (612012, 'Elaboración  de pastas y productos farináceos', 'costos');
INSERT INTO `puc` VALUES (612013, 'Elaboración de productos de café', 'costos');
INSERT INTO `puc` VALUES (612014, 'Elaboración de otros productos alimenticios', 'costos');
INSERT INTO `puc` VALUES (612015, 'Elaboración de bebidas alcohólicas y alcohol etíli', 'costos');
INSERT INTO `puc` VALUES (612016, 'Elaboración de vinos', 'costos');
INSERT INTO `puc` VALUES (612017, 'Elaboración de bebidas malteadas y de malta', 'costos');
INSERT INTO `puc` VALUES (612018, 'Elaboración de bebidas no alcohólicas', 'costos');
INSERT INTO `puc` VALUES (612019, 'Elaboración de productos de tabaco', 'costos');
INSERT INTO `puc` VALUES (612020, 'Preparación e hilatura de fibras textiles y tejedu', 'costos');
INSERT INTO `puc` VALUES (612021, 'Acabado de productos textiles', 'costos');
INSERT INTO `puc` VALUES (612022, 'Elaboración de artículos de materiales textiles', 'costos');
INSERT INTO `puc` VALUES (612023, 'Elaboración de tapices y alfombras', 'costos');
INSERT INTO `puc` VALUES (612024, 'Elaboración de cuerdas, cordeles, bramantes y rede', 'costos');
INSERT INTO `puc` VALUES (612025, 'Elaboración de otros productos textiles', 'costos');
INSERT INTO `puc` VALUES (612026, 'Elaboración de tejidos', 'costos');
INSERT INTO `puc` VALUES (612027, 'Elaboración de prendas de vestir', 'costos');
INSERT INTO `puc` VALUES (612028, 'Preparación, adobo y teñido de pieles', 'costos');
INSERT INTO `puc` VALUES (612029, 'Curtido, adobo o preparación de cuero', 'costos');
INSERT INTO `puc` VALUES (612030, 'Elaboración de maletas, bolsos y similares', 'costos');
INSERT INTO `puc` VALUES (612031, 'Elaboración de calzado', 'costos');
INSERT INTO `puc` VALUES (612032, 'Producción de madera, artículos de madera y corcho', 'costos');
INSERT INTO `puc` VALUES (612033, 'Elaboración de pasta y productos de madera, papel ', 'costos');
INSERT INTO `puc` VALUES (612034, 'Ediciones y publicaciones', 'costos');
INSERT INTO `puc` VALUES (612035, 'Impresión', 'costos');
INSERT INTO `puc` VALUES (612036, 'Servicios relacionados con la edición y la impresi', 'costos');
INSERT INTO `puc` VALUES (612037, 'Reproducción de grabaciones', 'costos');
INSERT INTO `puc` VALUES (612038, 'Elaboración de productos de horno de coque', 'costos');
INSERT INTO `puc` VALUES (612039, 'Elaboración de productos de la refinación de petró', 'costos');
INSERT INTO `puc` VALUES (612040, 'Elaboración de sustancias químicas básicas', 'costos');
INSERT INTO `puc` VALUES (612041, 'Elaboración de abonos y compuestos de nitrógeno', 'costos');
INSERT INTO `puc` VALUES (612042, 'Elaboración de plástico y caucho sintético', 'costos');
INSERT INTO `puc` VALUES (612043, 'Elaboración de productos químicos de uso agropecua', 'costos');
INSERT INTO `puc` VALUES (612044, 'Elaboración de pinturas, tintas y masillas', 'costos');
INSERT INTO `puc` VALUES (612045, 'Elaboración de productos farmacéuticos y botánicos', 'costos');
INSERT INTO `puc` VALUES (612046, 'Elaboración de jabones, detergentes y preparados d', 'costos');
INSERT INTO `puc` VALUES (612047, 'Elaboración de otros productos químicos', 'costos');
INSERT INTO `puc` VALUES (612048, 'Elaboración de fibras', 'costos');
INSERT INTO `puc` VALUES (612049, 'Elaboración de otros productos de caucho', 'costos');
INSERT INTO `puc` VALUES (612050, 'Elaboración de productos de plástico', 'costos');
INSERT INTO `puc` VALUES (612051, 'Elaboración de vidrio y productos de vidrio', 'costos');
INSERT INTO `puc` VALUES (612052, 'Elaboración de productos de cerámica, loza, piedra', 'costos');
INSERT INTO `puc` VALUES (612053, 'Elaboración de cemento, cal y yeso', 'costos');
INSERT INTO `puc` VALUES (612054, 'Elaboración de artículos de hormigón, cemento y ye', 'costos');
INSERT INTO `puc` VALUES (612055, 'Corte, tallado y acabado de la piedra', 'costos');
INSERT INTO `puc` VALUES (612056, 'Elaboración de otros productos minerales no metáli', 'costos');
INSERT INTO `puc` VALUES (612057, 'Industrias básicas y fundición de hierro y acero', 'costos');
INSERT INTO `puc` VALUES (612058, 'Productos primarios de metales preciosos y de meta', 'costos');
INSERT INTO `puc` VALUES (612059, 'Fundición de metales no ferrosos', 'costos');
INSERT INTO `puc` VALUES (612060, 'Fabricación de productos metálicos para uso estruc', 'costos');
INSERT INTO `puc` VALUES (612061, 'Forja, prensado, estampado, laminado de metal y pu', 'costos');
INSERT INTO `puc` VALUES (612062, 'Revestimiento de metales y obras de ingeniería mec', 'costos');
INSERT INTO `puc` VALUES (612063, 'Fabricación de artículos de ferretería', 'costos');
INSERT INTO `puc` VALUES (612064, 'Elaboración de otros productos de metal', 'costos');
INSERT INTO `puc` VALUES (612065, 'Fabricación de maquinaria y equipo', 'costos');
INSERT INTO `puc` VALUES (612066, 'Fabricación de equipos de elevación y manipulación', 'costos');
INSERT INTO `puc` VALUES (612067, 'Elaboración de aparatos de uso doméstico', 'costos');
INSERT INTO `puc` VALUES (612068, 'Elaboración de equipo de oficina', 'costos');
INSERT INTO `puc` VALUES (612069, 'Elaboración de pilas y baterías primarias', 'costos');
INSERT INTO `puc` VALUES (612070, 'Elaboración de equipo de iluminación', 'costos');
INSERT INTO `puc` VALUES (612071, 'Elaboración de otros tipos de equipo eléctrico', 'costos');
INSERT INTO `puc` VALUES (612072, 'Fabricación de equipos de radio, televisión y comu', 'costos');
INSERT INTO `puc` VALUES (612073, 'Fabricación de aparatos e instrumentos médicos', 'costos');
INSERT INTO `puc` VALUES (612074, 'Fabricación de instrumentos de medición y control', 'costos');
INSERT INTO `puc` VALUES (612075, 'Fabricación de instrumentos de óptica y equipo fot', 'costos');
INSERT INTO `puc` VALUES (612076, 'Fabricación de relojes', 'costos');
INSERT INTO `puc` VALUES (612077, 'Fabricación de vehículos automotores', 'costos');
INSERT INTO `puc` VALUES (612078, 'Fabricación de carrocerías para automotores', 'costos');
INSERT INTO `puc` VALUES (612079, 'Fabricación de partes, piezas y accesorios para au', 'costos');
INSERT INTO `puc` VALUES (612080, 'Fabricación y reparación de buques y otras embarca', 'costos');
INSERT INTO `puc` VALUES (612081, 'Fabricación de locomotoras y material rodante para', 'costos');
INSERT INTO `puc` VALUES (612082, 'Fabricación de aeronaves', 'costos');
INSERT INTO `puc` VALUES (612083, 'Fabricación de motocicletas', 'costos');
INSERT INTO `puc` VALUES (612084, 'Fabricación de bicicletas y sillas de ruedas', 'costos');
INSERT INTO `puc` VALUES (612085, 'Fabricación de otros tipos de transporte', 'costos');
INSERT INTO `puc` VALUES (612086, 'Fabricación de muebles', 'costos');
INSERT INTO `puc` VALUES (612087, 'Fabricación de joyas y artículos conexos', 'costos');
INSERT INTO `puc` VALUES (612088, 'Fabricación de instrumentos de música', 'costos');
INSERT INTO `puc` VALUES (612089, 'Fabricación de artículos y equipo para deporte', 'costos');
INSERT INTO `puc` VALUES (612090, 'Fabricación de juegos y juguetes', 'costos');
INSERT INTO `puc` VALUES (612091, 'Reciclamiento de desperdicios', 'costos');
INSERT INTO `puc` VALUES (612095, 'Productos de otras industrias manufactureras', 'costos');
INSERT INTO `puc` VALUES (6125, 'Suministro de electricidad, gas y agua', 'costos');
INSERT INTO `puc` VALUES (612505, 'Generación, captación y distribución de energía el', 'costos');
INSERT INTO `puc` VALUES (612510, 'Fabricación de gas y distribución de combustibles ', 'costos');
INSERT INTO `puc` VALUES (612515, 'Captación, depuración y distribución de agua', 'costos');
INSERT INTO `puc` VALUES (612595, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6130, 'Construcción', 'costos');
INSERT INTO `puc` VALUES (613005, 'Preparación de terrenos', 'costos');
INSERT INTO `puc` VALUES (613010, 'Construcción de edificios y obras de ingeniería ci', 'costos');
INSERT INTO `puc` VALUES (613015, 'Acondicionamiento de edificios', 'costos');
INSERT INTO `puc` VALUES (613020, 'Terminación de edificaciones', 'costos');
INSERT INTO `puc` VALUES (613025, 'Alquiler de equipo con operario', 'costos');
INSERT INTO `puc` VALUES (613095, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6135, 'Comercio al por mayor y al por menor', 'costos');
INSERT INTO `puc` VALUES (613502, 'Venta de vehículos automotores', 'costos');
INSERT INTO `puc` VALUES (613504, 'Mantenimiento, reparación y lavado de vehículos au', 'costos');
INSERT INTO `puc` VALUES (613506, 'Venta de partes, piezas y accesorios de vehículos ', 'costos');
INSERT INTO `puc` VALUES (613508, 'Venta  de combustibles sólidos, líquidos, gaseosos', 'costos');
INSERT INTO `puc` VALUES (613510, 'Venta de lubricantes, aditivos, llantas y lujos pa', 'costos');
INSERT INTO `puc` VALUES (613512, 'Venta a cambio de retribución o por contrata', 'costos');
INSERT INTO `puc` VALUES (613514, 'Venta de insumos, materias primas agropecuarias y ', 'costos');
INSERT INTO `puc` VALUES (613516, 'Venta de otros insumos y materias primas no agrope', 'costos');
INSERT INTO `puc` VALUES (613518, 'Venta de animales vivos y cueros', 'costos');
INSERT INTO `puc` VALUES (613520, 'Venta de productos en almacenes no especializados', 'costos');
INSERT INTO `puc` VALUES (613522, 'Venta de productos agropecuarios', 'costos');
INSERT INTO `puc` VALUES (613524, 'Venta de productos textiles, de vestir, de cuero y', 'costos');
INSERT INTO `puc` VALUES (613526, 'Venta de papel y cartón', 'costos');
INSERT INTO `puc` VALUES (613528, 'Venta de libros, revistas, elementos de papelería,', 'costos');
INSERT INTO `puc` VALUES (613530, 'Venta de juegos, juguetes y artículos deportivos', 'costos');
INSERT INTO `puc` VALUES (613532, 'Venta de instrumentos quirúrgicos y ortopédicos', 'costos');
INSERT INTO `puc` VALUES (613534, 'Venta de artículos en relojerías y joyerías', 'costos');
INSERT INTO `puc` VALUES (613536, 'Venta de electrodomésticos y muebles', 'costos');
INSERT INTO `puc` VALUES (613538, 'Venta de productos de aseo, farmacéuticos,  medici', 'costos');
INSERT INTO `puc` VALUES (613540, 'Venta de cubiertos, vajillas, cristalería, porcela', 'costos');
INSERT INTO `puc` VALUES (613542, 'Venta de materiales de construcción, fontanería y ', 'costos');
INSERT INTO `puc` VALUES (613544, 'Venta de pinturas y lacas', 'costos');
INSERT INTO `puc` VALUES (613546, 'Venta de productos de vidrios y marquetería', 'costos');
INSERT INTO `puc` VALUES (613548, 'Venta de herramientas y artículos de ferretería', 'costos');
INSERT INTO `puc` VALUES (613550, 'Venta de químicos', 'costos');
INSERT INTO `puc` VALUES (613552, 'Venta de productos intermedios, desperdicios y des', 'costos');
INSERT INTO `puc` VALUES (613554, 'Venta de maquinaria, equipo de oficina y programas', 'costos');
INSERT INTO `puc` VALUES (613556, 'Venta de artículos en cacharrerías y misceláneas', 'costos');
INSERT INTO `puc` VALUES (613558, 'Venta de instrumentos musicales', 'costos');
INSERT INTO `puc` VALUES (613560, 'Venta de artículos en casas de empeño y prenderías', 'costos');
INSERT INTO `puc` VALUES (613562, 'Venta de equipo fotográfico', 'costos');
INSERT INTO `puc` VALUES (613564, 'Venta de equipo óptico y de precisión', 'costos');
INSERT INTO `puc` VALUES (613566, 'Venta de empaques', 'costos');
INSERT INTO `puc` VALUES (613568, 'Venta de equipo profesional y científico', 'costos');
INSERT INTO `puc` VALUES (613570, 'Venta de loterías, rifas, chance, apuestas y simil', 'costos');
INSERT INTO `puc` VALUES (613572, 'Reparación de efectos personales y electrodoméstic', 'costos');
INSERT INTO `puc` VALUES (613595, 'Venta de otros productos', 'costos');
INSERT INTO `puc` VALUES (6140, 'Hoteles y restaurantes', 'costos');
INSERT INTO `puc` VALUES (614005, 'Hotelería', 'costos');
INSERT INTO `puc` VALUES (614010, 'Campamento y otros tipos de hospedaje', 'costos');
INSERT INTO `puc` VALUES (614015, 'Restaurantes', 'costos');
INSERT INTO `puc` VALUES (614020, 'Bares y cantinas', 'costos');
INSERT INTO `puc` VALUES (614095, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6145, 'Transporte, almacenamiento y comunicaciones', 'costos');
INSERT INTO `puc` VALUES (614505, 'Servicio de transporte por carretera', 'costos');
INSERT INTO `puc` VALUES (614510, 'Servicio de transporte por vía férrea', 'costos');
INSERT INTO `puc` VALUES (614515, 'Servicio de transporte por vía acuática', 'costos');
INSERT INTO `puc` VALUES (614520, 'Servicio de transporte por vía aérea', 'costos');
INSERT INTO `puc` VALUES (614525, 'Servicio de transporte por tuberías', 'costos');
INSERT INTO `puc` VALUES (614530, 'Manipulación de carga', 'costos');
INSERT INTO `puc` VALUES (614535, 'Almacenamiento y depósito', 'costos');
INSERT INTO `puc` VALUES (614540, 'Servicios complementarios para el transporte', 'costos');
INSERT INTO `puc` VALUES (614545, 'Agencias de viaje', 'costos');
INSERT INTO `puc` VALUES (614550, 'Otras agencias de transporte', 'costos');
INSERT INTO `puc` VALUES (614555, 'Servicio postal y de correo', 'costos');
INSERT INTO `puc` VALUES (614560, 'Servicio telefónico', 'costos');
INSERT INTO `puc` VALUES (614565, 'Servicio de telégrafo', 'costos');
INSERT INTO `puc` VALUES (614570, 'Servicio de transmisión de datos', 'costos');
INSERT INTO `puc` VALUES (614575, 'Servicio de radio y televisión por cable', 'costos');
INSERT INTO `puc` VALUES (614580, 'Transmisión de sonido e imágenes por contrato', 'costos');
INSERT INTO `puc` VALUES (614595, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6150, 'Actividad financiera', 'costos');
INSERT INTO `puc` VALUES (615005, 'De inversiones', 'costos');
INSERT INTO `puc` VALUES (615010, 'De servicio de bolsa', 'costos');
INSERT INTO `puc` VALUES (6155, 'Actividades inmobiliarias, empresariales y de alqu', 'costos');
INSERT INTO `puc` VALUES (615505, 'Arrendamientos de bienes inmuebles', 'costos');
INSERT INTO `puc` VALUES (615510, 'Inmobiliarias por retribución o contrata', 'costos');
INSERT INTO `puc` VALUES (615515, 'Alquiler equipo de transporte', 'costos');
INSERT INTO `puc` VALUES (615520, 'Alquiler maquinaria y equipo', 'costos');
INSERT INTO `puc` VALUES (615525, 'Alquiler de efectos personales y enseres doméstico', 'costos');
INSERT INTO `puc` VALUES (615530, 'Consultoría en equipo y programas de informática', 'costos');
INSERT INTO `puc` VALUES (615535, 'Procesamiento de datos', 'costos');
INSERT INTO `puc` VALUES (615540, 'Mantenimiento y reparación de maquinaria de oficin', 'costos');
INSERT INTO `puc` VALUES (615545, 'Investigaciones científicas y de desarrollo', 'costos');
INSERT INTO `puc` VALUES (615550, 'Actividades empresariales de consultoría', 'costos');
INSERT INTO `puc` VALUES (615555, 'Publicidad', 'costos');
INSERT INTO `puc` VALUES (615560, 'Dotación de personal', 'costos');
INSERT INTO `puc` VALUES (615565, 'Investigación y seguridad', 'costos');
INSERT INTO `puc` VALUES (615570, 'Limpieza de inmuebles', 'costos');
INSERT INTO `puc` VALUES (615575, 'Fotografía', 'costos');
INSERT INTO `puc` VALUES (615580, 'Envase y empaque', 'costos');
INSERT INTO `puc` VALUES (615585, 'Fotocopiado', 'costos');
INSERT INTO `puc` VALUES (615590, 'Mantenimiento y reparación de maquinaria y  equipo', 'costos');
INSERT INTO `puc` VALUES (615595, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6160, 'Enseñanza', 'costos');
INSERT INTO `puc` VALUES (616005, 'Actividades relacionadas con la educación', 'costos');
INSERT INTO `puc` VALUES (616095, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6165, 'Servicios sociales y de salud', 'costos');
INSERT INTO `puc` VALUES (616505, 'Servicio hospitalario', 'costos');
INSERT INTO `puc` VALUES (616510, 'Servicio médico', 'costos');
INSERT INTO `puc` VALUES (616515, 'Servicio odontológico', 'costos');
INSERT INTO `puc` VALUES (616520, 'Servicio de laboratorio', 'costos');
INSERT INTO `puc` VALUES (616525, 'Actividades veterinarias', 'costos');
INSERT INTO `puc` VALUES (616530, 'Actividades de servicios sociales', 'costos');
INSERT INTO `puc` VALUES (616595, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (6170, 'Otras actividades de servicios comunitarios, socia', 'costos');
INSERT INTO `puc` VALUES (617005, 'Eliminación de desperdicios y aguas residuales', 'costos');
INSERT INTO `puc` VALUES (617010, 'Actividades de asociación', 'costos');
INSERT INTO `puc` VALUES (617015, 'Producción y distribución de filmes y videocintas', 'costos');
INSERT INTO `puc` VALUES (617020, 'Exhibición de filmes y videocintas', 'costos');
INSERT INTO `puc` VALUES (617025, 'Actividad de radio y televisión', 'costos');
INSERT INTO `puc` VALUES (617030, 'Actividad teatral, musical y artística', 'costos');
INSERT INTO `puc` VALUES (617035, 'Grabación y producción de discos', 'costos');
INSERT INTO `puc` VALUES (617040, 'Entretenimiento y esparcimiento', 'costos');
INSERT INTO `puc` VALUES (617045, 'Agencias de noticias', 'costos');
INSERT INTO `puc` VALUES (617050, 'Lavanderías y similares', 'costos');
INSERT INTO `puc` VALUES (617055, 'Peluquerías y similares', 'costos');
INSERT INTO `puc` VALUES (617060, 'Servicios funerarios', 'costos');
INSERT INTO `puc` VALUES (617065, 'Zonas francas', 'costos');
INSERT INTO `puc` VALUES (617095, 'Actividades conexas', 'costos');
INSERT INTO `puc` VALUES (62, 'Compras', 'costos');
INSERT INTO `puc` VALUES (6205, 'De mercancías', 'costos');
INSERT INTO `puc` VALUES (620599, 'Ajustes por inflación**', 'costos');
INSERT INTO `puc` VALUES (6210, 'De materias primas', 'costos');
INSERT INTO `puc` VALUES (621099, 'Ajustes por inflación**', 'costos');
INSERT INTO `puc` VALUES (6215, 'De materiales indirectos', 'costos');
INSERT INTO `puc` VALUES (621599, 'Ajustes por inflación**', 'costos');
INSERT INTO `puc` VALUES (6220, 'Compra de energía', 'costos');
INSERT INTO `puc` VALUES (622099, 'Ajustes por inflación**', 'costos');
INSERT INTO `puc` VALUES (6225, 'Devoluciones en compras (CR)', 'costos');
INSERT INTO `puc` VALUES (622599, 'Ajustes por inflación**', 'costos');

-- ----------------------------
-- Table structure for resumen_cuentas
-- ----------------------------
DROP TABLE IF EXISTS `resumen_cuentas`;
CREATE TABLE `resumen_cuentas`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `CUENTA` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resumen_cuentas
-- ----------------------------
INSERT INTO `resumen_cuentas` VALUES (1, 'CAJA', 162820000, 'Activo');
INSERT INTO `resumen_cuentas` VALUES (2, 'Clientes', 100000000, 'Activo');
INSERT INTO `resumen_cuentas` VALUES (3, 'Vehiculo', 108500000, 'Activo');
INSERT INTO `resumen_cuentas` VALUES (4, 'Equipos_De_Computo', 250000000, 'Activo');
INSERT INTO `resumen_cuentas` VALUES (5, 'Muebles_Y_Enseres', 35000000, 'Activo');
INSERT INTO `resumen_cuentas` VALUES (6, 'Edificios', 100000000, 'Activo');
INSERT INTO `resumen_cuentas` VALUES (7, 'Bancos', 96500000, 'Activo');
INSERT INTO `resumen_cuentas` VALUES (8, 'Obligaciones_Financieras', 470000000, 'Pasivo');
INSERT INTO `resumen_cuentas` VALUES (9, 'Capital_Suscrito_Y_Pagado', 100000000, 'Patrimonio');

-- ----------------------------
-- Table structure for utilidad_del_ejercicio
-- ----------------------------
DROP TABLE IF EXISTS `utilidad_del_ejercicio`;
CREATE TABLE `utilidad_del_ejercicio`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utilidad_del_ejercicio
-- ----------------------------
INSERT INTO `utilidad_del_ejercicio` VALUES (1, '2012-06-30', 282820000, 'haber');

-- ----------------------------
-- Table structure for vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo`  (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehiculo
-- ----------------------------
INSERT INTO `vehiculo` VALUES (1, '2012-05-30', 75000000, 'debe');
INSERT INTO `vehiculo` VALUES (2, '2012-06-03', 3500000, 'debe');
INSERT INTO `vehiculo` VALUES (3, '2012-06-30', 30000000, 'debe');

SET FOREIGN_KEY_CHECKS = 1;
