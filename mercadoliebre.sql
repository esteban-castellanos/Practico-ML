---------- !CUIDADO!: Este script borra, si existe, una base con el nombre "mercadoliebre" ----------

DROP SCHEMA IF EXISTS `mercadoliebre` ;
CREATE SCHEMA `mercadoliebre` DEFAULT CHARACTER SET utf8mb4 ;
USE `mercadoliebre` ;

CREATE TABLE `products` (
  `id` INT unsigned NOT NULL AUTO_INCREMENT,
  `code` INT unsigned NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `price` DECIMAL(10,2) unsigned NOT NULL,
  `discount` INT unsigned NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  `image` VARCHAR(45) NOT NULL,
  `createdAt` TIMESTAMP NOT NULL,
  `updatedAt` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`))
ENGINE=InnoDB;

INSERT INTO `products` VALUES
  (1,123456,'Cafetera Moulinex Dolce Gusto',12000.00,50,'visited','Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical al que nos tenía acostumbrados Dolce Gusto.En este post te contamos todo lo que necesitas saber sobre ella, desde sus características técnicas hasta la calidad de las cápsulas o price.','img-prod-code123456.jpg','2020-07-24 14:42:53','2020-07-24 14:42:53'),
  (2,123457,'Macbook Pro 2022',99999.00,3,'in-sale','Macbook Pro 2019 Mpxq2ll/a Intel Core i5 2.3 Ghz 8gb RAM 128gb SSD Pantalla 13.3\" Retina Apple Nueva Original. Importada de USA. Se entrega con la factura de compra para contar con la garantía del fabricante','img-prod-code123457.jpg','2020-07-24 14:42:53','2020-07-24 14:42:53'),
  (3,123458,'Samsung Galaxy S10',72999.00,25,'in-sale','Experiencia visual excepcional. Mirá tus series y películas favoritas con la mejor definición.Tendrás colores brillantes y detalles precisos en todos tus contenidos.Disfrutá aún más del mejor entretenimiento gracias a su vasta pantalla y ángulos de visión amplios.','img-prod-code123458.jpg','2020-07-24 14:42:53','2020-07-24 14:42:53'),
  (4,123459,'Heladera no frost Whirlpool WRM45A',47900.00,10,'in-sale','Disfrutá de la frescura de tus alimentos y almacenalos de manera práctica y cómoda en tu heladera Whirlpool, la protagonista de tu cocina. Su sistema no frost evita la generación de escarcha y te permitirá conservar el sabor y las propiedades nutritivas de los productos.A su vez, su freezer cuenta con una capacidad de 86 litros, que facilitará la distribución y el orden de tus congelados para que no te preocupes por la falta de espacio.','img-prod-code123459.jpg','2020-07-24 14:42:53','2020-07-24 14:42:53'),
  (5,123460,'Nikon Reflex D3500 - Kit',53000.00,20,'in-sale','Incluye la cámara D3500, el objetivo zoom AF-P DX NIKKOR 18-55mm y el superteleobjetivo zoom compacto AF-P DX NIKKOR 70-300mm. Ambos objetivos enfocan de forma rápida y silenciosa, lo que resulta ideal para grabar metraje de vídeo sin que se escuche apenas el ruido del accionamiento.','img-prod-code123460.jpg','2020-07-24 14:42:53','2020-07-24 14:42:53'),
  (6,123461,'Aire Acondicionado 3200w Frio / Calor',20999.00,12,'in-sale','AIRE SPLIT 3200W TACA-3200WCHSA/KC FC TCL. Capacidad frio 3200 Watts. Capacidad calor 3300 Watts. Potencia Electrica(W)frio 996. Potencia Electrica(W)calor 1028. Eficiencia energética calor C. Eficiencia energética frio A. Frigorias 2750 UNIDAD INTERIOR. Peso Bruto 10kg. Peso Neto 7 kg','img-prod-code123461.jpg','2020-07-24 14:42:53','2020-07-24 14:42:53'),
  (7,123462,'Notebook Lenovo I3 Intel 8gb Ram',36700.00,5,'in-sale','PROCESADOR / CHIPSET. CPU: Intel Core i3(8a generación) 8130U / 2.2 GHz. Velocidad turbo máxima: 3, 4 GHz. Numero de núcleos: Doble núcleo. Cache: 4 MB. Arquitectura de 64 bit: ss. MEMORIA CACHÉ. Tamaño instalada: 4 MB. ALMACENAMIENTO. Interfaz Serial ATA - 600','img-prod-code123462.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (8,123463,'Apple iPhone 11 Pro Dual SIM 256 GB',148000.00,2,'in-sale','¡El nuevo smartphone que lo tiene todo! Con este lanzamiento, Apple ha superado todos sus récords. Su diseño se destaca por sus líneas finas y distinguidas a partir de una sola hoja de vidrio resistente, combinada con aluminio de excelente calidad.','img-prod-code123463.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (9,123464,'Teclado Apple Magic Inalámbrico',11399.00,0,'visited','El teclado mágico combina un diseño elegante con una batería recargable incorporada y funciones clave mejoradas. Con un mecanismo de tijera estable debajo de cada tecla, así como un recorrido de teclas optimizado y un perfil bajo, el Teclado Mágico ofrece una experiencia de escritura notablemente cómoda y precisa.','img-prod-code123464.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (10,123465,'Mouse Inalámbrico Logitech M280',1200.00,10,'visited','Uso más cómodo para la mano derecha gracias a la forma contorneada con recubrimiento de goma blanda. Duración de las pilas hasta 18 meses, gracias al diseño para ahorrar energía.El M280 entra automáticamente en estado de suspensión cuando no se está usando.','img-prod-code123465.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (11,123466,'Parlante Inalámbrico Bose Soundtouch 10',29990.00,12,'visited','Parlante Inalámbrico Bose Soundtouch 10. SoundTouch®.La manera más sencilla de reproducir música en todo su hogar de forma inalámbrica. Características. » Marca: Bose. » Modelo: SoundTouch. » Color: Negro','img-prod-code123466.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (12,123467,'Home Theatre Sony Bdv-e4100',32990.00,0,'visited','El sonido Surround de 5.1 canales y 1000 W proporciona un audio de verdadero impacto en los efectos especiales de películas y efectos de sonido de música y deportes. Con la tecnología Near Field Communication(NFC) podés disfrutar de Sonido One- Touch para reproducir música de forma instantánea','img-prod-code123467.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (13,123468,'Smart TV Samsung 4K 50',34990.00,0,'visited','Con el Smart TV Samsung UN50MU6100, viví una nueva experiencia visual con la resolución 4K, que te presentará imágenes con gran detalle y de alta calidad. Ahora todo lo que veas cobrará vida con brillo y colores más reales. Gracias a su tamaño de 50\", podrás transformar tu espacio en una sala de cine y transportarte a donde quieras.','img-prod-code123468.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (14,123469,'Sony S6700 Reproductor De Blu-ray ',10999.00,5,'visited','Disfruta de tus películas favoritas con hasta cuatro veces más detalles que Full HD, gracias a la conversión de señales 4K. Cuando se conecta a un televisor compatible,un procesador de video avanzado convierte el video estándar en una señal cercana a la resolución 4K (3840 x 2160). Con ocho millones de píxeles, obtendrás imágenes más nítidas y detalladas, y la mayor calidad de la image te permite sentarte más cerca de la pantalla para que te sientas como en el cine.','img-prod-code123469.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (15,123470,'Bicicleta Mountain Bike Fierce Rodado 29',15979.00,12,'visited','Bicicleta Mountain Bike Fierce Rodado 29 21 velocidades. Tipo: Mountain Bike. Rodado: 29. Material Cuadro: Aluminio. Talle: 18. Suspensión: Delantera. Velocidades: 21 - Shimano. Sistema de Freno: Disco Mecánico. Llantas: Doble pared.','img-prod-code123470.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54'),
  (16,123471,'Sony Srs-xb12 Parlante Bluetooth Portátil',4699.00,5,'in-sale','Deja que la música dance cobre vida con EXTRA BASS™ Anima el ambiente con EXTRA BASS™1. Un radiador pasivo trabaja con el parlante monoaural para potenciar los tonos bajos y mejorar los graves, a pesar del tamaño compacto. ','img-prod-code123471.jpg','2020-07-24 14:42:54','2020-07-24 14:42:54');

---------- !CUIDADO!: Este script borra, si existe, una base con el nombre "mercadoliebre" ----------