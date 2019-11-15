-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2019 a las 20:18:30
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vibro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(24000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `year` varchar(64) NOT NULL,
  `division` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `author`, `title`, `content`, `date`, `year`, `division`, `subject`, `img`) VALUES
(1, 'Autor 1', 'Titulo 1', 'Contenido del post 1', '2019-11-15 17:22:36', '1ro', '1ra', 'Matemáticas', ''),
(2, 'Autor 2', 'Titulo 2', 'Contenido del post 2', '2019-11-15 17:22:39', '2do', '2da', 'Inglés', ''),
(3, 'Autor 3', 'Titulo 3', 'Contenido del post 3', '2019-11-15 17:22:44', '3ro', '3ra', 'Ciencias Sociales', ''),
(4, 'Autor 4', 'Titulo 4', 'Contenido del post 4', '2019-11-15 17:22:51', '4to', '4ta', 'Ingeniería', ''),
(5, 'Autor 5', 'Titulo 5', 'Contenido del post 5', '2019-11-15 17:22:57', '5to', '1ra', 'Materia Uno', ''),
(6, 'Autor desconocido', 'uwu', 'la cague', '2019-11-15 17:23:03', '6to', '2da', 'Programación', ''),
(7, 'Autor desconocido', 'patas', 'aaa', '2019-11-15 17:23:07', '7mo', '3ra', 'Python', ''),
(8, 'Autor desconocido', 'eze por favor deja de decirle uwu a mi novia', 'estoy hartote voy a rec agar a ctormpadas', '2019-11-15 17:23:12', '4to', '4ta', 'Universo', ''),
(9, 'Autor desconocido', 'hola', 'hola profe se meacaba la barteonma', '2019-11-15 17:23:16', '2do', '1ra', 'LEGO Legolas', ''),
(10, 'Autor desconocido', 'basta, gamer', 'no.(', '2019-11-15 17:23:20', '7mo', '2da', 'Sida', ''),
(11, 'Autor desconocido', 'Dungeond', 'd', '2019-11-15 17:42:49', '2do', '3ra', 'd', ''),
(12, 'Autor desconocido', 'f', 'f', '2019-11-15 17:55:50', '1ro', '2da', 'f', 'vibro/images/default.png'),
(13, 'Autor desconocido', 'f2', 'f2', '2019-11-15 17:56:25', '2do', '1ra', 'ff2', 'https://i.kym-cdn.com/entries/icons/original/000/023/810/7f34195a-b764-44b8-835b-fa9fcf44e52b.png'),
(14, 'Autor desconocido', 'IntroducciÃ³n a Python', 'Python es un lenguaje de programaciÃ³n poderoso y fÃ¡cil de aprender. Cuenta con estructuras de datos eficientes y de alto nivel y un enfoque simple pero efectivo a la programaciÃ³n orientada a objetos. La elegante sintaxis de Python y su tipado dinÃ¡mico, junto con su naturaleza interpretada, hacen de Ã©ste un lenguaje ideal para scripting y desarrollo rÃ¡pido de aplicaciones en diversas Ã¡reas y sobre la mayorÃ­a de las plataformas.\r\n\r\nEl intÃ©rprete de Python y la extensa biblioteca estÃ¡ndar estÃ¡n a libre disposiciÃ³n en forma binaria y de cÃ³digo fuente para las principales plataformas desde el sitio web de Python, https://www.python.org/, y puede distribuirse libremente. El mismo sitio contiene tambiÃ©n distribuciones y enlaces de muchos mÃ³dulos libres de Python de terceros, progra', '2019-11-15 18:07:22', '6to', '2da', 'ProgramaciÃ³n', 'https://i.ytimg.com/vi/chPhlsHoEPo/maxresdefault.jpg'),
(15, 'Autor desconocido', 'dou', '**dou**, muchachos.', '2019-11-15 18:13:52', '1ro', '2da', 's', 'vibro/images/default.png'),
(16, 'Autor desconocido', 'f', '<p><strong>dou</strong>, muchachada.\r\n\r\nÂ¡Aguante Markdown! EstÃ¡ <em>copado.</em></p>', '2019-11-15 18:15:51', '1ro', '1ra', 'd', 'vibro/images/default.png'),
(17, 'Autor desconocido', 'f', '<p>Linea 1\r\n\r\n\r\nLinea 2</p>', '2019-11-15 18:16:06', '1ro', '1ra', 'f', 'vibro/images/default.png'),
(18, 'Autor desconocido', 'hh', 'dddddddd\r\n\r\n<strong>fffffff</strong>\r\n\r\nhhhhhhhhhh', '2019-11-15 18:16:36', '1ro', '1ra', 'h', 'vibro/images/default.png'),
(19, 'Autor desconocido', 'd', '<p>ffsfsf\r\nsfsff\r\n\r\n\r\nsfsf\r\n</p>', '2019-11-15 18:19:27', '1ro', '1ra', 'd', 'vibro/images/default.png'),
(20, 'Autor desconocido', 'f', '<p>d\r\n\r\nh</p>', '2019-11-15 18:22:31', '1ro', '1ra', 'f', 'vibro/images/default.png'),
(21, 'Autor desconocido', 'IntroducciÃ³n a Python', '<p>Python es un lenguaje de programaciÃ³n poderoso y fÃ¡cil de aprender. Cuenta con estructuras de datos eficientes y de alto nivel y un enfoque simple pero efectivo a la programaciÃ³n orientada a objetos. La elegante sintaxis de Python y su tipado dinÃ¡mico, junto con su naturaleza interpretada, hacen de Ã©ste un lenguaje ideal para scripting y desarrollo rÃ¡pido de aplicaciones en diversas Ã¡reas y sobre la mayorÃ­a de las plataformas.\r\n\r\nEl intÃ©rprete de Python y la extensa biblioteca estÃ¡ndar estÃ¡n a libre disposiciÃ³n en forma binaria y de cÃ³digo fuente para las principales plataformas desde el sitio web de Python, <a href=\"https://www.python.org/\">https://www.python.org/</a>, y puede distribuirse libremente. El mismo sitio contiene tambiÃ©n distribuciones y enlaces de muchos mÃ³dulos libres de Python de terceros, programas y herramientas, y documentaciÃ³n adicional.\r\n\r\nEl intÃ©rprete de Python puede extenderse fÃ¡cilmente con nuevas funcionalidades y tipos de datos implementados en C o C++ (u otros lenguajes accesibles desde C). Python tambiÃ©n puede usarse como un lenguaje de extensiones para aplicaciones personalizables.\r\n\r\nEste tutorial introduce de manera informal al lector a los conceptos y caracterÃ­sticas bÃ¡sicas del lenguaje y el sistema de Python. Es bueno tener un interprete de Python a mano para experimentar, sin embargo todos los ejemplos estÃ¡n aislados, por lo tanto el tutorial puede leerse estando desconectado.\r\n\r\nPara una descripciÃ³n de los objetos y mÃ³dulos estÃ¡ndar, mirÃ¡ La referencia de la biblioteca. La referencia de la biblioteca provee una definiciÃ³n mÃ¡s formal del lenguaje. Para escribir extensiones en C o C++, leÃ© Extendiendo e Integrando el IntÃ©rprete de Python y la Referencia de la API Python/C. Hay tambiÃ©n numerosos libros que tratan a Python en profundidad.\r\n\r\nEste tutorial no pretende ser exhaustivo ni tratar cada una de las caracterÃ­sticas, o siquiera las caracterÃ­sticas mÃ¡s usadas. En cambio, introduce la mayorÃ­a de las caracterÃ­sticas mÃ¡s notables de Python, y te darÃ¡ una buena idea del gusto y estilo del lenguaje. Luego de leerlo, serÃ¡s capaz de leer y escribir mÃ³dulos y programas en Python, y estarÃ¡s listo para aprender mÃ¡s de los variados mÃ³dulos de la biblioteca de Python descriptos en La referencia de la biblioteca.</p>', '2019-11-15 18:24:14', '3ro', '1ra', 'ProgramaciÃ³n', 'https://i.kym-cdn.com/entries/icons/original/000/023/810/7f34195a-b764-44b8-835b-fa9fcf44e52b.png'),
(22, 'Autor desconocido', 'DOU', '<pre><p>ULTRA\r\n\r\nREQUETECONTRA\r\n\r\n<em><strong>DOU</strong></em></p></pre>', '2019-11-15 18:37:51', '2do', '1ra', 'No se', 'vibro/images/default.png'),
(23, 'Autor desconocido', 'ff', '<pre><p>No se capo, dejame de joder.</p></pre>', '2019-11-15 18:38:15', '1ro', '1ra', 'f', 'vibro/images/default.png'),
(24, 'Autor desconocido', 'Por ultima vez', '<pre><p>Python es un lenguaje de programaciÃ³n poderoso y fÃ¡cil de aprender. Cuenta con estructuras de datos eficientes y de alto nivel y un enfoque simple pero efectivo a la programaciÃ³n orientada a objetos. La elegante sintaxis de Python y su tipado dinÃ¡mico, junto con su naturaleza interpretada, hacen de Ã©ste un lenguaje ideal para scripting y desarrollo rÃ¡pido de aplicaciones en diversas Ã¡reas y sobre la mayorÃ­a de las plataformas.\r\n\r\nEl intÃ©rprete de Python y la extensa biblioteca estÃ¡ndar estÃ¡n a libre disposiciÃ³n en forma binaria y de cÃ³digo fuente para las principales plataformas desde el sitio web de Python, <a href=\"https://www.python.org/\">https://www.python.org/</a>, y puede distribuirse libremente. El mismo sitio contiene tambiÃ©n distribuciones y enlaces de muchos mÃ³dulos libres de Python de terceros, programas y herramientas, y documentaciÃ³n adicional.\r\n\r\nEl intÃ©rprete de Python puede extenderse fÃ¡cilmente con nuevas funcionalidades y tipos de datos implementados en C o C++ (u otros lenguajes accesibles desde C). Python tambiÃ©n puede usarse como un lenguaje de extensiones para aplicaciones personalizables.\r\n\r\nEste tutorial introduce de manera informal al lector a los conceptos y caracterÃ­sticas bÃ¡sicas del lenguaje y el sistema de Python. Es bueno tener un interprete de Python a mano para experimentar, sin embargo todos los ejemplos estÃ¡n aislados, por lo tanto el tutorial puede leerse estando desconectado.\r\n\r\nPara una descripciÃ³n de los objetos y mÃ³dulos estÃ¡ndar, mirÃ¡ La referencia de la biblioteca. La referencia de la biblioteca provee una definiciÃ³n mÃ¡s formal del lenguaje. Para escribir extensiones en C o C++, leÃ© Extendiendo e Integrando el IntÃ©rprete de Python y la Referencia de la API Python/C. Hay tambiÃ©n numerosos libros que tratan a Python en profundidad.\r\n\r\nEste tutorial no pretende ser exhaustivo ni tratar cada una de las caracterÃ­sticas, o siquiera las caracterÃ­sticas mÃ¡s usadas. En cambio, introduce la mayorÃ­a de las caracterÃ­sticas mÃ¡s notables de Python, y te darÃ¡ una buena idea del gusto y estilo del lenguaje. Luego de leerlo, serÃ¡s capaz de leer y escribir mÃ³dulos y programas en Python, y estarÃ¡s listo para aprender mÃ¡s de los variados mÃ³dulos de la biblioteca de Python descriptos en La referencia de la biblioteca.</p></pre>', '2019-11-15 18:41:23', '1ro', '1ra', 'ProgramaciÃ³n', 'https://i.kym-cdn.com/entries/icons/original/000/023/810/7f34195a-b764-44b8-835b-fa9fcf44e52b.png'),
(25, 'Autor desconocido', 'nel', '<p>fuck\r\n\r\nfuuuuuuck</p>', '2019-11-15 18:42:56', '1ro', '1ra', 'd', 'vibro/images/default.png'),
(26, 'Autor desconocido', 'que ondo gamers ', '<p>xdxdxd <em> inan es es re piola y erik re bobito </em> xdxdxdxdxdxdxdxdxdxdxdx ja ja ja salutres link en la descripcion yo no lo descargo porque ya lo tengo lol</p>', '2019-11-15 19:03:43', '1ro', '1ra', 'esta', 'https://www.google.com/search?q=big+yoshi&sxsrf=ACYBGNTKkukLE6s3bkNe45PKwu4_oS4rdQ:1573844590768&tbm=isch&source=iu&ictx=1&fir=KAFL0Zpapnxe9M%253A%252Cyi75AMw19koIUM%252C_&vet=1&usg=AI4_-kRCuPSsLZAnQXsRfRkKQAYJaeWs6Q&sa=X&ved=2ahUKEwjPw47-8-zlAhVmGbkGHYlUB');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
