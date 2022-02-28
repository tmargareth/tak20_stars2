-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 05, 2022 at 08:55 PM
-- Server version: 10.3.31-MariaDB-0+deb10u1
-- PHP Version: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tak20_stars2`
--

-- --------------------------------------------------------

--
-- Table structure for table `childs_mouth`
--

CREATE TABLE `childs_mouth` (
  `id` int(11) UNSIGNED NOT NULL,
  `child_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Lapsesuu ei valeta';

--
-- Dumping data for table `childs_mouth`
--

INSERT INTO `childs_mouth` (`id`, `child_text`) VALUES
(1, 'Keha peab toitu saama, et ellu jääda. Ja see on kallis lõbu. Itaalia salat maksab näiteks üle viie krooni ruutmeeter (5a Vidar)'),
(2, 'Aafrika lehmad söövad banaane, aga kui nad on ahvid, siis elavad nad dzunglis ja otsivad kirpe. (5a Christel)'),
(3, 'Inimesel on mitmesugust nahka. Eesnahk on näiteks nahk, mis on inimesel eespool, ja taganahk asub tagumikus. (6a Therese)'),
(4, 'Naised koosnevad munasarjadest, ja nad mõtlevad rohkem. (6a Siri)'),
(5, 'Meeste kehal on rohkem esiosi. (6a Julie)'),
(6, 'Vanad inimesed ei pea autos istuma lastetooli. Aitab sellest, kui neil on kitsas rihm ümber. Kui juhtubki avarii, siis pole ka häda midagi, sest nad niikuinii surevad varsti ära (7a Alex)'),
(7, 'Et lapsi saada, peavad seemned võistlema. Kui seemned päris kõvasti spurdivad, siis võib juhtuda, et sünnib kolm kaksikut... (7a Johan)'),
(8, 'Et lapsi saada, peavad seemned võistlema. Kui seemned päris kõvasti spurdivad, siis võib juhtuda, et sünnib kolm kaksikut ja halvemal juhul saab nelimunalisi lapsi (5a Ville)'),
(9, 'Ega ei peagi abielluma kirikus. Seda võib teha ka sotsiaalkontoris. Või võib kokku kolida, nii et ei räägi kellelegi. Peaasi, et ise tead(6a Nina)'),
(10, 'Alguses saad rakuks, siis saad lapseks, siis saad emaks, siis saad vanaemaks, siis saad vanavanaemaks ja siis saad vanavanavanaemaks. Lõpuks on savi (6a Maria)'),
(11, 'Nina on tegelikult hingamise lihas. Aga seda võib kasutada ka tati vedamiseks. Emil, 6a'),
(12, 'Närvid on nagu mingi kampsun, mille jumal on meie sissekudunud. Kui üks lõng katki läheb, siis lähed hulluks ja paistad näost imelik. Robert, 7a'),
(13, 'Maainimesed naeravad väga palju, sest nad saavad nii palju värsket õhku. Ma ei usu, et nende lapsed peavad lasteaias käima, sest neil on kodus õues nii palju värsket õhku. Pealegi nad söövad lilli, sest see on kasulik. Maainimesed paistavad täitsa harilikud, eriti tagantpoolt. Aga kui on udu, siis neid ei ole näha. Victoria, 6a'),
(14, 'Ämm on karistus selle eest, kui abiellud isikuga, keda sa ei tunne. Pal, 7a'),
(15, 'Kui inimesed vanaks jäävad, siis nad enam ei ütle, et armastavad teineteist. Siis nad küsivad, et kas tahad kohvi juurde küpsist ka või. Tord, 7a'),
(16, 'Aadam oli minu järgi ristitud. Ta sõi Evaga õunu. Aga ainult ühe korra-ja siis oli nagu läbi kah. Adam, 9a'),
(17, 'Kui mõtlen vanaisast lapsena, kujutlen teda mustvalgena. Gabriel, 7a'),
(18, 'Armastus on siis, kui näed kedagi,aga tunned seda kõhus Sofia, 5a'),
(19, 'Laulatusel ei tohi naerda ega ei öelda. Catherine, 5a'),
(20, 'Mõned inimesed ei tulegi kunagi ilmale, vaid jäävadki marjateradeks. Thomas, 7a'),
(21, 'Kui pead koos vastu 65 aastat, siis saad kuldmedali. Siis peetakse kuldpulmi ja juuakse ja lõbutsetakse. Kui lahutad,saad ainult mõne plekitüki. Kare, 6a'),
(22, 'Mõnedel vanadel tädidel on habe, aga seda neile öelda ei tohi, sest nad hakkavad reageerima. Johan, 5a'),
(23, 'Vanainimesed murravad palju luid, sest nad komistavad pidevalt vaipade ja äärte ja ämbrite otsa. Ühel tädil, kes oli vist keegi muu kui minu vanaema, murdus enne tagumine jalg ja kui see paranes, siis murdus esimene jalg. Roberto, 6a'),
(24, 'Paljusid asju ei tohi vanadekodus teha. Näiteks ei tohi sõita rulaga, närida nätsu või kanda lühikesi ruudulisi spordipükse. Lars-Erik, 7a'),
(25, 'Kui oled surnud, siis graveeritakse või kremeeritakse. Kui valid viimase, siis see tähendab,et sust tehakse kreemi.Aga see ei ole vaniljemaitsega, vaid tavaline hall kreem. Jacob, 6a'),
(26, 'Keisrilõige on see, kui beebi lõigatakse välja tagavaraväljapääsu kaudu. Martina, 6a'),
(27, 'Inimesed on ehitatud keharakkudest. Rakud on nii pisikesed, et neid peab silmadega jõllitama, muidu ei näe. Thomas, 6a'),
(28, 'Õlu muudab keha tihti väga ebasümmeetriliseks. Herman, 9a'),
(29, 'Kui raha üldse ei ole, siis paljud hakkavad vaesteks. Roope, 6a'),
(30, 'Mõned lehmad on mustad. Need on sissesõitnud. Karin, 5a'),
(31, 'Tüüpiline siga on roosa ja tal on koonus kaks auku. Pauline, 6a'),
(32, 'Ämm on vanaema, kes ei ole selle ema, kellest juttu on. Hanne, 6a');

-- --------------------------------------------------------

--
-- Table structure for table `top_books`
--

CREATE TABLE `top_books` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2021 TOP 100 Rahva Raamatu raamatut';

--
-- Dumping data for table `top_books`
--

INSERT INTO `top_books` (`id`, `book_name`, `book_author`) VALUES
(1, 'Minu magus köök. Koogid – lihtsad ja küpsetamata', 'Ragne Värk'),
(2, 'Kus laulavad langustid', 'Delia Owens'),
(3, 'Astroloogiline prognoos. Tiigri aasta 2022', 'Igor Mang'),
(4, 'Lihtsate asjade tähtsus', 'Lauri Räpp'),
(5, 'Kuidas alustada investeerimisega', 'Kristi Saare'),
(6, 'Vaimu paik', 'Jaan Kaplinski, Tõnu Õnnepalu'),
(7, 'Miniatuurid mälupõhjast', 'Aino Pervik'),
(8, 'Seitsme põlve müsteerium', 'Ants Rootslane'),
(9, 'Jõulupõrsas', 'J. K. Rowling'),
(10, 'Poiss, mutt, rebane ja hobune', 'Charlie Mackesy'),
(11, 'Uue ajastu algus. Loo ise oma reaalsus', 'Mai-Agate Väljataga'),
(12, 'Nikulini kogutud anekdoodid', 'Juri Nikulin'),
(13, 'Onu Moritza sõnaraamat', 'David Vseviov'),
(14, 'Astroloogiline prognoos. Pühvli aasta 2021', 'Igor Mang'),
(15, 'Palk', 'Tõnu Õnnepalu'),
(16, 'Mälestused', 'Andrus Kivirähk'),
(17, 'Suure õhtusöögi kokaraamat', 'Joel Ostrat'),
(18, 'Mitte ainult minu tädi Ellen', 'Mudlum'),
(19, 'Ohjeldamatu raev', 'Cara Hunter'),
(20, 'Aktsiatega rikkaks saamise õpik 2.0', 'Jaak Roosaare'),
(21, 'Wim Hofi meetod', 'Wim Hof'),
(22, 'Leiutajateküla lood', 'Janno Põldma'),
(23, 'Rikas isa, vaene isa', 'Robert T. Kiyosaki'),
(24, 'Rikkaks saamise õpik. III trükk', 'Jaak Roosaare'),
(25, 'Armastuse 5 keelt', 'Gary Chapman'),
(26, 'AEG. Teekond nimega naine', 'Tiina Ristimets, Olga Makina'),
(27, 'Jussikese seitse sõpra', 'Silvi Väljal'),
(28, 'Väike prints', 'Antoine De Saint-Exupery'),
(29, 'Minu Viljandi. Tagasi alguses', 'Justin Petrone'),
(30, 'Sipsik', 'Eno Raud'),
(31, 'Vestlused Priiduga. Lahutus', 'Heidit Kaio'),
(32, 'Jess, lapsed!', 'Merilin Mandel'),
(33, 'Loomade farm / 1984', 'George Orwell'),
(34, 'Väikese hiire päev', 'Riikka Jäntti'),
(35, 'Minu parimad. Lihtsad kodused toidud ja küpsetised', 'Lia Virkus'),
(36, 'Füüsika õhtuõpik', 'Jüri Liiv'),
(37, 'Aastaga haigustest priiks. Tervenduskalender 2022', ''),
(38, 'Eluterve pohhuist', 'Tom Valsberg'),
(39, 'Mõtle nagu munk', 'Jay Shetty'),
(40, 'Taroskoop 2022', 'Kirsti Valdstein-Timmer'),
(41, 'Sööbik ja pisik', 'Thorbjörn Egner'),
(42, 'Väike nurgapood. Kingitus', 'Nicola May'),
(43, 'Uus maailma atlas', ''),
(44, 'Loodus laste moodi', 'Mari Ojasaar'),
(45, 'Serafima ja Bogdan', 'Vahur Afanasjev'),
(46, 'Kõige ilusamad jalutuskäigud Pariisis', 'Marina Laikjõe'),
(47, 'Seksi kummaline ajalugu', 'Kate Lister'),
(48, 'Naiseks olemise kunst', 'Katrin Saali Saul'),
(49, 'Ilf Petrov. Õilis isik', 'Ilja Ilf, Jevgeni Petrov'),
(50, 'Lõpp on algus', 'Jaana Maling, Tiit Trofimov'),
(51, 'Migreenist vabaks õige toiduga', 'Dr. Toomas Toomsoo, Kristel Randrüüt'),
(52, 'Armastatu viimane kiri', 'Jojo Moyes'),
(53, 'Suur Pettsoni ja Finduse raamat', 'Sven Nordqvist'),
(54, 'Janu on kõikidel üks', 'Kristiina Ehin'),
(55, 'Harry Potter ja tarkade kivi. Illustreeritud väljaanne', 'J. K. Rowling'),
(56, 'Väikese hiire jõulud', 'Riikka Jäntti'),
(57, 'Lava on elu', 'Ita Ever'),
(58, 'Väike nurgapood. Talv', 'Nicola May'),
(59, 'Alice imedemaal', 'Lewis Carroll'),
(60, 'Kuidas koerad mõtlevad. Mõistev omanik – õnnelik koer', 'Hannah Molloy'),
(61, 'Paw Patrol. Käpapatrulli unelood', ''),
(62, 'Elupildid', 'Lisa Aisato'),
(63, 'Tom õpib rahamängu. Eesti esimene rahatarkuse raamat lastele', 'Riin Tuttelberg'),
(64, 'Harry Potter ja Azkabani vang. Illustreeritud väljaanne', 'J. K. Rowling'),
(65, 'Suurim neist on armastus', 'Ulla-Maija Paavilainen'),
(66, 'Kondiitrikunst sinu köögis. Nõuandeid ja nippe kodukondiitrile', 'Olga Kaju'),
(67, 'Arvydas Sabonis. 11 peatükki suurima leeduka elust', 'Laisv? Radzevi?ien?, Vytaras Radzevi?ius'),
(68, 'Tobias ja teine B', 'Piret Raud'),
(69, 'Mis ka ei juhtuks', 'Debi Gliori'),
(70, 'Neljapäevane mõrvaklubi', 'Richard Osman'),
(71, 'Kõik on p*rses. Raamat lootusest', 'Mark Manson'),
(72, 'Eesti talu. Uuem taluarhitektuur 1850-1950', 'Heiki Pärdi'),
(73, 'Kus lendab part', 'Olav Osolin'),
(74, 'Kaka ja kevad', 'Andrus Kivirähk'),
(75, 'Väikese hiire talv', 'Riikka Jäntti'),
(76, 'Treener. Otse ja ausalt', 'Andres Sõber'),
(77, 'Eesti ajalugu I', 'Aivar Kriiska, Valter Lang, Ain Mäesalu, Andres Tvauri, Heiki Valk'),
(78, 'Pauksoni astroloogiline abimees 2022', 'Edda Paukson'),
(79, 'Kingin su aastatele elu', 'Inna Narro'),
(80, 'Peep ja sõnad', 'Eno Raud'),
(81, 'Sammhaaval', 'Simon Reeve'),
(82, 'Tants pika tüdrukuga', 'Mart Juur'),
(83, 'Pimeduse kütkes', 'Cara Hunter'),
(84, 'Kui keha ütleb ei. Varjatud stressi hind', 'Gabor Mate'),
(85, 'Paw patrol. Käpapatrulli jõulud', ''),
(86, 'Loodus laste moodi 2', 'Mari Ojasaar, Aaron Troy Parve'),
(87, 'Emotsioonid. Inimkonna suurim sõltuvus', 'Ingvar Villido'),
(88, 'Düün', 'Frank Herbert'),
(89, 'Kirjad Buenos Airesest', 'Eia Uus'),
(90, 'Lassemaia detektiivibüroo. Ootamatud jõulukingid', 'Martin Widmark'),
(91, 'Kirev maailm. Uurime ümbritsevat maailma', 'Clive Gifford'),
(92, 'Siin ja praegu: kohaoleku jõud', 'Eckhart Tolle'),
(93, 'Võitlus tuleviku pärast. 1933-1936 Pätsi aja rääkimata lood', 'Tarmo Vahter'),
(94, 'XXXII Suveolümpiamängud. Tokyo 2020. EOK ametlik Olümpiaraamat', 'Gunnar Press'),
(95, 'Ajast ja arust. Unest, teadvusest, tehisintellektist ja muustki', 'Jaan Aru'),
(96, 'Raha psühholoogia', 'Morgan Housel'),
(97, 'Eluolulised lood', 'Märt Treier'),
(98, 'Päikesevalvaja', 'Maja Lunde'),
(99, 'Iseendale', 'Marcus Aurelius'),
(100, 'Väike nurgapood. Taaskohtumine', 'Nicola May');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `childs_mouth`
--
ALTER TABLE `childs_mouth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_books`
--
ALTER TABLE `top_books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `childs_mouth`
--
ALTER TABLE `childs_mouth`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `top_books`
--
ALTER TABLE `top_books`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
