-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 10:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesonajawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `anggotaKODE` int(9) NOT NULL,
  `anggotaNAMA` varchar(60) NOT NULL,
  `anggotaHP` char(15) NOT NULL,
  `anggotaEMAIL` varchar(60) NOT NULL,
  `anggotaPASSWORD` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`anggotaKODE`, `anggotaNAMA`, `anggotaHP`, `anggotaEMAIL`, `anggotaPASSWORD`) VALUES
(2, 'ino', '181282159215', 'wwasino@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'ina', '', 'wwasino@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'ine', '18128215', 'wwasino@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `beritaKODE` char(11) NOT NULL,
  `beritaJUDUL` varchar(255) NOT NULL,
  `kategoriberitaKODE` char(4) NOT NULL,
  `eventKODE` char(4) NOT NULL,
  `kabupatenKODE` char(5) NOT NULL,
  `beritaISI` text NOT NULL,
  `beritaISI2` text NOT NULL,
  `beritaSUMBER` varchar(255) NOT NULL,
  `beritaPENULIS` char(60) NOT NULL,
  `beritaTGL` date NOT NULL,
  `beritaICONFOTO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`beritaKODE`, `beritaJUDUL`, `kategoriberitaKODE`, `eventKODE`, `kabupatenKODE`, `beritaISI`, `beritaISI2`, `beritaSUMBER`, `beritaPENULIS`, `beritaTGL`, `beritaICONFOTO`) VALUES
('2017.10.001', 'Mengapa Orang Jawa Tengah Andal Mengolah Masakan Kambing?', 'KB01', 'NULL', '', 'Kambing adalah salah satu bahan masakan yang paling riskan untuk diolah. Tepat dalam mengolah kambing, hasil masakan tentu akan lezat, tetapi jika gagal mengolah kambing, makanan akan berbau, alot, dan merusak semua bumbu masakan lainnya.\r\n\r\nBicara soal kemampuan mengolah kambing sebagai sebuah masakan, bisa dibilang masyarakat Jawa Tengah jagonya. Nusantara mengenal beberapa masakan berbahan dasar kambing seperti sate, gulai, tongseng, tengkleng dan semua masakan tersebut berasal dari daerah di Jawa Tengah.\r\n\r\n\"Daerah di Jawa Tengah seperti Solo, Sleman, Bantul, Yogya, Boyolali, itu memang terkenal sebagai sentra kambing. Karena banyaknya kambing, mereka jadi tahu mengolahnya,\" kata pengamat kuliner, Arie Parikesit di acara Kecap Bango Melestarikan Kuliner Nusantara, di Restoran Oasis, Jakarta, Selasa (30/8/2016).\r\n\r\nMemang benar kata Arie, pengalaman KompasTravel menyantap masakan berbahan daging kambing di daerah Jawa Tengah memang tak pernah ada yang salah.\r\n\r\nDagingnya empuk sampai jeroan kambing pun dapat diolah menjadi masakan yang nikmat. Presiden Joko Widodo asal Solo, lewat akun Instagramnya mengatakan hampir tiap hari ia makan daging kambing, karena begitu gemar akan masakan daging kambing.\r\n\r\nJadi apa sebenarnya rahasia mengolah daging kambing dari ahlinya? Sutiarno, pemilik rumah makan Tongseng Petir Pak Nano mengatakan jika tak ada perbedaan antara daging kambing Jawa Tengah dan daerah lainnya.\r\n\r\n', '\"Paling penting biar tidak alot itu diseset bagian luar (selaput) daging. Jadi dagingnya saja. Itu sesetannya buat masak gulai. Dagingnya buat masak yang lain. Dagingnya juga tak boleh kena air, nanti bau,\" kata Sutiarno.\r\n\r\nPasangan Sutiarno, Marmi menambahkan daun jeruk berpengaruh pada bau atau tidaknya daging kambing. \"Lada juga, pakai lada hitam biar terasa, jangan lada putih,\" kata Marmi.\r\n\r\nSekarang terjawab sudah mengapa masyarakat Jawa Tengah andal dalam mengolah masakan kambing.\r\n\r\nJangan lewatkan mencoba kuliner legenda olahan kambing di Jawa Tengah seperti Tengkleng Mba Diah di Solo, Tongseng Petir Pak Nano di Bantul, Tongseng Kicik Pak Jede di Sleman dan masih banyak lainnya.', 'travel.kompas.com, 31 Agustus 2016', '--', '2017-08-08', 'masakankambing1.jpg'),
('2017.10.002', 'Serunya Menikmati Hidangan Kuliner Malam di Solo', 'KB01', '-', '33.72', 'Memanjakan lidah di malam hari mungkin merupakan pantangan bagi sebagian orang. Namun jika harus berhadapan dengan ragam kuliner Solo, bisa jadi Anda berubah pikiran dari diet. Ragam hidangan malam ini akan memanjakan lidah Anda meski di waktu istirahat. Berikut KompasTravel rangkum kuliner Solo yang bisa Anda cicipi pada tengah malam.', '', 'travel.kompas.com, tanggal 29 Juni 2017', '--', '2017-09-05', 'makanansolo1.jpg'),
('2017.10.003', 'Festival Kuliner di Semarang, Pengobat Rindu Masakan Khas', 'KB01', 'NULL', '33.74', 'Semarang - Salah satu alasan pulang kampung biasanya karena kangen dengan kuliner khas daerah. Di Kota Semarang, Jawa Tengah, ada event pelepas kangen makanan daerah selama musim mudik ini.\r\n\r\nBertempat di Mal Sri Ratu di Jalan Pemuda Semarang, digelar acara Festival Makanan Pulang Semarang sejak hari H Lebaran tanggal 25 Juni 2017 lalu hingga 2 Juli 2017 mendatang.\r\n\r\nAda 60 stand kuliner pada acara tersebut dan yang disajikan sangat beragam mulai dari makanan khas Kota Semarang hingga dari beberapa daerah di Jawa Tengah.\r\n', 'Menu yang dijual antara lain, lunpia, mi kopyok Semarang, gule bustaman Semarang, sate sarepeh Rembang, garangasem Kudus, mi Belitung, dan berbagai makanan serta minuman lainnya.\r\n\r\nPengunjungnya ternyata berlimpah, sejak acara dibuka mulai pukul 10.00 WIB hingga 21.00 WIB malam. Penyelenggara acara, Firdaus mengatakan respon masyarakat cukup baik karena mereka melepas kerinduan akan makanan tradisional.', 'www.news.detik.com', '--', '2017-06-29', 'iconkulinerSMGjuni17.jpg'),
('2019.10.001', 'Embung Nglanggeran Kering, Jumlah Kunjungan Menurun Signifikan', 'KB01', 'even', '34.03', 'Mengeringnya air di embung Nglanggeran ternyata berdampak terhadap jumlah kunjungan wisatawan. Bahkan, dari belasan ribu orang, saat ini pengunjung embung Nglanggeran turun hingga 2 ribu dalam satu bulan.', 'Pantauan detikcom, tidak ada air di dalam embung Nglanggeran. Tak hanya itu, kondisi tersebut membuat suasana di embung Nglanggeran sangat sepi pengunjung.\r\n\r\nPengelola Gunung Api Purba Nglanggeran, Aris Triyono mengakui keringnya embung Nglanggeran memang berdampak pada jumlah kunjungan wisata. Hal itu karena embung Nglanggeran menjadi salah satu tempat wisata favorit di Desa Wisata Nglanggeran.', 'travel.detik.com', 'Pradito Rida Pertana', '2019-10-09', 'nglanggeran1.jpg'),
('2019.10.002', 'Bukan Puncak, Ini Kebun Teh di Jawa Tengah', 'KB02', 'even', '33.13', ' Liburan ke Jawa Tengah, kamu bisa merasakan sensasi sejuk ala kawasan Puncak Bogor. Ada Kebun Teh Kemuning yang sangat eksotis tapi luput dari perhatian.\r\n\r\nKebun Teh Kemuning berlokasi di Kemuning, Kecamatan Ngargoyoso, Karanganyar, Jawa Tengah. Kebun teh ini berada di ketinggian 800-1540 mdpl. Karena letaknya yang berada di atas ketinggian inilah, cuaca di Kemuning sangat sejuk, bahkan cenderung dingin.', 'Destinasi ini pun sangat cocok untuk lokasi liburan bareng keluarga. Merilekskan pikiran, melihat hijau-hijau sejauh mata memandang, stress pun hilang.\r\n\r\ndetikTravel berkunjung ke Kebun Teh Kemuning beberapa pekan lalu untuk mengekplorasi keindahan Jawa Tengah bersama Kementerian Pariwisata. Berjarak kurang lebih 28 Km dari Kota Solo, Kemuning bisa ditempuh selama kurang lebih 1,5 jam menggunakan mobil pribadi.', 'travel.detik.com', 'Wahyu Setyo Widodo', '2017-05-19', 'kebun1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `fasilitasKODE` char(4) NOT NULL,
  `fasilitasNAMA` varchar(255) NOT NULL,
  `fasilitasGUNA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`fasilitasKODE`, `fasilitasNAMA`, `fasilitasGUNA`) VALUES
('FS01', 'Tempat Parkir', 'Sebagai sarana tempat untuk memarkirkan kendaraan para pengunjung'),
('FS02', 'Restaurant (Rumah Makan)', 'Sebagai sarana yang disediakan obyek wisata untuk menyediakan sarana makan siang maupun malam '),
('FS03', 'MCT (Mandi, Cuci, Toilet)', 'Sarana yang tersedia untuk digunakan sebagai sarana MCK'),
('FS04', 'Warung Makan', 'Fasilitas yang tersedia untuk memberikan layanan kepada pengujung yang memerlukan sarapan atau makan dan minum, yiatu warung2 semi permanen');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitasobyek`
--

CREATE TABLE `fasilitasobyek` (
  `fasilitasobyekKODE` char(4) NOT NULL,
  `obyekKODE` char(4) NOT NULL,
  `fasilitasKODE` char(4) NOT NULL,
  `fasilitasobyekKET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fotoberita`
--

CREATE TABLE `fotoberita` (
  `beritafotoKODE` char(16) NOT NULL,
  `beritafotoNAMA` varchar(255) NOT NULL,
  `beritaKODE` char(11) NOT NULL,
  `beritafotoGAMBAR` varchar(255) NOT NULL,
  `beritafotoTGLAMBIL` date NOT NULL,
  `beritafotoJUDUL` varchar(255) NOT NULL,
  `beritafotoKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotoberita`
--

INSERT INTO `fotoberita` (`beritafotoKODE`, `beritafotoNAMA`, `beritaKODE`, `beritafotoGAMBAR`, `beritafotoTGLAMBIL`, `beritafotoJUDUL`, `beritafotoKET`) VALUES
('2017.10.002-FB01', 'Seporsi gudeg cakar, salah satu kuliner Solo/Surakarta yang buka dini hari.', '2017.10.002', 'makanansolo2.jpeg', '2017-09-05', 'Gudeg Cakar Mergoyudan', 'Sepintas memang gudeg ini tak berbeda dengan Gudeg Jogja. Namun setelah Anda cicipi akan terasa perbedaannya.  Gudeg Cakar Mergoyudan memiliki cita rasa gurih dari nasi hingga lauknya, hanya sedikit rasa manis di gudeg, dan pedas dari sambal goreng kreceknya.  Gudeg ini berlokasi di Jalan Monginsidi, Mergoyudan, Surakarta, tepat di depan Gereja Kristen Jawa, dan SMA Negeri 1 Surakarta. Gudeg Cakar buka mulai buka pukul 01.30 dini hari, tetapi bisa habis hanya dalam waktu dua jam saja. Meski begitu, ia juga memiliki beberapa cabang di Solo.'),
('2017.10.002-FB02', 'Nasi Liwet khas Solo dengan nasi gurih, suwiran ayam kampung, sambal goreng jipang, telur rebus, dan ereh diatasnya. Bisa juga menggunkanan lauk ati ampela atau usus ayam.', '2017.10.002', 'makanansolo3.jpeg', '2017-09-05', 'Nasi Liwet Solo', 'Nasi ini merpakan salah satu hidangan yang tak boleh dilewatkan saat berkunjung ke Solo. Nasi yang termasuk golongn nasi gurih ini dijajakan mulai pagi hingga malam hari di beberapa titik di Solo.  Salah satunya yang tak pernah sepi ialah di Nasi Liwet Bu Sarmi. Nasi liwet ini buka dua kali dalam satu hari, mulai pukul 00.00â€“12.00 WIB siang, dan mulai pukul 18.00â€“00.00 WIB malam.  Nasi liwet ini letaknya cukup strategis, di Jalan Kapten Mulyadi, Kedung Lumbu, kawasan Pasar Kliwon, Kota Surakarta, Jawa Tengah. Meski begitu, Nasi Liwet Solo bisa Anda temui banyak disekitar Kraton Mangkunegaraan, Solo Baru, hingga Desa Menuran, Sukoharjo, yang merupakan tempat lahirnya nasi liwet solo.'),
('2017.10.002-FB03', 'Jack Rudy, sajian susu murni dicampur sirop cokelat dan jahe dari Shi Jack, Solo.', '2017.10.002', 'makanansolo4.jpg', '2017-09-05', 'Susu Shi Jack', 'Kenyang menyantap makanan, kini Anda harus mencoba minumannya. Munuman segar olahan susu murni dari Boyolali ini diracik dengan apik di Kota Solo.  Terkenal dengan nama Susu Shi Jack, kedai yang sudah memiliki beberapa cabang di Solo ini tersohor karena kesegaran susunya. Selain itu juga karena ragam menunya yang sangat banyak. Ada 50 menu susu yang bisa Anda pilih.  Shi Jack beroperasional dari pukul 18.00 sampai pukul 00.30 WIB. Selain di Jalan Radjiman, Shi Jack membuka cabang di Jalan Veteran.  Tak hanya aneka susu segar yang diracik dengan berbagai campuran, Shi Jack juga menjajakan makanan ringan seperti aneka sate dan gorengan.'),
('2017.10.003-FB01', '', '2017.10.003', 'beritakulinerSMGjuni17-1.jpg', '2017-06-29', '', 'Acara yang sudah digelar 2 kali itu sangat diminati, bahkan tercatat setiap harinya jumlah pengunjung mencapai 5.000 orang. Para pedagang pun sudah menyiapkan jumlah porsi yang banyak untuk melayani penjual.  \"Alhamdulillah ramai seperti biasa. Sekitar 5.000-an orang yang datang per hari,\" pungkas Firdaus.  Salah satu pengunjung dari Bogor, Ribka Diah, mengatakan dirinya sedang mudik di daerah Mrican, Semarang dan sengaja datang ke acara kuliner itu untuk menikmati makanan khas Semarang.  \"Puas sekali ke sini, makanan apa saja ada. Mengobati kangen makanan Semarang,\" ujar Diah.'),
('2017.10.003-FB02', '', '2017.10.003', 'beritakulinerSMGjuni17-2.jpg', '2017-06-29', '', 'Sementara itu salah satu pedagang es dawet, Nuning, mengaku pengunjung yang datang cukup banyak. Meski kerepotan melayani, namun dirinya senang dengan kesibukan tersebut.  \"Ramai sekali ini, kemarin dagangan saya habis jam 19.00 WIB. Mulai hari pertama lebaran sudah ramai,\" ujar Nuning.  Jadi, bagi pemudik yang masih berada di Semarang, tidak ada salahnya wisata kuliner menjadi pilihan pelepas rindu dan ajang berkumpul keluarga selain mengunjungi lokasi-lokasi wisata di ibu kota Jawa Tengah itu. (alg/mbr)'),
('2019.10.001-BF01', 'Foto: (Pradito Rida Pertana/detikTravel)', '2019.10.001', 'nglanggeran2.jpg', '0000-00-00', 'Kawasan Wisata Embung Nglanggeran', '\"Kering kerontangnya embung (Nglanggeran) membuat kunjungan wisata (di embung Nglanggeran) berkurang,\" katanya saat dihubungi wartawan, Rabu (9/10/2019) sore.'),
('2019.10.001-BF02', 'Foto: (Pradito Rida Pertana/detikTravel)', '2019.10.001', 'nglanggeran3.jpg', '0000-00-00', 'Kawasan Wisata Embung Nglanggeran', '\"Biasanya saat air di embung penuh itu, dalam sebulan bisa 10 sampai 15 ribu pengunjung yang datang. Tapi kalau pas embungnya kering seperti saat ini ya turun jadi sekitar 2 ribu pengunjung dalam satu bulan,\" imbuh Aris.  Karena itu, ia bersama pengelola lainnya menyiasati keringnya embung Nglanggeran dengan mengalihkan tujuan wisata pengunjung ke objek wisata lainnya. Mengingat masih ada pengunjung yang datang ke embung Nglanggeran.'),
('2019.10.001-BF03', 'Foto: (Pradito Rida Pertana/detikTravel)', '2019.10.001', 'nglanggeran4.jpg', '0000-00-00', 'Embung yang Kering', '\"Kalau pengunjung datang nanti kita sarankan untuk ke Gunung Api Purba Nglanggeran. Tapi kalau pengunjung tetap ingin ke embung ya kita persilakan dan diarahkan untuk menikmati sunset dari embung dengan background Gunung Api Purba (Nglanggeran),\" ucapnya.  Aris menambahkan, untuk tiket masuk ke kawasan kebun buah Nglanggeran, setiap pengunjung dipatok Rp 10 ribu per orang.'),
('2019.10.002-BF01', '(Wahyu/detikTravel)', '2019.10.002', 'kebun2.jpg', '0000-00-00', 'Pemandangan Kebun Teh Kemuning', 'Medan yang harus ditempuh menuju ke Kemuning, tak jauh berbeda dengan medan yang ada di Kawasan Puncak. Jalanan berkelak-kelok juga naik dan turun, jadi pemandangan yang biasa. Yang bikin luar biasa adalah, sejauh mata memandang, kita bisa melihat hamparan kebun teh hijau yang bikin segar indera penglihatan.  Kebun Teh Kemuning ini bisa dinikmati traveler secara cuma-cuma, alias tidak perlu membayar tiket masuk. Namun untuk beragam fasilitasnya, traveler wajib mengeluarkan uang ekstra. Ada aktivitas outdoor yang bisa dicoba, mulai dari naik ATV, main flying fox, hingga paralayang.  Tarifnya tentu saja berbeda-beda, dari mulai Rp 20 ribu untuk flying fox hingga Rp 350 ribu untuk main paralayang. Traveler juga bisa bersepeda mengelilingi kebun teh Kemuning di Dusun Sumbersari. Rute ini sangat direkomendasikan untuk traveler karena jalurnya relatif landai dan menurun.'),
('2019.10.002-BF02', '(Wahyu/detikTravel)', '2019.10.002', 'kebun3.jpg', '0000-00-00', 'Hijau sejauh mata memandang ', 'Tak lengkap berkunjung ke Kebun Teh Kemuning tanpa menyicipi sedapnya seduhan daun teh yang dipanen di kebun ini. Sepanjang jalur Kebun Teh Kemuning, ada banyak kafe buat ngeteh sore-sore yang sangat menarik. Beberapa di antaranya adalah Bale Branti, Resto Kemuning Indah dan Ndoro Dongker.  Traveler bisa menyicipi seduhan teh pilihan, sambil makan jajanan ringan macam pisang goreng dan teman-temannya. Ditemani obrolan santai bersama teman-teman, rasanya melewatkan sore di Kemuning akan sangat menyenangkan.'),
('2019.10.002-BF03', '(Wahyu/detikTravel)', '2019.10.002', 'kebun4.jpg', '0000-00-00', 'Kebun teh ini cocok banget buat refreshing', 'Sebenarnya dari sekian banyak tempat nge-teh di sekitar Kemuning, detikTravel paling penasaran dengan Ndoro Dongker. Soalnya desainnya kekinian banget, dan asyik buat nongkrong sekaligus foto-foto. Sayang karena keterbatasan waktu, detikTravel tidak jadi mampir, mungkin di lain kesempatan.  Traveler yang ingin berakhir pekan menyenangkan bisa mengunjungi Kebun Teh Kemuning untuk menghilangkan penat. Jangan lupa foto-foto, dan diunggah di sosial media biar makin hits dan kekinian. (wsw/aff)');

-- --------------------------------------------------------

--
-- Table structure for table `fotoobyekwisata`
--

CREATE TABLE `fotoobyekwisata` (
  `fotoobyekKODE` char(17) NOT NULL,
  `fotoobyekNAMA` varchar(255) NOT NULL,
  `obyekKODE` char(12) NOT NULL,
  `fotoobyekKET` text NOT NULL,
  `fotoobyekTGLAMBIL` date NOT NULL,
  `fotoobyekGAMBAR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotoobyekwisata`
--

INSERT INTO `fotoobyekwisata` (`fotoobyekKODE`, `fotoobyekNAMA`, `obyekKODE`, `fotoobyekKET`, `fotoobyekTGLAMBIL`, `fotoobyekGAMBAR`) VALUES
('33.12.01-W01-OF01', 'Gedung Museum Karst', '33.12.01-W01', 'Di dalam gedung atau bangunan yang megah tesebut terdapat banyak jenis-jenis batu yang bersasal dari seluruh Indonesia', '2016-06-20', 'museumkarst1.jpg'),
('33.12.01-W01-OF02', 'Pura Puncak Jagad Spiritual', '33.12.01-W01', 'Merupakan pura yang digunakan oleh umat Hindu melakukan ibadah keagamaan, biasanya banyak yang hadir dari Bali', '2016-06-20', 'museumkarst2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hasilkueri`
--

CREATE TABLE `hasilkueri` (
  `obyekKODE` char(12) NOT NULL,
  `kecamatanKODE` char(8) NOT NULL,
  `kabupatenKODE` char(5) NOT NULL,
  `kategoriKODE` char(4) NOT NULL,
  `obyekPOPULARITAS` int(1) NOT NULL,
  `obyekKEMUDAHAN` int(1) NOT NULL,
  `obyekWAKTUKUNJUNG` int(3) NOT NULL,
  `jamBUKA` time NOT NULL,
  `jamTUTUP` time NOT NULL,
  `Customer_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hasilobyek`
--

CREATE TABLE `hasilobyek` (
  `obyekKODEasal` char(12) NOT NULL,
  `obyekKODEtujuan` char(12) NOT NULL,
  `obyekjarak` float NOT NULL,
  `obyekwaktutempuh` int(6) NOT NULL,
  `jmljarak` float NOT NULL,
  `jmlwaktutempuh` int(6) NOT NULL,
  `kabupatenKODE_awal` char(5) NOT NULL,
  `kabupatenKODE_berikut` char(5) NOT NULL,
  `Customer_ID` varchar(100) NOT NULL,
  `rute` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `jarakobyek`
--

CREATE TABLE `jarakobyek` (
  `ruteKODE` int(10) NOT NULL,
  `obyekKODEasal` char(12) NOT NULL,
  `obyekKODEtujuan` char(12) NOT NULL,
  `obyekjarak` float NOT NULL,
  `obyektempuh` int(6) NOT NULL,
  `obyekRUTE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jarakobyek`
--

INSERT INTO `jarakobyek` (`ruteKODE`, `obyekKODEasal`, `obyekKODEtujuan`, `obyekjarak`, `obyektempuh`, `obyekRUTE`) VALUES
(1, '33.12.01-W01', '33.12.01-W02', 5, 10, '0'),
(2, '33.12.01-W01', '33.12.12-W01', 25, 40, 'Jalanan Lancar'),
(3, '33.12.01-W02', '33.12.12-W01', 20, 30, 'a'),
(4, '33.13.07-W03', '33.13.07-W04', 2, 15, 'Merupakan jalan kecamatan yang mulus namun jalan berliku-liku melalui perbukitan, perlu hati-hati ketika memasuki kawasan air terjun'),
(5, '33.13.07-W01', '33.13.07-W05', 4, 20, 'Melalui jalan desa yang tidak lebar dan jalanan menanjak dan turunan, perlu kehati-hatian pengendara'),
(6, '33.13.07-W04', '33.13.07-W01', 2, 10, 'Melalui jalan desa yang tidak lebar dan jalanan menanjak dan turunan, perlu kehati-hatian pengendara '),
(7, '33.13.07-W05', '33.13.07-W02', 1, 3, 'Jalanan cukup luas dan lancar'),
(8, '33.13.07-W02', '33.13.17-W01', 7, 30, 'Jalanan mulus, namun medan jalan berliku dan tanjakan diantara perbukitan kebun teh yang sejuk, perlu ekstra hati-hati'),
(9, '33.13.07-W03', '33.13.07-W05', 3, 12, 'Jalanan cukup luas dan lancar'),
(10, '33.13.07-W03', '33.13.06-W01', 10, 20, 'Melalui jalan ngargoyoso dilanjutkan ke jalan raya solo - tawangmangu'),
(11, '33.13.06-W01', '33.13.06-W02', 2, 6, 'Mealui jalan raya tawangmangu dilanjutkan ke jalan sekipan, yaitu jalan desa'),
(12, '34.04.09-W01', '34.04.09-W02', 1, 5, 'Antara Candi Sari ke Candi Kalasan hanya dipisahkan oleh jalan Raya Solo - Yogyakarta, sebenarnya cukup dekan antara kedua candi ini'),
(13, '34.04.09-W02', '34.04.09-W03', 4, 10, 'Apabila dari arah Yogyakarta ke Solo maka Candi Sari lebih dulu diliwati berada di sebelah kiri jalan selanjutnya menuju ke Candi Prambanan'),
(14, '34.04.09-W03', '33.10.01-W01', 3, 15, 'Dari arah Candi Prambanan melaui jalan Desa untuk menuju ke Candi Plaosan. Antara Candi Plaosan Lor dan Candi Plaosan Kidul dipisahkan oleh jalan Desa'),
(15, '33.10.01-W01', '33.10.01-W02', 3, 15, 'Dari arah Candi Plaosan dilalui melalui jalan Desa. Saat ini telah tersedia tempat parkir yang cukup, termasuk bus'),
(16, '33.10.01-W02', '34.04.09-W04', 4, 15, 'Jalan yang dilalui melalui jalan Piyungan'),
(17, '34.04.09-W04', '34.04.09-W06', 2, 10, 'Jalur perjalanan dari Keraton Boko ke Candi Ijo dilalui melalui jalan Desa dengan melalui beberapa tanjakan, diperlukan kehati-hatian. '),
(18, '34.04.09-W06', '34.04.09-W05', 1, 5, 'Jalur yang dilalui merupakan jalan Desa, ketika anda melakukan perjalanan dari Candi Ijo ke Keraton Ratu Boko, akan melalui Taman Tebing Breksi, dan parkir sangat luas.'),
(19, '34.04.09-W03', '33.08.02-W01', 51, 105, 'Sebaiknya tidak mengikuti jalur peta goolge karena tidak diarahkan melalui jalan raya kabupaten atau propinsi sehingga jalannya tidak luas, sebaiknya melalui jalan raya Yogyakarta - Magelang lanjut ke jalan raya Yogyakarta - Solo'),
(20, '34.04.09-W03', '33.12.12-W01', 61, 90, 'Jalan yang dilalui adalah jalan yang tidak terlalu lebar, melalui jalan desa dan kecamatan. Jalan Weru - Cawas'),
(21, '34.04.09-W02', '34.04.09-W01', 1, 5, 'Antara Candi Sari ke Candi Kalasan hanya dipisahkan oleh jalan Raya Solo - Yogyakarta, sebenarnya cukup dekan antara kedua candi ini '),
(22, '34.04.09-W04', '34.04.09-W03', 4, 10, 'Melalui jalan Piyungan'),
(23, '34.04.09-W04', '34.04.09-W01', 5, 10, 'Banyak kemungkinan jalan karena melalui jalan Desa'),
(24, '34.04.09-W04', '33.10.01-W02', 2, 6, 'Melalui jalan desa, dan banyak alternatif jalan'),
(25, '34.03.04-W01', '34.03.04-W02', 2, 6, 'Melalui jalan ngoro ngoro ombo, kemudian masuk ke jalan desa, hanya ada satu arah menuju embung, dan kembali melalui jalur lain yang satu arah juga.'),
(26, '34.03.04-W02', '34.03.03-W01', 17, 25, 'Melalui jalan Nasional III atau jalan Raya Jogja - Wonosari'),
(27, '34.03.03-W01', '34.03.01-W01', 8, 15, 'Melalui Jalan Baron - disarankan tidak melalui jalan alternatif'),
(28, '34.03.03-W01', '34.03.01-W02', 8, 15, 'Melalui Jalan Baron - disarankan tidak melalui jalan alternatif'),
(29, '34.03.01-W01', '34.03.01-W02', 0, 1, 'Satu lokasi dipisahkan oleh taman, kurang lebih 250 m jaraknya'),
(30, '34.03.01-W02', '34.03.15-W01', 17, 25, 'Melalui Jalan Baron dilanjutkan ke Jalan Pantai Selatan Jawa'),
(31, '34.03.15-W01', '34.03.17-W01', 4, 7, 'Jarak sebenarnya cukup dekat, tetapi untuk menuju ke Pantai Baron harus memutar kembali jika menggunakan kendaraan roda 4'),
(32, '34.03.17-W01', '34.03.17-W02', 2, 7, 'Peta google menunjukkan jalan yang dekat melalui Jl. ke Puncak Tim, tetapi jalan ini tidak boleh dilalui kendaraan, sehingga harus memutar kembali melalui Jalan Pantai Selatan Jawa'),
(33, '34.03.17-W02', '34.03.17-W03', 1, 4, 'Melalui Jalan Pantai Selatan Jawa, rumah makan ini sering disebut juga Pondok Makan Lesehan'),
(34, '34.03.17-W03', '34.03.17-W04', 2, 4, 'Melalui Jalan Pantai Selatan Jawa dilanjutkan ke Jalan Sepanjang'),
(35, '34.03.17-W04', '34.03.17-W05', 1, 3, 'Pantai Nglolang merupakan cekungan yang tidak luas, cocok untuk wisata pribadi yang membutuhkan ketenangan, didekatnya terdapat rumah joglo. Pantai ini bersebelahan dengan Pantai Sepanjang'),
(36, '34.03.17-W05', '34.03.17-W06', 3, 8, 'Melewati kembali Pantai Sepanjang dilanjutkan ke Jalan Pantai Selatan Jawa'),
(37, '34.03.17-W04', '34.03.17-W06', 2, 5, 'Melalui Jalan Pantai Selatan Jawa'),
(38, '34.03.17-W06', '34.03.17-W07', 4, 8, 'Melalui Jalan Pantai Selatan Jawa, diantara jalur ini ada beberapa pantai yang belum banyak dikenal seperti Pantai Ngrumput, Pantai Batueng, Pantai Sarangan, '),
(39, '34.03.17-W07', '34.03.17-W08', 2, 6, 'Melalui Jalan Pantai Selatan Jawa, diaantara jalur ini terdapat beberapa panti seperti  Pantai Sandranan, Pantai Ngandong, dan Pantai Sundak'),
(40, '34.03.17-W08', '34.03.07-W01', 0, 1, 'Antara Pantai Somandeng dengn Pantai Indrayanti hanya dipisahkan oleh sebuah bukit kecil, pemandangan sangat indah bila naik ke bukit tersebut dapat melihat ke sebelah barat Pantai Somadeng dan disebelah timur Pantai Indrayanti'),
(41, '34.03.07-W01', '33.12.01-W01', 41, 105, 'Banyak alternatif jalan, disarankan untuk melalui Jalan Pantai Selatan Jawa dilanjutkan ke Jalan Tepus menuju Kecamatan Semanu baru dilanjutkan ke jalur ke Pracimantoro.'),
(42, '33.13.17-W01', '33.13.06-W01', 19, 45, 'Ikuti jalan Kadipekso menuju jalan Lawu'),
(43, '34.02.10-W01', '34.02.10-W02', 2, 10, '-'),
(44, '34.02.10-W02', '34.02.11-W01', 8, 15, '-'),
(45, '34.02.10-W01', '34.02.11-W01', 4, 10, ''),
(46, '34.02.11-W01', '34.02.11-W02', 0.6, 2, ''),
(47, '34.02.11-W02', '34.02.11-W03', 0.6, 2, ''),
(48, '34.02.11-W03', '34.02.11-W04', 1.5, 5, ''),
(49, '34.02.11-W02', '34.03.03-W03', 15, 40, ''),
(50, '34.03.03-W03', '34.02.11-W04', 17, 45, ''),
(51, '34.03.03-W03', '34.03.03-W02', 14, 30, 'Disarankan untuk melalui jalan Playen - Paliyan lanjut jalan Playen - Gading dengan jalur yang lebih baik'),
(52, '34.03.03-W03', '34.03.03-W01', 16, 30, 'Disarankan melalui jalan Manthous');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupatenKODE` char(5) NOT NULL,
  `kabupatenNAMA` char(60) NOT NULL,
  `kabupatenALAMAT` varchar(255) NOT NULL,
  `kabupatenKET` text NOT NULL,
  `kabupatenFOTOICON` varchar(255) NOT NULL,
  `kabupatenFOTOICONKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`kabupatenKODE`, `kabupatenNAMA`, `kabupatenALAMAT`, `kabupatenKET`, `kabupatenFOTOICON`, `kabupatenFOTOICONKET`) VALUES
('33.08', 'Kabupaten Magelang', 'Kantor Pemerintahan : Jl. Soekarno Hatta (Jl. Letnan Tukiyat) No. 59 Kota Mungkid Magelang No. Telp. : (0293) 788101', 'Sejarah kabupaten Magelang tidak bisa dipisahkan dari perkembangan Kota Magelang. Pada tahun 1812, Letnan Gubernur Sir Thomas Stamford Raffles mengangkat Ngabei Danuningrat sebagai bupati pertama Magelang dengan gelar Adipati Danuningrat I. Penunjukkan ini terjadi sebagai konsekuensi perjanjian antara Inggris dan Kesultanan Yogyakarta pada tanggal 1 Agustus 1812 yang menyerahkan wilayah Kedu kepada pemerintah Inggris. Sejak itu Danuningrat menjadi bupati pertama di Kabupaten Magelang dengan gelar Adipati Danuningrat I. Atas petunjuk dari gurunya dia memilih daerah antara desa Mantiasih dan desa Gelangan sebagai pusat pemerintahan. Pada tahun 1930, jabatan bupati diserahkan dari dinasti Danuningrat kepada pejabat baru yang bernama Ngabei Danukusumo. Sementara itu sebagai tindak lanjut dari Keputusan Desentralisasi (Decentralisatie Besluit) tahun 1905, Kota Magelang menjadi gemeente bersama dengan Kota Semarang, Salatiga, dan Pekalongan. Jabatan walikota baru diangkat pada tahun 1924. Meskipun demikian, kedudukan bupati masih tetap berada di kota Magelang. Akibatnya ada sejumlah pimpinan daerah di kota Magelang yaitu bupati Magelang, residen Kedu, asisten residen Magelang dan walikota Magelang.  Seiring dengan waktu, kedudukan Kabupaten Magelang diperkuat melalui UU No. 2 tahun 1948 dengan ibu kota di Kota Magelang. Pada tahun 1950 berdasarkan UU No. 13 tahun 1950 Kota Magelang berdiri sendiri dan diberi hak untuk mengatur rumah tangga sendiri, sehingga ada kebijaksanaan untuk memindah ibu kota kabupaten ke daerah lain. Ada dua alternatif ibu kota sebagai penganti Kota Magelang, yaitu Kawedanan Grabag atau Kawedanan Muntilan, namun kedua daerah ini ditolak. Pada tanggal 22 Maret 1984, kecamatan Mertoyudan bagian Selatan dan kecamatan Mungkid bagian Utara dipilih secara resmi sebagai ibu kota Kabupaten Magelang oleh gubernur Jawa Tengah dengan nama Kota Mungkid.', 'iconmagelangKAB.jpg', 'Ketep Pass - Wisata Alam yang Indah'),
('33.09', 'Kabupaten Boyolali', 'Alamat Kontak: Jalan Raya Boyolali-Semarang km 5 Penggung, Boyolali, Jawa Tengah Kode Pos 57351', 'Cerita Rakyat Ki Ageng Pandan Arang, mulanya adalah sebuah legenda. Tentang terciptanya sebuah daerah di lereng gunung Merapi. Sebuah cerita tentang Ki Ageng Pandan Arang, Bupati Semarang pada Abad XVI. Pada masanya, mendapat tugas dari Sunan Kalijaga untuk pergi ke Gunung Jabalakat di Tembayat (Klaten) guna menyebarkan agama Islam. Ki Ageng Pandan Arang yang juga disebut dengan Tumenggung Notoprojo ini banyak menemui rintangan dan ujian selama perjalanan. Ki Ageng Pandan Arang berjalan cukup jauh meninggalkan anak dan istri ketika di sebuah hutan belantara. Tiga orang perampok mencegatnya. Mengira harta benda dibawanya. Tempat dimana Ki Ageng dibegal ini kemudian sekarang dikenal dengan nama Salatiga.  Di dalam perjalanan tersebut Nyai Ageng tertinggal jauh di belakang. Maka ucapnya, â€œBoya wis lali, Kyai teko ninggal akuâ€ (R. Soewingyo, 1938: 12,20). Sumber lain menyebutkan: â€œBoya lali laki mami, adarbe garwa maring sunâ€. (Dr Soewito Santoso, 1970: 146). Sumber lain yang ditulis MS. Hanjoyo: Kira-kira 25 km dari Salatiga, dalam perjalanannya, Kyai Ageng Pandan Arang duduk di atas batu besar di tengah sungai, sambil menanti isteri dan anaknya yang masih jauh di belakang. Setelah lama dinanti tidak datang juga, Kyai Ageng berkata: â€œBoya wis lali wong ikiâ€. Tempat itu kemudian disebut dengan Boyolali. â€œ (Sejarah dan Hari Jadi Kabupaten Boyolali, Penulis Tim Peneliti Universitas Negeri Sebelas Maret, Surakarta: 1982). Sebuah batu yang berada di Kali Pepe yang membelah Kota Boyolali diduga menjadi tempat beristirahat Ki Ageng Pandan Arang. Memang tidak ada bukti tertulis yang menunjukan bahwa batu ini adalah tempat beristirahat Ki Ageng Pandan Arang. Sama seperti sebuah batu yang terletak di depan Pasar Sunggingan Boyolali yang menurut legenda adalah batu yang diketukketuk tongkatnya hingga muncul lekuk-lekuk mirip sebuah dakon. Karena mirip mainan dakon, masyarakat setempat menyebutnya dengan Mbah Dakon.  Hari Jadi Boyolali Hari jadi Kabupaten Boyolali diperingati setiap 5 Juni, hal ini atas sebuah peristiwa sejarah yang terjadi pada 5 Juni 1847. Pada tanggal tersebut pemerintah Kasunanan Surakarta mengeluarkan peraturan baru tentang pemerintahan dhusun atau pemerintahan di luar Kuthanegara. Peratura tersebut dibuat atas campur tanga Belanda yang intinya pemerintahan yang sekarang tidak mampu lagi mengurusi segala urusan pemerintahan yang makin kompleks itu. Perjanjian antara Paku Buwana VII dengan Pemerintah Belanda tersebut termuat dalam Serat Perjanjian Dalem Natha halaman 140 â€“ 146 atau dalam Staatsblad 1847 No. 30. Diktum dalam bab 30 â€“ 36 dari perjanjian tersebut menyebutkan bahwa diperlukan adanya Abdi Dalem Gunung yang berkewajiban menjaga tata tertib dan ketentraman kerajaan yang bertugas pula mengurusi soal-soal pemerintahan.  Berdasarkan Staatsblad Tahun 1847 No.30 tersebut, Pemerintah Kasunanan Surakarta membentuk enam daerah Kabupaten Gunung di daerah-daerah sebagai pembantu pelaksana pemerintahan di daerah-daerah. Enam daerah kabupaten itu adalah: Kabupaten Gunung Kota Surakarta, Kartosuro, Klaten, Boyolali, Ampel dan Sragen. (Pawarti Surakarta, 1939:71). Berdasarkan Staatsblad tersebut, kemudian ditentukan hari lahir Kabupaten Boyolali adalah 5 Juni 1847.', 'iconboyolali.jpg', 'Lembah Gunung Madu, Jl  Simo-Klego, Boyolali'),
('33.10', 'Kabupaten Klaten', 'Bagian Humas Setda Klaten: Jalan Pemuda No. 294 Klaten 57424. Telepon: 0272-321046, humas@klatenkab.go.id', 'Mengenang sejarah sesungguhnya tidak sekedar memahami histori masa lalu. Tapi bagaimana dengan belajar sejarah menjadikan kita generasi masa kini untuk memunguti nilai-nilai luhur yang berserak dibalik peristiwa silam sebagai guru yang bijak. Sejarah Klaten tersebar diberbagai catatan arsip-arsip kuno dan kolonial, arsip-arsip kuno dan manuskrip Jawa. Catatan itu seperti tertulis dalam Serat Perjanjian Dalem Nata, Serat Ebuk Anyar, Serat Siti Dusun, Sekar Nawala Pradata, Serat Angger Gunung, Serat Angger Sedasa dan Serat Angger Gladag. Dalam bundel arsip Karesidenan Surakarta menjadikan rujukan sejarah Klaten seperti tercantum dalam Soerakarta Brieven van Buiten Posten, Brieven van den Soesoehoenan 1784-1810, Daghregister van den Resi dentie Soerakarta 1819, Reporten 1787-1816, Rijksblad Soerakarta dan Staatblad van Nederlandsche Indie. Babad Giyanti, Babad Bedhahipun Karaton Negari Ing Ngayogyakarta, Babad Tanah Jawi dan Babad Sindula menjadi sumber lain untuk menelusuri sejarah Klaten. â€œCerita Kyai dan Nyai Mlati dianggap sebagai sumber terpercaya yang diakui sebagai cikal bakal kampung dan asal muasal nama Klaten yang konon tinggal di kampung Sekalekanâ€ Baik sumber arsip kolonial, arsip kuno maupun manuskrip Jawa ternyata saling memperkuat dan melengkapi dalam menelusuri sejarah Klaten. Cerita Kyai dan Nyai Mlati dianggap sebagai sumber terpercaya yang diakui sebagai cikal bakal kampung dan asal muasal nama Klaten yang konon tinggal di kampung Sekalekan. Kedua abdi dalem Kraton Mataram ini ditugaskan oleh raja untuk menyerahkan bunga Melati dan buah Joho untuk menghitamkan gigi para putri kraton (Serat Narpawada, 1919:1921). Guna memenuhi kebutuhan bunga Melati untuk raja, Kyai dan Nyai Mlati menanami sawah milik Raden Ayu Mangunkusuma, istri Raden Tumenggung Mangunkusuma yang saat itu menjabat sebagai Bupati Polisi Klaten, yang kemudian dipindah tugaskan istana menjadi Wakil Patih Pringgalaya di Surakarta. Tidak ditemukan sumber sejarah tentang akhir riwayat Kyai dan Nyai Melati. Silsilah Kyai dan Nyai Melati juga tidak diketahui. Bahkan penduduk Klaten tidak ada yang mengakui sebagai keturunan dua sosok penting ini. Sejarah Klaten juga dapat ditelusuri dari keberadaan Candi-candi Hindu, Budha maupun barang-barang kuno. Asal muasal desa-desa kuno tempo dulu menunjukan keterangan terpercaya. Desa-desa seperti Pulowatu, Gumulan, Wedihati, Mirah-mirah maupun Upit. Peninggalan atau petilasan Ngupit bahkan secara jelas menyebutkan pertanda tanggal yang dimaknai 8 November 66 Maeshi oleh Raden Rakai Kayuwangi. Berdirinya Benteng atau loji Klaten di masa pemerintahan Sunan Paku Buwana IV mempunyai arti penting dalam sejarah Klaten. Pendirian benteng tersebut peletakan batu pertamanya dimulai pada hari sabtu Kliwon, 12 rabiulakir, Langkir, Alit 1731 atau sengkala RUPA MANTRI SWARANING JALAK atau dimaknai sebagai tanggal 28 Juli 1804. Sumber sejarah ini dapat ditemukan dalam Babad Bedhaning Ngayogyakarata dan Geger Sepehi. Catatan sejarah ini oleh pemerintah Kabupaten Klaten melalui Peraturan Daerah Nomor 12 Tahun 2007 sebagai Hari Jadi Kabupaten Klaten yang diperingati setiap tahun.', 'iconklaten.jpg', 'Candi Prambanan - Klaten - Sleman'),
('33.12', 'Kabupaten Wonogiri', 'Jl. Kabupaten No. 4-6 Wonogiri 57612 Telp. (0273) 321002 Fax. (0273) 322318 Email: bupati@wonogirikab.go.id ', 'Kabupaten Wonogiri Terletak pada 7Âº 32â€™ â€“ 8Âº 15â€™ Lintang selatan dan Garis Bujur 110Âº 41â€™ â€“ 111Âº 18â€™ Bujur Timur. Posisi Kabupaten Wonogiri sangat strategis karena terletak di ujung selatan Propinsi Jawa Tengah dan diapit oleh Propinsi Jawa Timur dan Propinsi Daerah Istimewa Yogyakarta. Luas wilayah Kabupaten Wonogiri adalah 182.236,02 ha. Secara administratif terbagi menjadi 25 Kecamatan, 43 Kelurahan dan 251 Desa. Kondisi alamnya sebagian besar berupa pegunungan berbatu gamping, terutama di bagian selatan, yang termasuk jajaran Pegunungan Seribu dan merupakan mata air dari Bengawan Solo. Secara topografis, sebagian besar wilayah Kabupaten Wonogiri merupakan dataran rendah dengan ketinggian antara 100-300 meter di atas permukaan air laut (dpl). Sedangkan sebagian lagi merupakan dataran tinggi yaitu berada pada 500 m atau lebih dari permukaan air laut. Wilayah ini meliputi Kecamatan Jatiroto dan Karangtengah. Fisiografi wilayah Kabupaten Wonogiri sebagian besar berupa perbukitan bergelombang. Sedangkan fisiografi dataran sangat terbatas hanya di beberapa tempat terutama pada bentuk lahan alluvial.', 'iconwonogiri.jpg', 'Patung Kereta Kencana di Pintu Gerbang Wonogiri'),
('33.13', 'Kabupaten Karanganyar', 'Kantor Sekretariat Daerah: Jl. Lawu No. 385, Komplek Perkantoran Cangaan, Karanganyar, 57712 Telp. (0271) 495039; Fax. (0271) 495590', 'Karanganyar lahir sebagai dukuh kecil, tepatnya terjadi pada tanggal 19 April 1745 atau 16 Maulud 1670. Pencetus nama Karanganyar adalah Raden Mas Said, atau yang lebih dikenal dengan sebutan Pangeran Sambernyawa. Cikal bakal daerah Karanganyar berasal dari Raden Ayu Diponegoro atau Nyi Ageng Karang dengan nama kecil Raden Ayu Sulbiyah. Pada waktu itu Karanganyar menjadi sebuah dukuh kecil(badranbaru) yang  termasuk  dalam  wilayah  Kasunanan  Surakarta,  pada  saat  itu pimpinan Swapraja Kasunanan Surakarta adalah Sri Pakubuwono II.  Akibat  dari  adanya  â€œPerjanjian  Giyantiâ€  pada  tanggal  13  Februari  1755 antara Sunan Pakubuwono III dengan Pangeran Mangkubumi, yang salah satu isinya adalah pembagian Kerajaan Mataram menjadi dua wilayah, yaitu Kasunanan Surakarta dan Kasultanan Yogyakarta. Dukuh kecil  Karanganyar yang terletak di Sukowati Selatan termasuk ke dalam wilayah Kasultanan Yogyakarta dan yang berkuasa pada saat itu adalah Sri Sultan Hamengkubuwono I (Pangeran Mangkubumi) pada tahun 1755-1792.  Pada tahun 1847, Sri Mangkunegara III di Kerajaannya Mangkunegaran mengadakan tatanan baru, analogi yang berlaku di Kasunanan Surakarta adalah Staatblat 1847 No. 30 yang mulai berlaku pada tanggal 5 Juni 1847, yang salah satu peraturan tersebut menyatakan bahwa Karanganyar merupakan salah satu wilayah. Pada tahun 1903 dibentuk Kabupaten Anom Kota Mangkunegaran, meliputi wilayah kota Sala bagian utara, Wanareja, Kaliyoso, dan Colomadu, Swapraja Mangkunegaran. Istilah Onderregentschap diubah menjadi regentschap atau dalam bahasa Indonesia yang berarti â€œKabupatenâ€ oleh Sri Mangkunegoro VII yang memegang pemerintahan saat itu (1916-1944), tepatnya pada tanggal 20 November 1917.  Dengan demikian, dapat disimpulkan bahwa proses terbentuknya Pemerintah Kabupaten Karanganyar dimulai dari Pemerintah Desa yang terbentuk pada masa perjuangan RM Said (1741-1757), kemudian dibentuk Kabupaten Anom pada tanggal 5 Juni 1847, dikuti dengan dibentuknya Kabupaten Karanganyar pada tanggal 18 Nopember 1917. Berdasarkan Peraturan Daerah Kabupaten Daerah Tingkat II Karangnyar Nomor 20 Tahun 1998 tentang Hari Jadi Kabupaten Karanganyar, maka Hari Jadi Kabupaten Karangnyar ditetapkan pada tanggal 18 Nopember 1917. Nama Karanganyar sendiri terbentuk dari tiga kata yang masing-masing mempunyai arti dan maksud: (1) Ka: Kawibawaningkang dipun gayuh (kawibawaan yang dicita- citakan). (2) Rang: Rangkepanipun lahir bathin pulung lan wahyunipun sampun turun temurun (rangkapnya lahir dan batin, pulung dan wahyunya turun). (3) Anyar: Badhe nampi perjanjian anyar/ enggal winisudha jumeneng Mangkunegoro I (akan menerima perjanjian baru yang diangkat menjadi Mangkunegoro I).', 'iconkaranganyar.jpg', 'Candi Cetho dengan ketinggian 1.400m dpl.'),
('33.22', 'Kabupaten Semarang', 'Sekretariat Daerah Kab.Semarang. Jl.Diponegoro No.14 Ungaran Jawa Tengah â€“ Indonesia.  Telp : 024-6921014; Fax : 024-6921992', 'Sejak 4 abad yang lalu dimasa Pajang-Mataram, Kabupaten Semarang telah ada dengan ibukota Semarang. Pada jaman itu \"Gemente\" (Kotapraja) belum ada. Ki Pandan Arang II atau dikenal sebagai Raden Kaji Kasepuhan (1547-1553) merupakan Bupati Semarang yang pertama, dinobatkan tanggal 2 Mei 1547, berkuasa hingga tahun 1574 dan mendapat pengesahan Sultan Hadiwijaya. Pada masa itu berhasil membuat bangunan yang dipergunakan sebagai pusat kegiatan pemerintah kabupaten. Pada jaman Pemerintahan Bupati R.M. Soebiyono, \"Gemente (Kotapraja)\" Semarang lahir, yaitu tepat tahun 1906. Berdasarkan Stadblad tahun 1906 S.O 120 dibentuklah pemerintahan kota. Pemerintah Kabupaten Semarang yang dipimpim oleh seorang Bupati dan Pemerintah Kotapraja untuk wilayah Semarang yang dipimpin oleh seorang Burgenmester. Dan semenjak itulah terjadi pemisahan antara Kabupaten Semarang dengan Kotapraja Semarang hingga saat ini. Berdasarkan UU no 13/1950 tentang Pembentukan Kabupaten-kabupaten dalam lingkungan Propinsi Jawa Tengah, Kota Semarang ditetapkan sebagai ibukota Kabupaten Semarang. Namun Kota Semarang adalah kotamadya yang memiliki pemerintahan sendiri, ditinjau dari segi pemerintahan Kota Semarang sebagai ibukota Kabupaten sangatlah kurang menguntungkan, maka timbullah gagasan untuk memindahkan ibukota Kabupaten Semarang ke Kota Ungaran yang pada saat itu masih dalam status kawedanan. Sementara dilakukan pembenahan, tanggal 30 Juli 1979 oleh Bupati Kepala Daerah Tk. II Semarang diusulkan oleh Pemerintah Pusat melalui Gubernur, agar Kota Ungaran secara definitif ditetapkan sebagai ibukota Pemerintah Kabupaten Dati II Semarang. Dan ditetapkan dengan PP no 29/1983 tentang Penetapan Status Kota Ungaran sebagai Ibukota Pemerintah Kabupaten Dati II Semarang, yang berlaku peresmiannya tanggal 20 Desember 1983, yang terjadi pada masa pemerintahan Bupati Ir. Soesmono Martosiswojo (1979-1985).', 'iconsemarangKAB.jpg', 'Atraksi Kuda Lumping di Gedong Songo'),
('33.28', 'Kabupaten Tegal', 'SEKRETARIAT DAERAH: Jl. Dr. Soetomo No. 1 Slawi (0283) 491764; setda@tegalkab.go.id', 'Sejarah Tegal: Kekayaan sejarah sebuah kota atau kawasan terlihat dari jejak peninggalan apa yang disebut cultural heritage dan living cultural yang tersisa dan hidup di kawasan tersebut. Keduanya merupakan warisan peradaban umat manusia. Demikian halnya dengan Kabupaten Tegal, Wilayah yang kaya akan jejak peninggalan kesejarahan sebagai penanda bahwa Kabupaten Tegal sebagai tlatah kawasan tak dapat dilepaskan dari keterkaitan garis sejarah hingga membentuk kawasan sekarang ini. Penekanan pada bidang pertanian misalnya, tak dapat dilepaskan dari kondisi wilayah dan akar kesejarahan tlatah Kabupaten Tegal yang mengembangkan kapasitasnya selaku wilayah agraris. Tradisi keagrarisan dimulai dari ketokoan Ki Gede Sebayu juru demung trah Pajang. Bahkan kalau dirunut keagrarisan itu dimulai semenjak Mataram Kuno. Kesaksian ini diperkuat denga ditemukannya artefak kuno dan candi di Pedagangan. Ditambah tlatah Tegal kerapkali dikaitkan dengan kerajaan Pajang dan Mataram Islam yang cenderung kekuasaan dengan basis pada agraris ( De Graaf, 1986).   Juru Demung Ki Gede Sebayu: Tegal berasal dari nama Tetegal, tanah subur yang mampu menghasilkan tanaman pertanian (Depdikbud Kabupaten Tegal, 1984). Sumber lain menyatakan, nama Tegal dipercaya berasal dari kata Teteguall. Sebutan yang diberikan seorang pedagang asal Portugis yaitu Tome Pires yang singgah di Pelabuhan Tegal pada tahun 1500 â€“an (Suputro, 1955). Namun sejarah tlatah Kabupaten Tegal tak dapat diepaskan dari ketokohan Ki Gede Sebayu. Namanya dikaitkan dengan trah Majapahit, karena sang ayah Ki Gede Tepus Rumput ( kelak bernama Pangeran Onje) ialah keturunan Batara Katong Adipati Ponorogo yang masih punya kaitan dengan keturunan dinasti Majapahit (Sugeng Priyadi, 2002).', 'icontegalKAB.jpg', 'Pantai Purwa Hamba'),
('33.72', 'Kota Surakarta (Solo)', 'JL. Jenderal Sudirman No. 2, Kota Surakarta, Jawa Tengah', 'Surakarta berkembang dari wilayah suatu desa bernama Desa Sala, di tepi Bengawan Solo. Sarjana Belanda yang meneliti Naskah Bujangga Manik, J. Noorduyn, menduga bahwa Desa Sala ini berada di dekat (kalau bukan memang di sana) salah satu tempat penyeberangan (', 'iconsolo.jpg', 'Keraton Surakarta'),
('33.74', 'Kota Semarang', 'Jl. Pemuda No.148, Sekayu, Semarang Tengah, Kota Semarang, Jawa Tengah 50132, Indonesia', ' Kota Semarang adalah ibukota Provinsi Jawa Tengah, Indonesia sekaligus kota metropolitan terbesar kelima di Indonesia setelah Jakarta, Surabaya, Bandung, danMedan.[rujukan?] Sebagai salah satu kota paling berkembang di Pulau Jawa, Kota Semarang mempunyai jumlah penduduk yang hampir mencapai 2 juta jiwa. Bahkan, Area Metropolitan Kedungsapur (Kendal, Demak, Ungaran Kabupaten Semarang, Kota Salatiga, dan Purwodadi Grobogan) dengan penduduk sekitar 6 juta jiwa, merupakan Wilayah Metropolis terpadat ke 4, setelah Jabodetabek (Jakarta), Gerbangkertosusilo (Surabaya), dan Bandung Raya.[rujukan?] Dalam beberapa tahun terakhir, perkembangan Semarang ditandai pula dengan munculnya beberapa gedung pencakar langit di beberapa sudut kota. Sayangnya, pesatnya jumlah penduduk membuat kemacetan lalu lintas di dalam Kota Semarang semakin parah. Kota Semarang dipimpin oleh wali kota Hendrar Prihadi, S.E, M.M. Kota ini terletak sekitar 466 km sebelah timur Jakarta, atau 312 km sebelah barat Surabaya, atau 624 km sebalah barat daya Banjarmasin (via udara).[2] Semarang berbatasan dengan Laut Jawa di utara, Kabupaten Demak di timur, Kabupaten Semarang di selatan, dan Kabupaten Kendal di barat.Luas Kota 373.67 km2', 'iconsemarangKOTA.jpg', 'Klenteng Sam Poo Kong'),
('34.02', 'Kabupaten Bantul', 'Jl. Robert Wolter Monginsidi No.1 Bantul, Daerah Istimewa Yogyakarta, 5571', 'Alamat Kantor Kabupaten', 'makamrajaimogiri.jpg', 'Makam Raja Raja Mataram (Yogyakarta) di Imogiri'),
('34.03', 'Kabupaten Gunung Kidul', 'Jl. Brigjen Katamso No.1 Wonosari, Daerah Istimewa Yogyakarta', 'Alamat Kantor Kabupaten', 'gerbanggunungkidul.jpg', 'Gerbang utama memasuki Kabupaten Gunungkidul'),
('34.04', 'Kabupaten Sleman', 'Jl Parasamya Beran Tridadi Sleman, Daerah Istimewa Yogyakarta 55511', 'Alamat Sekretariat Daerah Kabupaten', 'candiprambanan.jpg', 'Candi Prambanan');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten_salinan`
--

CREATE TABLE `kabupaten_salinan` (
  `kabupatenKODE` char(5) NOT NULL,
  `kabupatenNAMA` char(60) NOT NULL,
  `kabupatenALAMAT` varchar(255) NOT NULL,
  `kabupatenKET` text NOT NULL,
  `kabupatenFOTOICON` varchar(255) NOT NULL,
  `kabupatenFOTOICONKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten_salinan`
--

INSERT INTO `kabupaten_salinan` (`kabupatenKODE`, `kabupatenNAMA`, `kabupatenALAMAT`, `kabupatenKET`, `kabupatenFOTOICON`, `kabupatenFOTOICONKET`) VALUES
('33.08', 'Kabupaten Magelang', 'Kantor Pemerintahan: Jl. Soekarno Hatta (Jl. Letnan Tukiyat) No. 59 Kota Mungkid Magelang No. Telp. : (0293) 788101', 'Sejarah kabupaten Magelang tidak bisa dipisahkan dari perkembangan Kota Magelang. Pada tahun 1812, Letnan Gubernur Sir Thomas Stamford Raffles mengangkat Ngabei Danuningrat sebagai bupati pertama Magelang dengan gelar Adipati Danuningrat I. Penunjukkan ini terjadi sebagai konsekuensi perjanjian antara Inggris dan Kesultanan Yogyakarta pada tanggal 1 Agustus 1812 yang menyerahkan wilayah Kedu kepada pemerintah Inggris. Sejak itu Danuningrat menjadi bupati pertama di Kabupaten Magelang dengan gelar Adipati Danuningrat I. Atas petunjuk dari gurunya dia memilih daerah antara desa Mantiasih dan desa Gelangan sebagai pusat pemerintahan. Pada tahun 1930, jabatan bupati diserahkan dari dinasti Danuningrat kepada pejabat baru yang bernama Ngabei Danukusumo. Sementara itu sebagai tindak lanjut dari Keputusan Desentralisasi (Decentralisatie Besluit) tahun 1905, Kota Magelang menjadi gemeente bersama dengan Kota Semarang, Salatiga, dan Pekalongan. Jabatan walikota baru diangkat pada tahun 1924. Meskipun demikian, kedudukan bupati masih tetap berada di kota Magelang. Akibatnya ada sejumlah pimpinan daerah di kota Magelang yaitu bupati Magelang, residen Kedu, asisten residen Magelang dan walikota Magelang.  Seiring dengan waktu, kedudukan Kabupaten Magelang diperkuat melalui UU No. 2 tahun 1948 dengan ibu kota di Kota Magelang. Pada tahun 1950 berdasarkan UU No. 13 tahun 1950 Kota Magelang berdiri sendiri dan diberi hak untuk mengatur rumah tangga sendiri, sehingga ada kebijaksanaan untuk memindah ibu kota kabupaten ke daerah lain. Ada dua alternatif ibu kota sebagai penganti Kota Magelang, yaitu Kawedanan Grabag atau Kawedanan Muntilan, namun kedua daerah ini ditolak. Pada tanggal 22 Maret 1984, kecamatan Mertoyudan bagian Selatan dan kecamatan Mungkid bagian Utara dipilih secara resmi sebagai ibu kota Kabupaten Magelang oleh gubernur Jawa Tengah dengan nama Kota Mungkid.', 'iconmagelangKAB.jpg', 'Ketep Pass - Wisata Alam yang Indah'),
('33.09', 'Kabupaten Boyolali', 'Alamat Kontak: Jalan Raya Boyolali-Semarang km 5 Penggung, Boyolali, Jawa Tengah Kode Pos 57351', 'Cerita Rakyat Ki Ageng Pandan Arang, mulanya adalah sebuah legenda. Tentang terciptanya sebuah daerah di lereng gunung Merapi. Sebuah cerita tentang Ki Ageng Pandan Arang, Bupati Semarang pada Abad XVI. Pada masanya, mendapat tugas dari Sunan Kalijaga untuk pergi ke Gunung Jabalakat di Tembayat (Klaten) guna menyebarkan agama Islam. Ki Ageng Pandan Arang yang juga disebut dengan Tumenggung Notoprojo ini banyak menemui rintangan dan ujian selama perjalanan. Ki Ageng Pandan Arang berjalan cukup jauh meninggalkan anak dan istri ketika di sebuah hutan belantara. Tiga orang perampok mencegatnya. Mengira harta benda dibawanya. Tempat dimana Ki Ageng dibegal ini kemudian sekarang dikenal dengan nama Salatiga.  Di dalam perjalanan tersebut Nyai Ageng tertinggal jauh di belakang. Maka ucapnya, â€œBoya wis lali, Kyai teko ninggal akuâ€ (R. Soewingyo, 1938: 12,20). Sumber lain menyebutkan: â€œBoya lali laki mami, adarbe garwa maring sunâ€. (Dr Soewito Santoso, 1970: 146). Sumber lain yang ditulis MS. Hanjoyo: Kira-kira 25 km dari Salatiga, dalam perjalanannya, Kyai Ageng Pandan Arang duduk di atas batu besar di tengah sungai, sambil menanti isteri dan anaknya yang masih jauh di belakang. Setelah lama dinanti tidak datang juga, Kyai Ageng berkata: â€œBoya wis lali wong ikiâ€. Tempat itu kemudian disebut dengan Boyolali. â€œ (Sejarah dan Hari Jadi Kabupaten Boyolali, Penulis Tim Peneliti Universitas Negeri Sebelas Maret, Surakarta: 1982). Sebuah batu yang berada di Kali Pepe yang membelah Kota Boyolali diduga menjadi tempat beristirahat Ki Ageng Pandan Arang. Memang tidak ada bukti tertulis yang menunjukan bahwa batu ini adalah tempat beristirahat Ki Ageng Pandan Arang. Sama seperti sebuah batu yang terletak di depan Pasar Sunggingan Boyolali yang menurut legenda adalah batu yang diketukketuk tongkatnya hingga muncul lekuk-lekuk mirip sebuah dakon. Karena mirip mainan dakon, masyarakat setempat menyebutnya dengan Mbah Dakon.  Hari Jadi Boyolali Hari jadi Kabupaten Boyolali diperingati setiap 5 Juni, hal ini atas sebuah peristiwa sejarah yang terjadi pada 5 Juni 1847. Pada tanggal tersebut pemerintah Kasunanan Surakarta mengeluarkan peraturan baru tentang pemerintahan dhusun atau pemerintahan di luar Kuthanegara. Peratura tersebut dibuat atas campur tanga Belanda yang intinya pemerintahan yang sekarang tidak mampu lagi mengurusi segala urusan pemerintahan yang makin kompleks itu. Perjanjian antara Paku Buwana VII dengan Pemerintah Belanda tersebut termuat dalam Serat Perjanjian Dalem Natha halaman 140 â€“ 146 atau dalam Staatsblad 1847 No. 30. Diktum dalam bab 30 â€“ 36 dari perjanjian tersebut menyebutkan bahwa diperlukan adanya Abdi Dalem Gunung yang berkewajiban menjaga tata tertib dan ketentraman kerajaan yang bertugas pula mengurusi soal-soal pemerintahan.  Berdasarkan Staatsblad Tahun 1847 No.30 tersebut, Pemerintah Kasunanan Surakarta membentuk enam daerah Kabupaten Gunung di daerah-daerah sebagai pembantu pelaksana pemerintahan di daerah-daerah. Enam daerah kabupaten itu adalah: Kabupaten Gunung Kota Surakarta, Kartosuro, Klaten, Boyolali, Ampel dan Sragen. (Pawarti Surakarta, 1939:71). Berdasarkan Staatsblad tersebut, kemudian ditentukan hari lahir Kabupaten Boyolali adalah 5 Juni 1847.', 'iconboyolali.jpg', 'Lembah Gunung Madu, Jl  Simo-Klego, Boyolali'),
('33.10', 'Kabupaten Klaten', 'Bagian Humas Setda Klaten: Jalan Pemuda No. 294 Klaten 57424. Telepon: 0272-321046, humas@klatenkab.go.id', 'Mengenang sejarah sesungguhnya tidak sekedar memahami histori masa lalu. Tapi bagaimana dengan belajar sejarah menjadikan kita generasi masa kini untuk memunguti nilai-nilai luhur yang berserak dibalik peristiwa silam sebagai guru yang bijak. Sejarah Klaten tersebar diberbagai catatan arsip-arsip kuno dan kolonial, arsip-arsip kuno dan manuskrip Jawa. Catatan itu seperti tertulis dalam Serat Perjanjian Dalem Nata, Serat Ebuk Anyar, Serat Siti Dusun, Sekar Nawala Pradata, Serat Angger Gunung, Serat Angger Sedasa dan Serat Angger Gladag. Dalam bundel arsip Karesidenan Surakarta menjadikan rujukan sejarah Klaten seperti tercantum dalam Soerakarta Brieven van Buiten Posten, Brieven van den Soesoehoenan 1784-1810, Daghregister van den Resi dentie Soerakarta 1819, Reporten 1787-1816, Rijksblad Soerakarta dan Staatblad van Nederlandsche Indie. Babad Giyanti, Babad Bedhahipun Karaton Negari Ing Ngayogyakarta, Babad Tanah Jawi dan Babad Sindula menjadi sumber lain untuk menelusuri sejarah Klaten. â€œCerita Kyai dan Nyai Mlati dianggap sebagai sumber terpercaya yang diakui sebagai cikal bakal kampung dan asal muasal nama Klaten yang konon tinggal di kampung Sekalekanâ€ Baik sumber arsip kolonial, arsip kuno maupun manuskrip Jawa ternyata saling memperkuat dan melengkapi dalam menelusuri sejarah Klaten. Cerita Kyai dan Nyai Mlati dianggap sebagai sumber terpercaya yang diakui sebagai cikal bakal kampung dan asal muasal nama Klaten yang konon tinggal di kampung Sekalekan. Kedua abdi dalem Kraton Mataram ini ditugaskan oleh raja untuk menyerahkan bunga Melati dan buah Joho untuk menghitamkan gigi para putri kraton (Serat Narpawada, 1919:1921). Guna memenuhi kebutuhan bunga Melati untuk raja, Kyai dan Nyai Mlati menanami sawah milik Raden Ayu Mangunkusuma, istri Raden Tumenggung Mangunkusuma yang saat itu menjabat sebagai Bupati Polisi Klaten, yang kemudian dipindah tugaskan istana menjadi Wakil Patih Pringgalaya di Surakarta. Tidak ditemukan sumber sejarah tentang akhir riwayat Kyai dan Nyai Melati. Silsilah Kyai dan Nyai Melati juga tidak diketahui. Bahkan penduduk Klaten tidak ada yang mengakui sebagai keturunan dua sosok penting ini. Sejarah Klaten juga dapat ditelusuri dari keberadaan Candi-candi Hindu, Budha maupun barang-barang kuno. Asal muasal desa-desa kuno tempo dulu menunjukan keterangan terpercaya. Desa-desa seperti Pulowatu, Gumulan, Wedihati, Mirah-mirah maupun Upit. Peninggalan atau petilasan Ngupit bahkan secara jelas menyebutkan pertanda tanggal yang dimaknai 8 November 66 Maeshi oleh Raden Rakai Kayuwangi. Berdirinya Benteng atau loji Klaten di masa pemerintahan Sunan Paku Buwana IV mempunyai arti penting dalam sejarah Klaten. Pendirian benteng tersebut peletakan batu pertamanya dimulai pada hari sabtu Kliwon, 12 rabiulakir, Langkir, Alit 1731 atau sengkala RUPA MANTRI SWARANING JALAK atau dimaknai sebagai tanggal 28 Juli 1804. Sumber sejarah ini dapat ditemukan dalam Babad Bedhaning Ngayogyakarata dan Geger Sepehi. Catatan sejarah ini oleh pemerintah Kabupaten Klaten melalui Peraturan Daerah Nomor 12 Tahun 2007 sebagai Hari Jadi Kabupaten Klaten yang diperingati setiap tahun.', 'iconklaten.jpg', 'Candi Prambanan - Klaten - Sleman'),
('33.12', 'Kabupaten Wonogiri', 'Jl. Kabupaten No. 4-6 Wonogiri 57612 Telp. (0273) 321002 Fax. (0273) 322318 Email: bupati@wonogirikab.go.id ', 'Kabupaten Wonogiri Terletak pada 7Âº 32â€™ â€“ 8Âº 15â€™ Lintang selatan dan Garis Bujur 110Âº 41â€™ â€“ 111Âº 18â€™ Bujur Timur. Posisi Kabupaten Wonogiri sangat strategis karena terletak di ujung selatan Propinsi Jawa Tengah dan diapit oleh Propinsi Jawa Timur dan Propinsi Daerah Istimewa Yogyakarta. Luas wilayah Kabupaten Wonogiri adalah 182.236,02 ha. Secara administratif terbagi menjadi 25 Kecamatan, 43 Kelurahan dan 251 Desa. Kondisi alamnya sebagian besar berupa pegunungan berbatu gamping, terutama di bagian selatan, yang termasuk jajaran Pegunungan Seribu dan merupakan mata air dari Bengawan Solo. Secara topografis, sebagian besar wilayah Kabupaten Wonogiri merupakan dataran rendah dengan ketinggian antara 100-300 meter di atas permukaan air laut (dpl). Sedangkan sebagian lagi merupakan dataran tinggi yaitu berada pada 500 m atau lebih dari permukaan air laut. Wilayah ini meliputi Kecamatan Jatiroto dan Karangtengah. Fisiografi wilayah Kabupaten Wonogiri sebagian besar berupa perbukitan bergelombang. Sedangkan fisiografi dataran sangat terbatas hanya di beberapa tempat terutama pada bentuk lahan alluvial.', 'iconwonogiri.jpg', 'Patung Kereta Kencana di Pintu Gerbang Wonogiri'),
('33.13', 'Kabupaten Karanganyar', 'Kantor Sekretariat Daerah: Jl. Lawu No. 385, Komplek Perkantoran Cangaan, Karanganyar, 57712 Telp. (0271) 495039; Fax. (0271) 495590', 'Karanganyar lahir sebagai dukuh kecil, tepatnya terjadi pada tanggal 19 April 1745 atau 16 Maulud 1670. Pencetus nama Karanganyar adalah Raden Mas Said, atau yang lebih dikenal dengan sebutan Pangeran Sambernyawa. Cikal bakal daerah Karanganyar berasal dari Raden Ayu Diponegoro atau Nyi Ageng Karang dengan nama kecil Raden Ayu Sulbiyah. Pada waktu itu Karanganyar menjadi sebuah dukuh kecil(badranbaru) yang  termasuk  dalam  wilayah  Kasunanan  Surakarta,  pada  saat  itu pimpinan Swapraja Kasunanan Surakarta adalah Sri Pakubuwono II.  Akibat  dari  adanya  â€œPerjanjian  Giyantiâ€  pada  tanggal  13  Februari  1755 antara Sunan Pakubuwono III dengan Pangeran Mangkubumi, yang salah satu isinya adalah pembagian Kerajaan Mataram menjadi dua wilayah, yaitu Kasunanan Surakarta dan Kasultanan Yogyakarta. Dukuh kecil  Karanganyar yang terletak di Sukowati Selatan termasuk ke dalam wilayah Kasultanan Yogyakarta dan yang berkuasa pada saat itu adalah Sri Sultan Hamengkubuwono I (Pangeran Mangkubumi) pada tahun 1755-1792.  Pada tahun 1847, Sri Mangkunegara III di Kerajaannya Mangkunegaran mengadakan tatanan baru, analogi yang berlaku di Kasunanan Surakarta adalah Staatblat 1847 No. 30 yang mulai berlaku pada tanggal 5 Juni 1847, yang salah satu peraturan tersebut menyatakan bahwa Karanganyar merupakan salah satu wilayah. Pada tahun 1903 dibentuk Kabupaten Anom Kota Mangkunegaran, meliputi wilayah kota Sala bagian utara, Wanareja, Kaliyoso, dan Colomadu, Swapraja Mangkunegaran. Istilah Onderregentschap diubah menjadi regentschap atau dalam bahasa Indonesia yang berarti â€œKabupatenâ€ oleh Sri Mangkunegoro VII yang memegang pemerintahan saat itu (1916-1944), tepatnya pada tanggal 20 November 1917.  Dengan demikian, dapat disimpulkan bahwa proses terbentuknya Pemerintah Kabupaten Karanganyar dimulai dari Pemerintah Desa yang terbentuk pada masa perjuangan RM Said (1741-1757), kemudian dibentuk Kabupaten Anom pada tanggal 5 Juni 1847, dikuti dengan dibentuknya Kabupaten Karanganyar pada tanggal 18 Nopember 1917. Berdasarkan Peraturan Daerah Kabupaten Daerah Tingkat II Karangnyar Nomor 20 Tahun 1998 tentang Hari Jadi Kabupaten Karanganyar, maka Hari Jadi Kabupaten Karangnyar ditetapkan pada tanggal 18 Nopember 1917. Nama Karanganyar sendiri terbentuk dari tiga kata yang masing-masing mempunyai arti dan maksud: (1) Ka: Kawibawaningkang dipun gayuh (kawibawaan yang dicita- citakan). (2) Rang: Rangkepanipun lahir bathin pulung lan wahyunipun sampun turun temurun (rangkapnya lahir dan batin, pulung dan wahyunya turun). (3) Anyar: Badhe nampi perjanjian anyar/ enggal winisudha jumeneng Mangkunegoro I (akan menerima perjanjian baru yang diangkat menjadi Mangkunegoro I).', 'iconkaranganyar.jpg', 'Candi Cetho dengan ketinggian 1.400m dpl.'),
('33.22', 'Kabupaten Semarang', 'Sekretariat Daerah Kab.Semarang. Jl.Diponegoro No.14 Ungaran Jawa Tengah â€“ Indonesia.  Telp : 024-6921014; Fax : 024-6921992', 'Sejak 4 abad yang lalu dimasa Pajang-Mataram, Kabupaten Semarang telah ada dengan ibukota Semarang. Pada jaman itu \"Gemente\" (Kotapraja) belum ada. Ki Pandan Arang II atau dikenal sebagai Raden Kaji Kasepuhan (1547-1553) merupakan Bupati Semarang yang pertama, dinobatkan tanggal 2 Mei 1547, berkuasa hingga tahun 1574 dan mendapat pengesahan Sultan Hadiwijaya. Pada masa itu berhasil membuat bangunan yang dipergunakan sebagai pusat kegiatan pemerintah kabupaten. Pada jaman Pemerintahan Bupati R.M. Soebiyono, \"Gemente (Kotapraja)\" Semarang lahir, yaitu tepat tahun 1906. Berdasarkan Stadblad tahun 1906 S.O 120 dibentuklah pemerintahan kota. Pemerintah Kabupaten Semarang yang dipimpim oleh seorang Bupati dan Pemerintah Kotapraja untuk wilayah Semarang yang dipimpin oleh seorang Burgenmester. Dan semenjak itulah terjadi pemisahan antara Kabupaten Semarang dengan Kotapraja Semarang hingga saat ini. Berdasarkan UU no 13/1950 tentang Pembentukan Kabupaten-kabupaten dalam lingkungan Propinsi Jawa Tengah, Kota Semarang ditetapkan sebagai ibukota Kabupaten Semarang. Namun Kota Semarang adalah kotamadya yang memiliki pemerintahan sendiri, ditinjau dari segi pemerintahan Kota Semarang sebagai ibukota Kabupaten sangatlah kurang menguntungkan, maka timbullah gagasan untuk memindahkan ibukota Kabupaten Semarang ke Kota Ungaran yang pada saat itu masih dalam status kawedanan. Sementara dilakukan pembenahan, tanggal 30 Juli 1979 oleh Bupati Kepala Daerah Tk. II Semarang diusulkan oleh Pemerintah Pusat melalui Gubernur, agar Kota Ungaran secara definitif ditetapkan sebagai ibukota Pemerintah Kabupaten Dati II Semarang. Dan ditetapkan dengan PP no 29/1983 tentang Penetapan Status Kota Ungaran sebagai Ibukota Pemerintah Kabupaten Dati II Semarang, yang berlaku peresmiannya tanggal 20 Desember 1983, yang terjadi pada masa pemerintahan Bupati Ir. Soesmono Martosiswojo (1979-1985).', 'iconsemarangKAB.jpg', 'Atraksi Kuda Lumping di Gedong Songo'),
('33.28', 'Kabupaten Tegal', 'SEKRETARIAT DAERAH: Jl. Dr. Soetomo No. 1 Slawi (0283) 491764; setda@tegalkab.go.id', 'Sejarah Tegal: Kekayaan sejarah sebuah kota atau kawasan terlihat dari jejak peninggalan apa yang disebut cultural heritage dan living cultural yang tersisa dan hidup di kawasan tersebut. Keduanya merupakan warisan peradaban umat manusia. Demikian halnya dengan Kabupaten Tegal, Wilayah yang kaya akan jejak peninggalan kesejarahan sebagai penanda bahwa Kabupaten Tegal sebagai tlatah kawasan tak dapat dilepaskan dari keterkaitan garis sejarah hingga membentuk kawasan sekarang ini. Penekanan pada bidang pertanian misalnya, tak dapat dilepaskan dari kondisi wilayah dan akar kesejarahan tlatah Kabupaten Tegal yang mengembangkan kapasitasnya selaku wilayah agraris. Tradisi keagrarisan dimulai dari ketokoan Ki Gede Sebayu juru demung trah Pajang. Bahkan kalau dirunut keagrarisan itu dimulai semenjak Mataram Kuno. Kesaksian ini diperkuat denga ditemukannya artefak kuno dan candi di Pedagangan. Ditambah tlatah Tegal kerapkali dikaitkan dengan kerajaan Pajang dan Mataram Islam yang cenderung kekuasaan dengan basis pada agraris ( De Graaf, 1986).   Juru Demung Ki Gede Sebayu: Tegal berasal dari nama Tetegal, tanah subur yang mampu menghasilkan tanaman pertanian (Depdikbud Kabupaten Tegal, 1984). Sumber lain menyatakan, nama Tegal dipercaya berasal dari kata Teteguall. Sebutan yang diberikan seorang pedagang asal Portugis yaitu Tome Pires yang singgah di Pelabuhan Tegal pada tahun 1500 â€“an (Suputro, 1955). Namun sejarah tlatah Kabupaten Tegal tak dapat diepaskan dari ketokohan Ki Gede Sebayu. Namanya dikaitkan dengan trah Majapahit, karena sang ayah Ki Gede Tepus Rumput ( kelak bernama Pangeran Onje) ialah keturunan Batara Katong Adipati Ponorogo yang masih punya kaitan dengan keturunan dinasti Majapahit (Sugeng Priyadi, 2002).', 'icontegalKAB.jpg', 'Pantai Purwa Hamba'),
('33.72', 'Kota Surakarta (Solo)', 'JL. Jenderal Sudirman No. 2, Kota Surakarta, Jawa Tengah', 'Surakarta berkembang dari wilayah suatu desa bernama Desa Sala, di tepi Bengawan Solo. Sarjana Belanda yang meneliti Naskah Bujangga Manik, J. Noorduyn, menduga bahwa Desa Sala ini berada di dekat (kalau bukan memang di sana) salah satu tempat penyeberangan (\"penambangan\") di Bengawan Solo yang disebut-sebut dalam pelat tembaga \"Piagam Trowulan I\" (1358, dalam bahasa Inggris disebut \"Ferry Charter\") sebagai \"Wulayu\". Naskah Perjalanan Bujangga Manik yang berasal dari sekitar akir abad ke-15 menyebutkan bahwa sang tokoh menyeberangi \"Ci Wuluyu\". Pada abad ke-17 di tempat ini juga dilaporkan terdapat penyeberangan di daerah \"Semanggi\" (sekarang masih menjadi nama kampung/kelurahan di Kecamatan Pasarkliwon)', 'iconsolo.jpg', 'Taman Sriwedari Solo'),
('33.74', 'Kota Semarang', 'Jl. Pemuda No.148, Sekayu, Semarang Tengah, Kota Semarang, Jawa Tengah 50132, Indonesia', ' Kota Semarang adalah ibukota Provinsi Jawa Tengah, Indonesia sekaligus kota metropolitan terbesar kelima di Indonesia setelah Jakarta, Surabaya, Bandung, danMedan.[rujukan?] Sebagai salah satu kota paling berkembang di Pulau Jawa, Kota Semarang mempunyai jumlah penduduk yang hampir mencapai 2 juta jiwa. Bahkan, Area Metropolitan Kedungsapur (Kendal, Demak, Ungaran Kabupaten Semarang, Kota Salatiga, dan Purwodadi Grobogan) dengan penduduk sekitar 6 juta jiwa, merupakan Wilayah Metropolis terpadat ke 4, setelah Jabodetabek (Jakarta), Gerbangkertosusilo (Surabaya), dan Bandung Raya.[rujukan?] Dalam beberapa tahun terakhir, perkembangan Semarang ditandai pula dengan munculnya beberapa gedung pencakar langit di beberapa sudut kota. Sayangnya, pesatnya jumlah penduduk membuat kemacetan lalu lintas di dalam Kota Semarang semakin parah. Kota Semarang dipimpin oleh wali kota Hendrar Prihadi, S.E, M.M. Kota ini terletak sekitar 466 km sebelah timur Jakarta, atau 312 km sebelah barat Surabaya, atau 624 km sebalah barat daya Banjarmasin (via udara).[2] Semarang berbatasan dengan Laut Jawa di utara, Kabupaten Demak di timur, Kabupaten Semarang di selatan, dan Kabupaten Kendal di barat.Luas Kota 373.67 km2', 'iconsemarangKOTA.jpg', 'Klenteng Sam Poo Kong'),
('34.02', 'Bantul', 'Jl. Robert Wolter Monginsidi No.1 Bantul, Daerah Istimewa Yogyakarta, 5571', 'Alamat Kantor Kabupaten', 'makamrajaimogiri.jpg', 'Makam Raja Raja Mataram (Yogyakarta) di Imogiri'),
('34.03', 'Gunung Kidul', 'Jl. Brigjen Katamso No.1 Wonosari, Daerah Istimewa Yogyakarta', 'Alamat Kantor Kabupaten', 'gerbanggunungkidul.jpg', 'Gerbang utama memasuki Kabupaten Gunungkidul'),
('34.04', 'Kabupaten Sleman', 'Jl Parasamya Beran Tridadi Sleman, Daerah Istimewa Yogyakarta 55511', 'Alamat Sekretariat Daerah Kabupaten', 'candiprambanan.jpg', 'Candi Prambanan');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriberita`
--

CREATE TABLE `kategoriberita` (
  `kategoriberitaKODE` char(4) NOT NULL,
  `kategoriberitaNAMA` varchar(60) NOT NULL,
  `kategoriberitaKET` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoriberita`
--

INSERT INTO `kategoriberita` (`kategoriberitaKODE`, `kategoriberitaNAMA`, `kategoriberitaKET`) VALUES
('KB01', 'Tourism News (Berita Wisata)', 'Merupakan kategori berita yang berhubungan dengan informasi kegiatan atau lainnya yang berada di obyek wisata'),
('KB02', 'Activity News (Berita Kegiatan)', 'Merupakan kategori berita yang berhubungan dengan event atau kejadian atau kegiatan yang berlangsung tetapi tidak dilakukan berhubungan dengan obyek wisata'),
('KB03', 'Public News (Berita Umum)', 'Suatu berita yang bersifat umum dan dapat merupakan berita harian yang terjadi.');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriwisata`
--

CREATE TABLE `kategoriwisata` (
  `kategoriKODE` char(4) NOT NULL,
  `kategoriNAMA` char(60) NOT NULL,
  `kategoriKET` text NOT NULL,
  `kategoriREFERENCE` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoriwisata`
--

INSERT INTO `kategoriwisata` (`kategoriKODE`, `kategoriNAMA`, `kategoriKET`, `kategoriREFERENCE`) VALUES
('KW01', 'Cultural Heritage (Warisan Budaya)', 'Peninggalan atau warisan (heritage) merupakan konsep yang luas mencakup warisan yang bersifat alamiah, asli dan merupakan sejarah atau budaya kita. Warisan budaya merupakan wujud dari cara hidup yang dikembangkan oleh masyarakat dan diwariskan dari generasi ke generasi, termasuk adat istiadat, praktik atau perilaku, tempat, obyek, ekspresi dan nilai artistik. Warisan budaya ini sering dinyatakan sebagai warisan budaya berwujud dan tak berwujud', 'ICOMOS, 2002'),
('KW02', 'Spiritual Tourism (Wisata Rohani)', 'Jenis wisata budaya yang sedang populer, karena  banyak orang yang semakin mengembangkan spiritualitas mereka sendiri dan untuk menemukan hal yang lainnya. Pada tahun 2007, pariwisata spiritual dinilai oleh UNWTO sebagai segmen yang paling cepat berkembang, meski tidak mudah dicakup. Padahal, wisata spiritual ini didasarkan pada berbagai motivasi, mulai dari wisata religi tradisional hingga pengobatan alternatif sampai bentuk perendaman dalam air yang ada di alam.', 'https://www.igi-global.com/dictionary/spiritual-tourism/39292'),
('KW03', 'Nature Tourism (Wisata Alam)', 'Wisata dengan cara melakukan perjalanan ke daerah alami, yang bertujuan melestarikan lingkungan dan meningkatkan kesejahteraan masyarakat setempat. Wisata yang berbasis pada atraksi alam suatu daerah seperti: mengamati burung, fotografi, melihat bintang, berkemah, hiking, berburu, memancing, dan mengunjungi taman. Wisatawan memiliki tujuan untuk mendapatkan pengalaman dari keragaman sumber daya alam dan budaya. Mereka menginginkan apa yang nyata, merasakan dan menikmati melalui pengalaman alam, budaya, atau sejarah.', 'https://tpwd.texas.gov/landwater/land/programs/tourism/what_is/'),
('KW04', 'Artificial Tourism (Wisata Buatan)', 'Setiap kabupaten telah mengambil beberapa langkah bagaimana mengembangkan sektor pariwisata dan bagaimana menambahkan destinasi wisata buatan yang baru dan dibuat lebih menarik dengan fitur yang lebih baik untuk menarik lebih banyak wisatawan. Saat ini, sebagian besar kabupaten telah menambahkan produk pariwisata buatan untuk menciptakan dimensi pariwisata baru. Dengan daya tarik baru, produk wisata akan semakin banyak pengunjung dan membuka investasi untuk pengembangan dan pembangunan sosial, ekonomi dan infrastruktur.', '-'),
('KW05', 'Culinery Tourism (Wisata Kuliner)', 'Wisata kuliner pada masa sekarang telah muncul sebagai bagian wisata yang menarik. Wisata ini mencakup bagian dari wisata budaya, lanskap, laut, sejarah lokal, nilai-nilai, dan warisan budaya. Wisata ini merupakan saluran yang beragam dan dinamis untuk berbagi cerita, membentuk hubungan, dan membangun komunitas. Dengan menggabungkan perjalanan dengan pengalaman yang dilakukan dengan cara berkunjung ke tempat dimakan ini, wisata kuliner menawarkan \"rasa tempat\" yang baik bagi penduduk lokal maupun wisatawan', 'UNWTO');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatanKODE` char(8) NOT NULL,
  `kecamatanNAMA` varchar(30) NOT NULL,
  `kecamatanALAMAT` varchar(255) NOT NULL,
  `kecamatanKET` text NOT NULL,
  `kabupatenKODE` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatanKODE`, `kecamatanNAMA`, `kecamatanALAMAT`, `kecamatanKET`, `kabupatenKODE`) VALUES
('33.08.02', 'Kecamatan Borobudur', 'Jl. Daranindra No.1, Borobudur, Magelang, Jawa Tengah 56553', 'Borobudur merupakan sebuah kecamatan di Kabupaten Magelang. Pusat pemerintahan kecamtan ini berada di Desa Borobudur. Kecamatan Borobudur merupakan salah satu kecamatan paling selatan yang berbatasan langsung dengan Provinsi Daerah Istimewa Yogyakarta. Batas utara adalah Kecamatan Tempuran, batas selatan adalah Provinsi DIY, batas barat adalah Kecamatan Salam, batas timur adalah Kecamatan Mungkid, Metoydan, Muntilan dan Ngluwar ', '33.08'),
('33.08.07', 'Kecamatan Sawangan', 'alan Serma Darmin No. 125, Sawangan (Jalan Blabak - Boyolali)', 'Sawangan merupakan sebuah kecamatan di Kabupaten Magelang, Jawa Tengah. Kantor pemerintahan kecamatan berada di Desa Sawangan. Di kecamtan ini terdapat obyek wisata yang cukup terkenal yaitu Ketep Pass, dan ada juga Taman Nasional Gunung Merapi yang diresmikan oleh Presiden Megawati Soekarno Putri pada tahun 2004. Di kecamatan ini terdapat 15 Desa, yiatu Desa Banyuroto, Butuh, Gantang, Gondowangi, Jati, Kapuhan, Ketep, Krogowanan, Mangunsari, Podosoko, Sawangan, Soronalan, Tirtosari, Wonolelo, dan Wulung Gunung.', '33.08'),
('33.08.09', 'Kecamatan Mungkid', 'Jalan Raya Blabak No. 1 Mungkid Kabupaten Magelang', 'Mungkid merupakan kecamatan di Kabupaten Magelang, Jawa Tengah. Kantor kecamatan Mungkid telah mengalami perpindahan pada tahun 2016, yaitu dari Desa Ambartawang ke Kantor Bangunan Baru di Jalan Raya Blabak No. 1 Mungkid Kabupaten Magelang. Batas utara adalah Kecamatan Mertoyudan, batas barat adalah Kecamatan Borobudur, batas selatan adalah Kecamatan Muntilan dan batas timur adalah Kecamatan Sawangan.', '33.08'),
('33.10.01', 'Kecamatan Prambanan', 'Jl. Raya Solo - Yogyakarta, Tlogo Kidul, Tlogo, Kecamatan Prambanan, Kabupaten Klaten, Jawa Tengah', 'Kecamatan Prambanan merupakan salah satu kecamatan yang berada di Kabupaten Klaten, Provinsi Jawa Tengah.  Kecamatan Prambanan terdiri dari 16 Desa atau Kelurahan dengan luas wilayah sekitar 24,43 kmÂ². Kecamatan Prambanan juga terdapat di Kabupaten Sleman, dengan nama yang sama yaitu Prambanan', '33.10'),
('33.12.01', 'Kecamatan Pracimantoro', ' Jl. Raya Pracimantoro-Wonogiri, Wonogiri', '-', '33.12'),
('33.12.08', 'Kecamatan Eromoko', ' Jl. Raya Eromoko No. 2, Eromoko, Wonogiri', '-', '33.12'),
('33.12.09', 'Kecamatan Wuryantoro', ' Jl. Raya Wuryantoro-Wonogiri, Wonogiri', '-', '33.12'),
('33.12.12', 'Kecamatan Wonogiri', ' Jl. Pemuda I No.5, Wonogiri', '', '33.12'),
('33.12.19', 'Kecamatan Slogohimo', 'Jl. Slogohimo No.119, Slogohimo, Wonogiri', '-', '33.12'),
('33.12.24', 'Kecamatan Paranggupito', 'Jl. Paranggupito, Wonogiri', '-', '33.12'),
('33.13.05', 'Kecamatan Matesih', 'Jl. TP. Joko Songo atau Jl. Raya Matesih, Matesih, Kabupaten Karanganyar, Jawa Tengah 57781', 'Kecamatan Matesih terbagi dalam 9 wiayah desa, yaitu: Dawung, Gantiwarno, Girilayu, Karangbangun, Koripan, Matesih, Ngadiluwih, Pablengan, Plosorejo', '33.13'),
('33.13.06', 'Kecamatan Tawangmangu', 'Kalisoro, Tawangmangu, Karanganyar, Kabupaten Karanganyar, Jawa Tengah 57792', 'Wilayah Kecamatan Tawangmangu terbagi dalam 3 Kelurahan dan 7 Desa, yaitu:  Kelurahan Tawangmangu, Blumbang, Kalisoro;  Desa Bandardawung, Gondosuli, Karanglo, Nglebak, Plumbon, Sepanjang, Tengklik. ', '33.13'),
('33.13.07', 'Kecamatan Ngargoyoso', 'Dusun Jenak, Desa Ngargoyoso', 'Kecamatan Ngargoyoso terbagi dalam 9 wilayah desa, yaitu: Berjo, Dukuh, Girimulyo, Jatirejo, Kemuning, Ngargoyoso, Nglegok, Puntukrejo, Segorogunung', '33.13'),
('33.13.08', 'Kecamatan Karangpandan', 'Jl. Solo Tawangmangu, Karangpandan, Kabupaten Karanganyar, Jawa Tengah 57791', 'Kecamatan Karangpandan terbagi dalam 11 wilayah desa, yaitu: Bangsri, Dayu, Doplang, Gerdu, Gondangmanis, Harjosari, Karang, Karangpandan, Ngemplak, Salam, Tohkuning', '33.13'),
('33.13.10', 'Kecamatan Tasikmadu', 'Jl. Ahmad Yani No.2 atau Jl. Papahan, Desa Ngijo, Tasikmadu, Karanganyar', 'Kecamatan Tasikmadu terbagi dalam 10 wilayah desa, yaitu: Buran, Gaum, Kalijirak, Kaling, Karangmojo, Ngijo, Pandeyan, Papahan, Suruh, Wonolopo.', '33.13'),
('33.13.17', 'Kecamatan Jenawi', 'Jl. Sragen-Balong, Balong, Jenawi, Kabupaten Karanganyar, Jawa Tengah 57794', 'Kecamatan Jenawi terbai dalam 9 wilayah desa, yaitu: Desa Anggrasmanis, Balong, Gumeng, Jenawi, Lempong, Menjing, Seloromo,     Sidomukti, dan Trengguli\r\n', '33.13'),
('33.72.01', 'Kecamatan Laweyan', 'Kantor Kecamatan: Jl. Dr. Radjiman No. 352 Surakarta Jawa Tengah 57111', '-', '33.72'),
('33.72.02', 'Kecamatan Serengan', 'Kantor Kecamatan: Jl. Veteran No. 271 Surakarta Jawa Tengah 57155', '-', '33.72'),
('33.72.03', 'Kecamatan Pasar Kliwon', 'Kantor Kecamatan: Jl. Kapten Mulyadi Surakarta Jawa Tengah', '-', '33.72'),
('33.74.01', 'Kecamatan Semarang Tengah', 'Kantor Kecamatan: Jl. Taman Seteran Barat Semarang 50134', 'Terdiri dari 13 Kelurahan: Kelurahan Kranggan, Kelurahan Gabahan, Kelurahan Miroto, Kelurahan Brumbungan, Kelurahan Jagalan, Kelurahan Kembangsari, Kelurahan Sekayu, Kelurahan Pandansari, Kelurahan Purwodinatan, Kelurahan Karangkidul, Kelurahan Pekunden, Kelurahan Bangunharjo, Kelurahan Kauman.', '33.74'),
('33.74.02', 'Kecamatan Semarang Utara', 'Kantor Kecamatan: Jl. Taman Brotojoyo No 2 Semarang 50178', 'Kecamatan Semarang Utara terdiri dari 8 Kelurahan: Kelurahan Bulu Lor, Dadapsari, Kuningan, Panggung Kidul, Panggung Lor, Plombokan, Purwosari, dan Tanjungmas', '33.74'),
('33.74.07', 'Kecamatan Semarang Selatan', 'Kantor Kecamatan: Jl. Taman Sompok Semarang 50249', 'Terdiri dari 10 Kelurahan: Kelurahan Barusari, Bulustalan, Lamper Kidul, Lamper Lor, Lamper Tengah, Mugassari, Peterongan, Pleburan, Randusari, dan Wonodri', '33.74'),
('33.74.13', 'Kecamatan Semarang Barat', 'Kantor Kecamatan: Jl Ronggolawe No 2 Semarang', 'Terdiri dari 18 Kelurahan: Bojongsalaman, Bongsari, Cabean, Gisikdrono, Kalibanteng Kidul, Kalibanteng Kulon, Karangayu, Kembangarum, Krapyak, Krobokan, Manyaran, Ngemplaksimongan, Salamanmloyo, Tambakharjo, Tawangmas, dan Tawangsari', '33.74'),
('34.02.10', 'Kecamatan Imogiri', 'Jl. Imogiri Bantul', '', '34.02'),
('34.02.11', 'Kecamatan Dlingo', 'Koripan I, Dlingo, Bantul', '', '34.02'),
('34.03.01', 'Kecamatan Wonosari', 'Jl. Veteran No.4, Kepek, Kecamatan Wonosari, Kabupaten Gunungkidul, Daerah Istimewa Yogyakarta', 'Wonosari merupakan ibukota Kabupaten Gunungkidul. Di kecamatan ini terdapat instansi-instansi otonom dari Kabupaten Gunungkidul. DiKecamatan Wonosari terdapat perkebunan rakyat dan perkebunan negara, yaitu di desa Mulo, masing-masing seluas 180,70 Ha dan 29,00 Ha, Sedangkan perkebunan negara yang ada di Desa Wareng seluas 34,00 Ha. Hutan Lindung terdapat di Desa Gari, seluas 50,00 Ha, sedangkan hutan produksi berada di Desa Karangtengah dengan luas 15,20 Ha. Dari luas wilayah Kecamatan Wonosari yaitu 7.977,73 Ha, lahan pertanian yang merupakan irigasi teknis seluas 488,14 Ha, irigasi 1/2 teknis 103,80 Ha, dan tadah hujan 742,32 Ha. Sedangkan 3.095,84 Ha merupakan tegal/ladang dan 2.446,72 Ha merupakan pemukiman penduduk.', '34.03'),
('34.03.03', 'Kecamatan Playen', 'Dukuh Ngawu, Desa Playen, Kabupaten Gunungkidul Telp. (0274) 391021', '', '34.03'),
('34.03.04', 'Kecamatan Patuk', ' Jl. Yogyakarta - Wonosari Km 16, Telp (0274) 522973', 'Kecamatan Patuk berjarak sekitar 15 km dari arah pusat Kota Wonosari sebagai ibu kota Kabupaten Gunungkidul yang dapat ditempuh melalui jalan nasional. Pusat pemerintahannya berada di Desa Patuk. Kecamatan Patuk terdiri dari 11 Desa : Beji, Bunder, Nglanggeran, Nglegi, Ngoro-oro, Patuk, Pengkok, Putat, Salam, Semoyo, Terbah. Destinasi wisata di kecamatan Patuk juga banyak seperti: Ekowisata Gunung Api Purba Nglanggeran, Agrowisata Embung Nglanggeran, Air terjun Kedungkandang, Air terjun Banyunibo.', '34.03'),
('34.03.07', 'Kecamatan Tepus', 'Bintaos, Seloharjo, Kecamatan Tepus, Kabupaten Gunungkidul, Telp. (0274)7133273', '-', '34.03'),
('34.03.15', 'Kecamatan Saptosari', ' Jl. Panggang km. 22 Kepek, Kecamatan Saptosari, Kabupaten GunungkidulTelp (0274)7491258)', '', '34.03'),
('34.03.17', 'Kecamatan Tanjungsri', 'Jl. Baron km. 17, Dayakan, Kemiri, Kecamatan Tanjungsari, Kabupaten Gunung Kidul.', '', '34.03'),
('34.04.09', 'Kecamatan Prambanan', 'Jl. Garuda No.17, Klurak Baru, Bokoharjo, Kecamatan Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta', '', '34.04'),
('99', 'A', 'A', 'A', '33.13');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `eventKODE` char(4) NOT NULL,
  `eventNAMA` varchar(255) NOT NULL,
  `kabupatenKODE` char(4) NOT NULL,
  `eventKET` text NOT NULL,
  `eventMULAI` date NOT NULL,
  `eventSELESAI` date NOT NULL,
  `eventPOSTER` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`eventKODE`, `eventNAMA`, `kabupatenKODE`, `eventKET`, `eventMULAI`, `eventSELESAI`, `eventPOSTER`) VALUES
('K001', 'Lomba Desain Wisata', 'KB04', 'Lomba merancang denah pariwisata yang berada di Kabupaten Magelang', '2017-09-04', '2017-09-20', 'Instruction.pdf'),
('K002', 'Pemilihan Abang dan None', 'KB03', 'Merupakan ajang pentas muda-mudi untuk mencari bakat penampilan yang menarik dari pemuda-pemudi di Kabupaten Klaten', '2017-06-06', '2017-07-05', 'noimage.png');

-- --------------------------------------------------------

--
-- Table structure for table `obyekwisata`
--

CREATE TABLE `obyekwisata` (
  `obyekKODE` char(12) NOT NULL,
  `obyekNAMA` varchar(120) NOT NULL,
  `kecamatanKODE` char(8) NOT NULL,
  `kategoriKODE` char(4) NOT NULL,
  `obyekALAMAT` varchar(255) NOT NULL,
  `obyekDERAJAT_S` int(3) NOT NULL,
  `obyekMENIT_S` int(2) NOT NULL,
  `obyekDETIK_S` float(5,2) NOT NULL,
  `obyekLATITUDE` float(15,11) NOT NULL,
  `obyekDERAJAT_E` int(2) NOT NULL,
  `obyekMENIT_E` int(2) NOT NULL,
  `obyekDETIK_E` float(5,2) NOT NULL,
  `obyekLONGITUDE` float(15,11) NOT NULL,
  `obyekKETINGGIAN` int(4) NOT NULL,
  `obyekJAMBUKA` time NOT NULL,
  `obyekJAMTUTUP` time NOT NULL,
  `obyekWAKTUKUNJUNG` int(3) NOT NULL,
  `obyekPOPULARITAS` int(1) NOT NULL,
  `obyekKEMUDAHAN` int(1) NOT NULL,
  `obyekDEFINISI` text NOT NULL,
  `obyekKETERANGAN` text NOT NULL,
  `obyekFOTO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obyekwisata`
--

INSERT INTO `obyekwisata` (`obyekKODE`, `obyekNAMA`, `kecamatanKODE`, `kategoriKODE`, `obyekALAMAT`, `obyekDERAJAT_S`, `obyekMENIT_S`, `obyekDETIK_S`, `obyekLATITUDE`, `obyekDERAJAT_E`, `obyekMENIT_E`, `obyekDETIK_E`, `obyekLONGITUDE`, `obyekKETINGGIAN`, `obyekJAMBUKA`, `obyekJAMTUTUP`, `obyekWAKTUKUNJUNG`, `obyekPOPULARITAS`, `obyekKEMUDAHAN`, `obyekDEFINISI`, `obyekKETERANGAN`, `obyekFOTO`) VALUES
('33.08.02-W01', 'Candi Borobudur', '33.08.02', 'KW01', 'Jl. Balaputradewa, Kecamatan Borobudur, Kabupaten Magelang, Jawa Tengah', 7, 36, 21.90, -7.60608339310, 110, 13, 8.60, 110.21905517578, 230, '06:00:00', '17:00:00', 120, 1, 1, 'Mrupakan Candi Budha terbesar di Indonesia dan Dunia, didirikan pada zaman Disnasti Sailendra.', 'Dinasti Sailendra membangun peninggalan Budha terbesar di dunia antara 780-840 Masehi. Dinasti Sailendra merupakan dinasti yang berkuasa pada masa itu. Peninggalan ini dibangun sebagai tempat pemujaan Budha dan tempat ziarah. Tempat ini berisi petunjuk agar manusia menjauhkan diri dari nafsu dunia dan menuju pencerahan dan kebijaksanaan menurut Buddha. Peninggalan ini ditemukan oleh Pasukan Inggris pada tahun 1814 dibawah pimpinan Sir Thomas Stanford Raffles. Area candi berhasil dibersihkan seluruhnya pada tahun 1835.\r\n\r\nBorobudur dibangun dengan gaya Mandala yang mencerminkan alam semesta dalam kepercayaan Buddha. Struktur bangunan ini berbentuk kotak dengan empat pintu masuk dan titik pusat berbentuk lingkaran. Jika dilihat dari luar hingga ke dalam terbagi menjadi dua bagian yaitu alam dunia yang terbagi menjadi tiga zona di bagian luar, dan alam Nirwana di bagian pusat.\r\n\r\nZona 1: Kamadhatu\r\n\r\nalam dunia yang terlihat dan sedang dialami oleh manusia sekarang.\r\n\r\nKamadhatu terdiri dari 160 relief yang menjelaskan Karmawibhangga Sutra, yaitu hukum sebab akibat. Menggambarkan mengenai sifat dan nafsu manusia, seperti merampok, membunuh, memperkosa, penyiksaan, dan fitnah.\r\n\r\nTudung penutup pada bagian dasar telah dibuka secara permanen agar pengunjung dapat melihat relief yang tersembunyi di bagian bawah. Koleksi foto seluruh 160 foto relief dapat dilihat di Museum Candi Borobudur yang terdapat di Borobudur Archaeological Park.\r\n\r\nZona 2: Rupadhatu\r\n\r\nalam peralihan, dimana manusia telah dibebaskan dari urusan dunia.\r\n\r\nRapadhatu terdiri dari galeri ukiran relief batu dan patung buddha. Secara keseluruhan ada 328 patung Buddha yang juga memiliki hiasan relief pada ukirannya.\r\n\r\nMenurut manuskrip Sansekerta pada bagian ini terdiri dari 1300 relief yang berupa Gandhawyuha, Lalitawistara, Jataka dan Awadana. Seluruhnya membentang sejauh 2,5 km dengan 1212 panel.\r\n\r\nZona 3: Arupadhatu\r\n\r\nalam tertinggi, rumah Tuhan.\r\n\r\nTiga serambi berbentuk lingkaran mengarah ke kubah di bagian pusat atau stupa yang menggambarkan kebangkitan dari dunia. Pada bagian ini tidak ada ornamen maupun hiasan, yang berarti menggambarkan kemurnian tertinggi.\r\n\r\nSerambi pada bagian ini terdiri dari stupa berbentuk lingkaran yang berlubang, lonceng terbalik, berisi patung Buddha yang mengarah ke bagian luar candi. Terdapat 72 stupa secara keseluruhan. Stupa terbesar yang berada di tengah tidak setinggi versi aslinya yang memiliki tinggi 42m diatas tanah dengan diameter 9.9m. Berbeda dengan stupa yang mengelilinginya, stupa pusat kosong dan menimbulkan perdebatan bahwa sebenarnya terdapat isi namun juga ada yang berpendapat bahwa stupa tersebut memang kosong.\r\n\r\nRelief\r\n\r\nSecara kesulurhan terdapat 504 Buddha dengan sikap meditasi dan enam posisi tangan yang berbeda di sepanjang candi.\r\n\r\nKoridor Candi\r\n\r\nSelama restorasi pada awal abad ke 20, ditemukan dua candi yang lebih kecil di sekitar Borobudur, yaitu Candi Pawon dan Candi Mendut yang segaris dengan Candi Borobudur. Candi Pawon berada 1.15 km dari Borobudur, sementara Candi Mendut berada 3 km dari Candi Borobudur. Terdapat kepercayaan bahwa ada hubungan keagamaan antara ketiga candi tersebut namun masih belum diketahui secara pasti proses ritualnya.\r\n\r\nKetiga candi membentuk rute untuk Festival Hari Waisak yag digelar tiap tahun saat bulan purnama pada Bulan April atau Mei. Festival tersebut sebagai peringatan atas lahir dan meninggalnya, serta pencerahan yang diberikan oleh Buddha Gautama (sumber: borobudurpark.com)', '1-2-borobudur1.jpg'),
('33.08.02-W02', 'Gereja Ayam - Bukit Rhema', '33.08.02', 'KW01', 'Jl. Borobudur - Ngadiharjo, Dusun Gombong, Desa Kembanglimus, Kecamatan Borobudur, Kabupaten Magelang. Jawa Tengah', 7, 36, 16.90, -7.60469436646, 110, 10, 58.00, 110.18277740479, 304, '05:00:00', '17:00:00', 120, 3, 4, 'Bukit Rhema dibangun dengan tujuan untuk Rumah Doa bagi Segala Bangsa, saat ini Bukit Rhema dikenal luas dengan nama Gereja Ayam. Setiap orang boleh datang ke tempat ini untuk berdoa dan menikmati kebesaran Tuhan melalui pemandangan yang indah.', 'Suatu hari saat Daniel sedang berdoa di lantai atas rumahnya, saat itu ia sedang mendoakan gereja GPdI Cipinang dan selesai berdoa dan membuka mata dan ia melihat di tembok ada gambar perbukitan dan Rumah Tuhan. Hanya beberapa detik lalu gambar itu pun hilang. Rupanya Tuhan sedang memberikan penglihatan tentang Bukit Rhema yang saat itu ia belum tahu maksudnya.\r\n\r\nSeperti biasa di masa liburan lebaran, ia dan keluarga pergi ke Borobudur (Lokasi Kampung Istri). Sesampainya disana, ada seorang pemuda desa yang bernama Jito akan mencari rumput di bukit. Daniel pun diajak Jito untuk naik ke bukit, sesampainya di bukit ia terheran-heran karena bukitnya sama dengan penglihatannya dan sangat indah.\r\n\r\nSelesai liburan ia kembali ke Jakarta tetapi bukit di dusun Gombong itu terus terbayang di pikirannya. Semacam ada suatu magnit untuk ia kembali lagi ke Borobudur, Jawa Tengah.\r\nTuntunan Roh Kudus\r\n\r\nBenar kalau Tuhan yang panggil kita tidak bisa mengelak, keinginan untuk kembali ke Borobudur tak tertahan, padahal baru 1 minggu dari sana, yang biasanya hanya sekali dalam setahun menjelang lebaran.\r\n\r\nIa kembali ke Borobudur dan pada sorenya mau berdoa ke bukit. Saat itu mertua tidak mengijinkan dengan alasan di bukit masih banyak ular dan jadi-jadian maupun roh jahat.\r\nBerdoa Semalaman di Bukit\r\n\r\nKeinginan untuk berdoa dalam hatinya tak terbendung, walau secara manusia ia juga seorang penakut. Roh Kudus senantiasa mengingatkan roh yang di dalam mu lebih besar dari roh yang di dunia. Akhirnya jam 5 menjelang magrib, ia sendirian ke bukit untuk berdoa, sampai di bukit hari sudah hampir gelap, dibawah sebuah pohon Daniel mulai memuji dan menyembah Tuhan. Suasana di bukit waktu itu sangat gelap dan dingin, untungnya saat itu ia bawa kain sarung dan lampu senter. Ada rasa takut tetapi TUHAN ingatkan ayat banyak malaikat-malaikat sorga mengelilingi orang-orang percaya, jadi ketakutan pun hilang (sumber: bukit rhema).', '1-1-gerejaayam.jpg'),
('33.08.07-W04', 'Ketep Pass', '33.08.07', 'KW03', 'Jalan Blabak, Desa Ketep, Kecamatan Sawangan, Kabupaten Magelang, Jawa Tenga', 7, 29, 40.80, -7.49466657639, 110, 22, 52.30, 110.38119506836, 1170, '06:00:00', '18:00:00', 150, 2, 2, 'Ketep Pass merupakan obyek wisata alam di ketinggian 1.170 mdpl.', 'Ketep Pass adalah salah nama sebuah objek wisata di Ketep, Sawangan, Magelang, Jawa Tengah. Ketep Pass ini merupakan Obyek Wisata alam yang dikembangkan dengan ciri khas wisata kegunungapian, khususnya Gunung Merapi.Pada tanggal 17 Oktober 2002, Ketep Pass diresmikan sebagai kawasan wisata jalur Soloâ€“Seloâ€“Borobudur (SSB) oleh Presiden ke-5 Megawati Soekarnoputri', '1-5-ketepas2.jpg'),
('33.08.09-W03', 'Candi Mendut', '33.08.09', 'KW01', 'Jl. Mayor Kusen, Desa Mendut, Kecamatan Mungkid, Kabupaten Magelang, Jawa Tengah', 7, 36, 20.00, -7.60555553436, 110, 13, 48.20, 110.23005676270, 0, '06:00:00', '17:00:00', 60, 2, 1, 'Candi Mendut merupakan bagian dari Borobudur Temple Compounds yang tercatat sebagai warisan budaya dunia nomor 592', 'Candi Mendut merupakan candi bercorak keagamaan Buddha Mahayana yang didirikan pada masa pemerintahan Raja Indra dan Dinasti Syailendra. Hal ini dibuktikan melalui Prasasti Karang Tengah yang berangka tahun 824 Masehi. Prasasti tersebut menyebutkan bahwa Raja Indra telah membangun bangunan suci bernama \'crimad venuwana\' yang berarti bangunan suci di tengah hutan bambu. Menurut J.G. de Casparis ahli arkeologi dari Belanda, kata ini dihubungkan dengan pendirian Candi Mendut. Keletakan Candi Mendut, Candi Pawon, dan Candi Borobudur berada pada garis imajiner lurus, yang mengindikasikan keterkaitan antara ketiga candi tersebut.', '1-4-candimendut1.jpg'),
('33.10.01-W01', 'Candi Plaosan (Lor dan Kidul)', '33.10.01', 'KW01', 'Jl. Candi Plaosan, Desa Bugisan, Kecamatan Prambanan, Kabupaten Klaten, Jawa Tengah', 7, 44, 31.70, -7.74213886261, 110, 30, 16.30, 110.50452423096, 174, '06:00:00', '17:00:00', 60, 1, 2, '---', '---', 'CANDIPLAOSANLOR.jpg'),
('33.10.01-W02', 'Candi Sojiwan', '33.10.01', 'KW01', 'Jl. Banjarsari, Desa Kebon Dalem Kidul, Kecamatan Prambananan, Kabupaten Klaten, Jawa Tengah', 7, 45, 36.30, -7.76008319855, 110, 29, 46.20, 110.49617004395, 157, '06:00:00', '17:00:00', 60, 2, 2, '---', '---', 'candisojiwan1.jpg'),
('33.12.01-W01', 'Museum Karst', '33.12.01', 'KW04', 'Dusun Danggolo, Desa Gebangharjo, Kecamatan Pracimantoro', 8, 2, 27.20, -8.04087543488, 110, 47, 0.00, 110.78333282471, 0, '08:00:00', '17:00:00', 120, 2, 1, 'Merupakan museum yang menyimpan semua kategori bebatuan karst dari seluruh Indonesia', 'Kecamatan Pracimantoro menyimpan banyak obyek wisata yang menarik, salah satunya adalah Museum Karst yang didirikan pada tahun 2007. Museum ini terdapat di Dusun Danggolo, Desa Gebangharjo, Kecamatan Pracimantoro, yang menjadi pusat penelitian karst, dan di disekitar museum ini terdapat beberapa goa yang menarik untuk dikunjungi dan dilakukan penelitian terhadap keberadaan goa ini. ', 'iconmuseumkarst.jpg'),
('33.12.01-W02', 'Goa Putri Kencono (Goa Growong)', '33.12.01', 'KW03', 'Desa Wonodadi, Kecamatan Pracimantoro 1', 8, 1, 29.40, -8.02483177185, 110, 54, 36.60, 110.91017150879, 0, '09:00:00', '16:00:00', 30, 4, 2, 'Merupakan Goa yang ada diperbukitan dengan bebatuan', 'Selain deretan goa-goa yang ada disekitar Museum Karst, masih ada Goa yang sangat menarik di Desa Wonodadi, Kecamatan Pracimantoro dengan jarak sekitar 3 km dari jalan raya Wonogiri Pracimantoro. Goa ini memiliki keindahan deretan stalagtit dan stalagmit dan masih banyak mengeluarkan air yang berasal dari bebatuan tersebut. Panjangnya lebih dari 100 meter, diberikan penerangan di dalam goa. Stalagtit dan stalagmit yang terbentuk sangat indah menyerupai gapura, candi, gading, dan taring yang mengkilap. ', 'icongoaputrikencono.jpg'),
('33.12.12-W01', 'Waduk Gajah Mungkur', '33.12.12', 'KW04', 'Jl. Raya Wonogiri-Wuryantoro, Desa Sendang, Kecamatan Wonogiri', 7, 51, 18.60, -7.85516834259, 110, 54, 44.20, 110.91226959229, 0, '08:00:00', '17:00:00', 180, 1, 1, 'Obyek Wisata Berupa Waduk Buatan yang sering disebut dengan Waduk Gajah Mungkur', 'Waduk gajah mungkur dibangun pada tahun 1970 â€“ 1978, dan saat ini mampu menampung air yang mencakup luas wilayah di 7 kecamatan dengan luas 8.800 ha. Di waduk gajah mungkur ini juga terdapat obyek wisata Waduk Gajah Mungkur di Desa Sendang, Kecamatan Wonogiri, tersedia fasilitas lengkap misal Restoran, Penginapan, Kebun Binatang, Panggung Hiburan. Obyek wisata ini terletak di sebelah selatan kota Wonogiri sekitar 7 km, ke arah Kecamatan Wuryantoro.', 'iconwadukwonogiri.jpg'),
('33.12.24-W01', 'Pantai Nampu', '33.12.24', 'KW03', 'Jl. Paranggupito atau Jl. Raya Pantai Nampu, Dusun Dringo, Desa Gunturharjo', 8, 12, 36.70, -8.21020221710, 110, 54, 10.20, 110.90284729004, 0, '05:00:00', '18:00:00', 150, 1, 2, 'Sebuah Pantai berpasir putih yang keberadaannya terpencil, berada pada ujung selatan Kabupaten Wonogiri. Pantai ini cukup panjang tetapi antara daratan dengan bibir pantai sangat pendek dengan deburan ombak yang sangat besar dan bersuara bergemuruh apaligi ketika sudah mulai pasang. Disebelah barat pantai nampu terdapat Pantai Sembukan dan sebelah timurnya terdapat Pantai Banyu Nibo (dalam bahasa Indonesia memiliki arti air yang jatuh). Pantai Nampu sangat elok dan alami sangat panjang cocok untuk rekreasi keluarga dengan minuman kas air kelapa muda. Jarak dari Kecamatan Paranggupito kurang lebih 14 km, disamping itu ditepi pantai juga ada sumber mata air, sehingga apabila sehabis bermain di pantai bisa langsung mandi dengan air tawar yang ada di dekat pantai tersebut. ', '', 'iconpantainampu.jpg'),
('33.13.06-W01', 'Air Terjun Grojogan Sewu', '33.13.06', 'KW03', 'Jl. Raya Tawangmangu, Desa Beji, Kecamatan Tawangmangu, Kabupaten Karanganyar, Jawa Tengah', 7, 39, 45.40, -7.66261100769, 111, 7, 55.80, 111.13216400146, 1106, '07:00:00', '16:00:00', 180, 1, 1, '---', '---', 'airterjungrojogan1.jpg'),
('33.13.06-W02', 'Bukit Sekipan', '33.13.06', 'KW03', 'Jl. Sekipan, Desa Kalisoro, Kecamatan Tawangmangu, Kabupaten Karanganyar, Jawa Tengah', 7, 40, 5.50, -7.66819429398, 111, 8, 37.30, 111.14369201660, 1195, '08:00:00', '18:00:00', 120, 2, 2, '---', '---', 'bukitsekipan1.jpg'),
('33.13.07-W01', 'Candi Sukuh', '33.13.07', 'KW01', 'Dukuh Sukuh, Desa Berjo', 7, 37, 39.70, -7.62769460678, 111, 7, 52.50, 111.13124847412, 1, '08:00:00', '17:00:00', 90, 2, 3, 'Merupakan Candi peninggalan masa kejayaan Hindu di tanah jawa dengan tanda terdapatnya obyek pemujaan Lingga dan Yoni. Candi-candi yang berdiri merupakan candi yang dianggap sebagian orang menampilkan ketidaknyaman para pengunjung karena bentuk yang ditonjolkan adalah alat kelamin manusia baik perempuan dan pria. Komplek candi ini berada di wilayah Dukuh Sukuh, Desa Berjo, Kecamatan Ngargoyoso, Kabupaten Karanganyar. Komplek candi ini berdampingan dengan Taman Hutan Raya (Tahura) KGPAA Mangkunegoro 1.', 'Komplek Candi Sukuh terletak dilereng Gunung Lawu (gunung api yang sudah tidak aktif) dengan ketinggian dari permukaan laut 1.184 meter sehingga memiliki udara yang sejuk dan sering berkabut terutama menjlang petang. Jarak antara Candi Sukuh dengan Candi Cetho kurang lebih 13 km dan dapat ditempuh dalam waktu 1 jam dengan jalanan yang cukup menegangkan menyusuri bukit-bukit gunung.', 'candisukuhicon.jpg'),
('33.13.07-W02', 'Kebun Teh Kemuning', '33.13.07', 'KW03', 'Jl. Kadipekso, Desa Kemuning dan Desa Ngargoyoso ', 7, 35, 59.40, -7.59983348846, 111, 7, 24.00, 111.12333679199, 920, '06:00:00', '17:00:00', 120, 2, 1, 'Merupakan obyek wisata kebun teh yang berada di Desa Kemuning juga berada di Desa Ngargoyoso, Kecamatan Ngargoyoso, Kabupaten Karanganyar. Sepanjang jalur jalan dari Jl. Raya Ngargoyoso-Kemuning, Jl. Raya Karangpandan-Ngargoyoso sampai dengan Jl. Kadipekso terdapat banyak obyek wisata alam yang begitu indah dengan pemandangn yang memikat ketika melakukan perjalanan. Lokasi ini juga merupakan lokasi Resto Kemuning.', 'Kawasan Kemuning berada di antara Candi Sukuh dan Candi Cetho. Candi Palanggatan dan Menggung. Untuk menuju tempat tersebut, tidak sulit. Kita bisa memakai angkutan umum dengan rute Karangpandan, Ngargoyoso, dan Jenawi. Hamparan hijau perkebunan teh sangat bagus dilahat. Di Kemuning, kita bisa menikmati pesiar dalam bentuk tea walk alias menjelajahi perkebunan teh. Tak hanya pemandangan hamparan teh. Puluhan perempuan bercaping dengan tenggok di punggung menjadi bumbu lain yang sedap dilihat. Mereka bekerja dengan penuh kesabaran dan ketelitian', 'kebuntehkemuningicon.jpg'),
('33.13.07-W03', 'Kampoeng Karet', '33.13.07', 'KW03', 'Jl. Karangpandan-Ngaroyoso, Dusun Kenteng, Desa Puntukrejo, Ngargoyoso, Karanganyar', 7, 37, 10.30, -7.61952781677, 111, 6, 9.30, 111.10258483887, 782, '08:00:00', '17:00:00', 30, 4, 1, '', '', 'kampoengkareticon.jpg'),
('33.13.07-W04', 'Air Terjun Jumog', '33.13.07', 'KW03', 'Jl. Ngranten Wetan, Desa Berjo, Kecamatan Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah', 7, 37, 51.80, -7.63104820251, 111, 7, 30.20, 111.12505340576, 995, '08:00:00', '17:00:00', 120, 2, 2, '---', '---', 'airterjunjumog1.jpg'),
('33.13.07-W05', 'Bale Branti Restoran', '33.13.07', 'KW05', 'Jl. Karangpandan-Ngargoyoso, Desa Girimulyo, Kecamatan Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah', 7, 36, 28.10, -7.60780572891, 111, 6, 57.10, 111.11585998535, 884, '06:00:00', '21:00:00', 90, 2, 1, '---', '---', 'balebranti1.jpg'),
('33.13.17-W01', 'Candi Cetho', '33.13.17', 'KW01', 'Jl. Kadipekso - Trengguli, Desa Gumeng, Kecamatan Jenawi, Kabupaten Karanganyar, Jawa Tengah', 7, 35, 42.90, -7.59525012970, 111, 9, 21.40, 111.15594482422, 1447, '07:00:00', '17:00:00', 120, 2, 3, '---', '---', 'candicetho1.jpg'),
('34.02.10-W01', 'Makam Raja Imogiri', '34.02.10', 'KW02', 'Jl. Makam Raja atau Jl. Imogiri â€“ Dlingo, Desa Imogiri, Kecamatan Imogiri, Kabupaten Bantul', 7, 55, 21.30, -7.92258310318, 110, 23, 36.10, 110.39336395264, 225, '00:00:00', '00:00:24', 90, 2, 2, '-', '-', 'makamrajaimogiri.jpg'),
('34.02.10-W02', 'Kampung Batik Giriloyo', '34.02.10', 'KW01', 'Jl. Imogiri Timur km 14, Gazebo Wisata Giriloyo, Desa Wukirsari, Kecamatan Imogiri, Kabupaten Bantul ', 7, 54, 57.20, -7.91588878632, 110, 23, 55.70, 110.39880371094, 0, '00:00:08', '00:00:16', 90, 3, 3, '-', '-', 'kampungbatikgiriloyo.jpg'),
('34.02.11-W01', 'Griya Dahar Mbok Sum', '34.02.11', 'KW05', 'Jl. Imogiri - Dlingo, Desa Mangunan, Kecamatan Dlingo, Kabupaten Bantul', 7, 55, 51.80, -7.93105554581, 110, 25, 28.00, 110.42444610596, 359, '00:00:10', '00:00:20', 90, 3, 2, '-', '-', 'riyadaharmboksum.jpg'),
('34.02.11-W02', 'Seribu Batu Songgo Langit', '34.02.11', 'KW03', 'Jl. Hutan Pinus Nganjir, Desa Mangunan, Kecamatan Dlingo, Kabupaten Bantul', 7, 55, 51.80, -7.93105554581, 110, 25, 52.20, 110.43116760254, 480, '06:00:00', '17:00:00', 120, 1, 2, '-', '-', 'seribubatusonggolangit.jpg'),
('34.02.11-W03', 'Hutan Pinus Mangunan', '34.02.11', 'KW03', 'Jl. Hutan Pinus Nganjir, Desa Mangunan, Kecamatan Dlingo, Kabupaten Bantul', 7, 55, 33.60, -7.92600011826, 110, 25, 49.30, 110.43035888672, 504, '06:00:00', '17:00:00', 60, 2, 2, '-', '-', 'hutanpinusmangunan.jpg'),
('34.02.11-W04', 'Lintang Sewu', '34.02.11', 'KW03', 'Jl. Dahromo, Karang Asem, Desa Muntuk, Kecamatan Dlingo, Kabupaten Bantul', 7, 54, 55.30, -7.91536092758, 110, 26, 12.30, 110.43675231934, 0, '00:00:06', '00:00:20', 120, 2, 2, '-', '-', 'lintangsewu.jpg'),
('34.03.01-W01', 'Etalase Taman Batu (Geo Park)', '34.03.01', 'KW04', 'Desa Mulo, Kecamatan Wonosari, Kabupaten Gunungkidul', 8, 1, 36.00, -8.02666473389, 110, 35, 14.90, 110.58747863770, 153, '01:00:00', '23:00:00', 30, 3, 1, '---', '---', 'etalasetamanbatu1.jpg'),
('34.03.01-W02', 'Pasar Ngingrong (Destinasi Digital)', '34.03.01', 'KW05', 'Desa Mulo, Kecamatan Wonosari, Kabupaten Gunungkidul', 8, 1, 39.40, -8.02762317657, 110, 35, 26.60, 110.59072113037, 162, '06:00:00', '14:00:00', 60, 3, 1, '---', '---', 'pasarngingrong1.jpg'),
('34.03.01-W03', 'Etalase Taman Batu (Geo Park)', '34.03.01', 'KW04', 'Desa Mulo, Kecamatan Wonosari, Kabupaten Gunungkidul', 8, 1, 35.10, -8.02641677856, 110, 35, 15.80, 110.58772277832, 153, '00:00:06', '00:00:20', 30, 4, 2, '-', '-', 'iconetalasetamanbatu.jpg'),
('34.03.03-W01', 'Pondok Ikan Bakar Bu Shintia', '34.03.03', 'KW05', 'Jl. Raya Yogyakarta - Wonosari KM 5, Desa Bandung, Kecamatan Playen, Kabupaten Gunungkidul', 7, 55, 35.90, -7.92663908005, 110, 33, 52.80, 110.56466674805, 210, '10:00:00', '21:00:00', 60, 3, 1, '---', '---', 'restobushintia1.jpg'),
('34.03.03-W02', 'Gudeg Yu Djum Pusat Wonosari', '34.03.03', 'KW05', 'Jalan Yogyakarta - Wonosari KM 7, Desa Gading, Kecamatan Playen, Kabupaten Gunungkidul', 7, 54, 38.10, -7.91058349609, 110, 33, 15.80, 110.55438995361, 217, '00:00:10', '00:00:20', 60, 3, 1, '-', '-', 'icongudegyudjum.jpg'),
('34.03.03-W03', 'Air Terjun Sri Gethuk', '34.03.03', 'KW03', 'Jl. Playen Dlingo, Desa Bleberan, Kecamatan Playen, Kabupaten Gunung Kidul', 7, 56, 49.30, -7.94702768326, 110, 29, 17.00, 110.48805236816, 126, '08:00:00', '17:00:00', 90, 2, 3, '-', '-', 'airterjunsrigethuk.jpg'),
('34.03.04-W01', 'Gunung Api Purba Nglanggeran - Ekowisata', '34.03.04', 'KW03', 'Desa Nglanggerang (dukuh Nglanggeran Wetan), Kecamatan Patuk, Kabupaten Gunungkidul', 7, 50, 35.00, -7.84305572510, 110, 32, 16.80, 110.53800201416, 530, '01:00:00', '23:00:00', 180, 2, 2, '---', '---', 'gunungapinglanggeran2.jpg'),
('34.03.04-W02', 'Embung Nglanggeran - Agrowisata', '34.03.04', 'KW03', 'Desa Nglanggerang (dukuh Nglanggeran Wetan), Kecamatan Patuk, Kabupaten Gunungkidul', 7, 50, 50.80, -7.84744453430, 110, 32, 43.00, 110.54528045654, 456, '01:00:00', '23:00:00', 90, 2, 2, '---', '---', 'embungnglanggeran1.jpg'),
('34.03.07-W01', 'Pantai Indrayanti (Pantai Pulang Sawal)', '34.03.07', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Sidoharjo, Kecamatan Tepus, Kabupaten Gunung Kidul, Yogyakarta', 8, 8, 58.85, -8.14968013763, 110, 36, 40.67, 110.61129760742, 0, '06:00:00', '18:00:00', 120, 1, 1, '---', '---', 'pantaiindrayanti1.jpg'),
('34.03.15-W01', 'Baron Techno Park', '34.03.15', 'KW04', 'Jl. Pantai Sel. Jawa, Desa Kanigoro, Kecamatan Saptosari, Kabupaten Gunungkidul', 8, 7, 53.50, -8.13152790070, 110, 32, 32.40, 110.54233551025, 44, '08:00:00', '17:00:00', 60, 2, 2, '---', '---', 'barontechno1.jpg'),
('34.03.15-W02', 'Pantai Ngobaran', '34.03.15', 'KW03', 'Jl. Ngobaran, Desa Kanigoro, Kecamatan Saptosari, Kabupaten Gunungkidul, Daerah Istimewa Yogyakarta', 8, 7, 6.40, -8.11844444275, 110, 30, 12.40, 110.50344085693, 0, '00:00:05', '00:00:18', 60, 4, 3, '-', '-', 'iconpantaingobaran.jpg'),
('34.03.15-W03', 'Pantai Ngrenehan', '34.03.15', 'KW03', 'Jl. Ngrenehan, Desa Kanigoro, Kecamatan Saptosari, Kabupaten Gunungkidul, Daerah Istimewa Yogyakarta', 8, 7, 14.30, -8.12063884735, 110, 30, 27.90, 110.50775146484, 0, '00:00:06', '00:00:18', 60, 3, 4, '-', '-', 'pantaingrenehan.jpg'),
('34.03.17-W01', 'Pantai Baron', '34.03.17', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Kemadang, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 7, 44.80, -8.12911796570, 110, 32, 54.50, 110.54848480225, 0, '06:00:00', '18:00:00', 60, 2, 1, '---', '---', 'pantaibaron1.jpg'),
('34.03.17-W02', 'Pantai Kukup', '34.03.17', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Kemadang, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 8, 0.30, -8.13341236115, 110, 33, 17.30, 110.55480194092, 0, '06:00:00', '18:00:00', 90, 1, 1, '---', '---', 'pantaikukup1.jpg'),
('34.03.17-W03', 'Rumah Makan Griyo Wono', '34.03.17', 'KW05', 'Jl. Pantai Selatan Jawa, Desa Kemadang, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 7, 43.80, -8.12883377075, 110, 33, 52.90, 110.56469726562, 0, '08:00:00', '21:00:00', 60, 3, 1, '---', '---', 'restogriyowono1.jpg'),
('34.03.17-W04', 'Pantai Sepanjang', '34.03.17', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Kemadang, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 8, 12.90, -8.13691711426, 110, 34, 1.10, 110.56697082520, 0, '06:00:00', '18:00:00', 120, 1, 1, '---', '---', 'pantaisepanjang1.jpg'),
('34.03.17-W05', 'Pantai Nglolang', '34.03.17', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Kemadang, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 8, 9.00, -8.13583374023, 110, 33, 42.70, 110.56185913086, 0, '06:00:00', '18:00:00', 15, 3, 2, '---', '---', 'pantainglolang1.jpg'),
('34.03.17-W06', 'Pantai Drini', '34.03.17', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Kemadang, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 8, 15.80, -8.13772201538, 110, 34, 37.60, 110.57711029053, 0, '06:00:00', '18:00:00', 120, 2, 1, '---', '---', 'pantaidrini1.jpg'),
('34.03.17-W07', 'Pantai Krakal', '34.03.17', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Banjarejo, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 8, 41.50, -8.14486122131, 110, 35, 59.40, 110.59983062744, 0, '06:00:00', '18:00:00', 60, 2, 1, '---', '---', 'pantaikrakal1.jpg'),
('34.03.17-W08', 'Pantai Somandeng', '34.03.17', 'KW03', 'Jl. Pantai Selatan Jawa, Desa Ngestirejo, Kecamatan Tanjungsari, Kabupaten Gunungkidul', 8, 8, 54.10, -8.14836120605, 110, 36, 34.60, 110.60961151123, 0, '06:00:00', '18:00:00', 60, 2, 1, '---', '---', 'pantaisomandeng1.jpg'),
('34.04.09-W01', 'Candi Kalasan', '34.04.09', 'KW01', 'Jl. Raya Solo - Yogyakarta, Desa Purwomartani, Kecamatan Kalasan, Kabupaten Sleman, Daerah Istimewa Yogyakarta', 7, 46, 0.20, -7.76672220230, 110, 28, 20.50, 110.47235870361, 144, '08:00:00', '17:00:00', 30, 3, 1, '---', '---', 'candikalasan1.jpg'),
('34.04.09-W02', 'Candi Sari', '34.04.09', 'KW01', 'Jl. Raya Solo - Yogyakarta, Desa Purwomartani, Kecamatan Kalasan, Kabupaten Sleman, Daerah Istimewa Yogyakarta', 7, 45, 41.40, -7.76149988174, 110, 28, 28.50, 110.47458648682, 126, '08:00:00', '17:00:00', 30, 3, 2, '---', '---', 'candisari1.jpg'),
('34.04.09-W03', 'Candi Prambanan', '34.04.09', 'KW01', 'Jl. Candi Sewu, Desa Bokoharjo, Kecamatan Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta', 7, 45, 15.90, -7.75441646576, 110, 29, 44.60, 110.49571990967, 157, '06:00:00', '17:00:00', 180, 1, 1, '---', '---', 'candiprambanan1.jpg'),
('34.04.09-W04', 'Keraton Ratu Boko (Keraton masa Kerajaan)', '34.04.09', 'KW01', 'Jl. Ratu Boko, Desa Bokoharjo, Kecamatan Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta', 7, 46, 10.00, -7.76944446564, 110, 29, 7.15, 110.48532104492, 198, '06:00:00', '17:00:00', 120, 1, 2, '---', '---', 'candikratonboko1.jpg'),
('34.04.09-W05', 'Taman Tebing Breksi (Taman Pandang Sore Hari)', '34.04.09', 'KW03', 'Jl. Candi Ijo, Desa Sambi Rejo, Kecamatan Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta', 7, 46, 53.20, -7.78144454956, 110, 30, 18.50, 110.50514221191, 313, '05:00:00', '18:00:00', 120, 2, 2, '---', '---', 'tebingbreksi1.jpg'),
('34.04.09-W06', 'Candi Ijo', '34.04.09', 'KW01', 'Jl. Candi Ijo, Desa Sambi Rejo, Kecamatan Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta', 7, 47, 2.80, -7.78411102295, 110, 30, 40.60, 110.51127624512, 380, '06:00:00', '17:00:00', 60, 2, 2, '---', '---', 'candiijo1.jpg'),
('34.04.09-W07', 'Desa Wisata Rumah Domes', '33.10.01', 'KW04', 'Desa Sumberharjo (dusun Sengir), Kecamatan Prambanan, Kabupaten Sleman', 7, 48, 49.90, -7.81386089325, 110, 30, 11.00, 110.50305175781, 103, '00:00:08', '00:00:16', 60, 4, 3, '-', '-', 'iconrumahdomes.jpg'),
('34.04.09-W08', 'Bukit Teletubbies', '33.10.01', 'KW03', 'Desa Wukirharjo, Kecamatan Prambanan, Kabupaten Sleman', 7, 49, 6.10, -7.81836128235, 110, 30, 44.10, 110.51225280762, 274, '00:00:08', '00:00:18', 45, 4, 5, '-', '-', 'iconbukittelettubies.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `pengelolaKODE` int(4) NOT NULL,
  `pengelolaNAMA1` char(25) NOT NULL,
  `pengelolaNAMA2` char(35) NOT NULL,
  `pengelolaEMAIL` varchar(255) NOT NULL,
  `pengelolaPASSWORD` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`pengelolaKODE`, `pengelolaNAMA1`, `pengelolaNAMA2`, `pengelolaEMAIL`, `pengelolaPASSWORD`) VALUES
(5, 'wasino', 'wasino', 'wwasino@yahoo.com', '8f2fcdbe60faa4dfd985c883db3674a4'),
(6, 'was', 'Wasino', 'wwasino@yahoo.com', '306c561c2cf169b577ccb1c6ee9452a1');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `sliderKODE` char(4) NOT NULL,
  `sliderFOTO` varchar(255) NOT NULL,
  `sliderJUDUL` varchar(255) NOT NULL,
  `sliderKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sliderKODE`, `sliderFOTO`, `sliderJUDUL`, `sliderKET`) VALUES
('SL01', 'CandiCetho1.jpg', 'Candi Cehto', 'Candi Cetho merupakan candi peninggalan masa Hindu'),
('SL02', 'PantaiIndrayanti1.jpg', 'Pantai Indrayanti', 'Merupakan pantai yang yang memiliki bibir pantai yang panjang dengan sebutan lain Pantai Pulang Sawal.');

-- --------------------------------------------------------

--
-- Table structure for table `tampung`
--

CREATE TABLE `tampung` (
  `Tempat` varchar(255) NOT NULL,
  `Centroid` varchar(255) NOT NULL,
  `Customer_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tampung`
--

INSERT INTO `tampung` (`Tempat`, `Centroid`, `Customer_ID`) VALUES
('Candi Borobudur', '0', 'CUST001'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST001'),
('Ketep Pass', '0', 'CUST001'),
('Candi Mendut', '0', 'CUST001'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST001'),
('Candi Sojiwan', '0', 'CUST001'),
('Museum Karst', '0', 'CUST001'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST001'),
('Waduk Gajah Mungkur', '0', 'CUST001'),
('Pantai Nampu', '0', 'CUST001'),
('Air Terjun Grojogan Sewu', '0', 'CUST001'),
('Bukit Sekipan', '0', 'CUST001'),
('Candi Sukuh', '0', 'CUST001'),
('Kebun Teh Kemuning', '0', 'CUST001'),
('Kampoeng Karet', '0', 'CUST001'),
('Air Terjun Jumog', '0', 'CUST001'),
('Bale Branti Restoran', '0', 'CUST001'),
('Candi Cetho', '0', 'CUST001'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST001'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST001'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST001'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST001'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST001'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST001'),
('Baron Techno Park', '0', 'CUST001'),
('Pantai Baron', '0', 'CUST001'),
('Pantai Kukup', '0', 'CUST001'),
('Rumah Makan Griyo Wono', '0', 'CUST001'),
('Pantai Sepanjang', '0', 'CUST001'),
('Pantai Nglolang', '0', 'CUST001'),
('Pantai Drini', '0', 'CUST001'),
('Pantai Krakal', '0', 'CUST001'),
('Pantai Somandeng', '0', 'CUST001'),
('Candi Kalasan', '0', 'CUST001'),
('Candi Sari', '0', 'CUST001'),
('Candi Prambanan', '0', 'CUST001'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST001'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST001'),
('Candi Ijo', '0', 'CUST001'),
('Candi Borobudur', '0', 'CUST002'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST002'),
('Ketep Pass', '0', 'CUST002'),
('Candi Mendut', '0', 'CUST002'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST002'),
('Candi Sojiwan', '0', 'CUST002'),
('Museum Karst', '0', 'CUST002'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST002'),
('Waduk Gajah Mungkur', '0', 'CUST002'),
('Pantai Nampu', '0', 'CUST002'),
('Air Terjun Grojogan Sewu', '0', 'CUST002'),
('Bukit Sekipan', '0', 'CUST002'),
('Candi Sukuh', '0', 'CUST002'),
('Kebun Teh Kemuning', '0', 'CUST002'),
('Kampoeng Karet', '0', 'CUST002'),
('Air Terjun Jumog', '0', 'CUST002'),
('Bale Branti Restoran', '0', 'CUST002'),
('Candi Cetho', '0', 'CUST002'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST002'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST002'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST002'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST002'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST002'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST002'),
('Baron Techno Park', '0', 'CUST002'),
('Pantai Baron', '0', 'CUST002'),
('Pantai Kukup', '0', 'CUST002'),
('Rumah Makan Griyo Wono', '0', 'CUST002'),
('Pantai Sepanjang', '0', 'CUST002'),
('Pantai Nglolang', '0', 'CUST002'),
('Pantai Drini', '0', 'CUST002'),
('Pantai Krakal', '0', 'CUST002'),
('Pantai Somandeng', '0', 'CUST002'),
('Candi Kalasan', '0', 'CUST002'),
('Candi Sari', '0', 'CUST002'),
('Candi Prambanan', '0', 'CUST002'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST002'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST002'),
('Candi Ijo', '0', 'CUST002'),
('Candi Borobudur', '0', 'CUST003'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST003'),
('Ketep Pass', '0', 'CUST003'),
('Candi Mendut', '0', 'CUST003'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST003'),
('Candi Sojiwan', '0', 'CUST003'),
('Museum Karst', '0', 'CUST003'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST003'),
('Waduk Gajah Mungkur', '0', 'CUST003'),
('Pantai Nampu', '0', 'CUST003'),
('Air Terjun Grojogan Sewu', '0', 'CUST003'),
('Bukit Sekipan', '0', 'CUST003'),
('Candi Sukuh', '0', 'CUST003'),
('Kebun Teh Kemuning', '0', 'CUST003'),
('Kampoeng Karet', '0', 'CUST003'),
('Air Terjun Jumog', '0', 'CUST003'),
('Bale Branti Restoran', '0', 'CUST003'),
('Candi Cetho', '0', 'CUST003'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST003'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST003'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST003'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST003'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST003'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST003'),
('Baron Techno Park', '0', 'CUST003'),
('Pantai Baron', '0', 'CUST003'),
('Pantai Kukup', '0', 'CUST003'),
('Rumah Makan Griyo Wono', '0', 'CUST003'),
('Pantai Sepanjang', '0', 'CUST003'),
('Pantai Nglolang', '0', 'CUST003'),
('Pantai Drini', '0', 'CUST003'),
('Pantai Krakal', '0', 'CUST003'),
('Pantai Somandeng', '0', 'CUST003'),
('Candi Kalasan', '0', 'CUST003'),
('Candi Sari', '0', 'CUST003'),
('Candi Prambanan', '0', 'CUST003'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST003'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST003'),
('Candi Ijo', '0', 'CUST003'),
('Candi Borobudur', '0', 'CUST004'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST004'),
('Ketep Pass', '0', 'CUST004'),
('Candi Mendut', '0', 'CUST004'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST004'),
('Candi Sojiwan', '0', 'CUST004'),
('Museum Karst', '0', 'CUST004'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST004'),
('Waduk Gajah Mungkur', '0', 'CUST004'),
('Pantai Nampu', '0', 'CUST004'),
('Air Terjun Grojogan Sewu', '0', 'CUST004'),
('Bukit Sekipan', '0', 'CUST004'),
('Candi Sukuh', '0', 'CUST004'),
('Kebun Teh Kemuning', '0', 'CUST004'),
('Kampoeng Karet', '0', 'CUST004'),
('Air Terjun Jumog', '0', 'CUST004'),
('Bale Branti Restoran', '0', 'CUST004'),
('Candi Cetho', '0', 'CUST004'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST004'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST004'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST004'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST004'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST004'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST004'),
('Baron Techno Park', '0', 'CUST004'),
('Pantai Baron', '0', 'CUST004'),
('Pantai Kukup', '0', 'CUST004'),
('Rumah Makan Griyo Wono', '0', 'CUST004'),
('Pantai Sepanjang', '0', 'CUST004'),
('Pantai Nglolang', '0', 'CUST004'),
('Pantai Drini', '0', 'CUST004'),
('Pantai Krakal', '0', 'CUST004'),
('Pantai Somandeng', '0', 'CUST004'),
('Candi Kalasan', '0', 'CUST004'),
('Candi Sari', '0', 'CUST004'),
('Candi Prambanan', '0', 'CUST004'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST004'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST004'),
('Candi Ijo', '0', 'CUST004'),
('Candi Borobudur', '0', 'CUST005'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST005'),
('Ketep Pass', '0', 'CUST005'),
('Candi Mendut', '0', 'CUST005'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST005'),
('Candi Sojiwan', '0', 'CUST005'),
('Museum Karst', '0', 'CUST005'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST005'),
('Waduk Gajah Mungkur', '0', 'CUST005'),
('Pantai Nampu', '0', 'CUST005'),
('Air Terjun Grojogan Sewu', '0', 'CUST005'),
('Bukit Sekipan', '0', 'CUST005'),
('Candi Sukuh', '0', 'CUST005'),
('Kebun Teh Kemuning', '0', 'CUST005'),
('Kampoeng Karet', '0', 'CUST005'),
('Air Terjun Jumog', '0', 'CUST005'),
('Bale Branti Restoran', '0', 'CUST005'),
('Candi Cetho', '0', 'CUST005'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST005'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST005'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST005'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST005'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST005'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST005'),
('Baron Techno Park', '0', 'CUST005'),
('Pantai Baron', '0', 'CUST005'),
('Pantai Kukup', '0', 'CUST005'),
('Rumah Makan Griyo Wono', '0', 'CUST005'),
('Pantai Sepanjang', '0', 'CUST005'),
('Pantai Nglolang', '0', 'CUST005'),
('Pantai Drini', '0', 'CUST005'),
('Pantai Krakal', '0', 'CUST005'),
('Pantai Somandeng', '0', 'CUST005'),
('Candi Kalasan', '0', 'CUST005'),
('Candi Sari', '0', 'CUST005'),
('Candi Prambanan', '0', 'CUST005'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST005'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST005'),
('Candi Ijo', '0', 'CUST005'),
('Candi Borobudur', '0', 'CUST006'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST006'),
('Ketep Pass', '0', 'CUST006'),
('Candi Mendut', '0', 'CUST006'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST006'),
('Candi Sojiwan', '0', 'CUST006'),
('Museum Karst', '0', 'CUST006'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST006'),
('Waduk Gajah Mungkur', '0', 'CUST006'),
('Pantai Nampu', '0', 'CUST006'),
('Air Terjun Grojogan Sewu', '0', 'CUST006'),
('Bukit Sekipan', '0', 'CUST006'),
('Candi Sukuh', '0', 'CUST006'),
('Kebun Teh Kemuning', '0', 'CUST006'),
('Kampoeng Karet', '0', 'CUST006'),
('Air Terjun Jumog', '0', 'CUST006'),
('Bale Branti Restoran', '0', 'CUST006'),
('Candi Cetho', '0', 'CUST006'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST006'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST006'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST006'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST006'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST006'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST006'),
('Baron Techno Park', '0', 'CUST006'),
('Pantai Baron', '0', 'CUST006'),
('Pantai Kukup', '0', 'CUST006'),
('Rumah Makan Griyo Wono', '0', 'CUST006'),
('Pantai Sepanjang', '0', 'CUST006'),
('Pantai Nglolang', '0', 'CUST006'),
('Pantai Drini', '0', 'CUST006'),
('Pantai Krakal', '0', 'CUST006'),
('Pantai Somandeng', '0', 'CUST006'),
('Candi Kalasan', '0', 'CUST006'),
('Candi Sari', '0', 'CUST006'),
('Candi Prambanan', '0', 'CUST006'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST006'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST006'),
('Candi Ijo', '0', 'CUST006'),
('Candi Borobudur', '0', 'CUST007'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST007'),
('Ketep Pass', '0', 'CUST007'),
('Candi Mendut', '0', 'CUST007'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST007'),
('Candi Sojiwan', '0', 'CUST007'),
('Museum Karst', '0', 'CUST007'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST007'),
('Waduk Gajah Mungkur', '0', 'CUST007'),
('Pantai Nampu', '0', 'CUST007'),
('Air Terjun Grojogan Sewu', '0', 'CUST007'),
('Bukit Sekipan', '0', 'CUST007'),
('Candi Sukuh', '0', 'CUST007'),
('Kebun Teh Kemuning', '0', 'CUST007'),
('Kampoeng Karet', '0', 'CUST007'),
('Air Terjun Jumog', '0', 'CUST007'),
('Bale Branti Restoran', '0', 'CUST007'),
('Candi Cetho', '0', 'CUST007'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST007'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST007'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST007'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST007'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST007'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST007'),
('Baron Techno Park', '0', 'CUST007'),
('Pantai Baron', '0', 'CUST007'),
('Pantai Kukup', '0', 'CUST007'),
('Rumah Makan Griyo Wono', '0', 'CUST007'),
('Pantai Sepanjang', '0', 'CUST007'),
('Pantai Nglolang', '0', 'CUST007'),
('Pantai Drini', '0', 'CUST007'),
('Pantai Krakal', '0', 'CUST007'),
('Pantai Somandeng', '0', 'CUST007'),
('Candi Kalasan', '0', 'CUST007'),
('Candi Sari', '0', 'CUST007'),
('Candi Prambanan', '0', 'CUST007'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST007'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST007'),
('Candi Ijo', '0', 'CUST007'),
('Candi Borobudur', '0', 'CUST008'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST008'),
('Ketep Pass', '0', 'CUST008'),
('Candi Mendut', '0', 'CUST008'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST008'),
('Candi Sojiwan', '0', 'CUST008'),
('Museum Karst', '0', 'CUST008'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST008'),
('Waduk Gajah Mungkur', '0', 'CUST008'),
('Pantai Nampu', '0', 'CUST008'),
('Air Terjun Grojogan Sewu', '0', 'CUST008'),
('Bukit Sekipan', '0', 'CUST008'),
('Candi Sukuh', '0', 'CUST008'),
('Kebun Teh Kemuning', '0', 'CUST008'),
('Kampoeng Karet', '0', 'CUST008'),
('Air Terjun Jumog', '0', 'CUST008'),
('Bale Branti Restoran', '0', 'CUST008'),
('Candi Cetho', '0', 'CUST008'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST008'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST008'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST008'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST008'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST008'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST008'),
('Baron Techno Park', '0', 'CUST008'),
('Pantai Baron', '0', 'CUST008'),
('Pantai Kukup', '0', 'CUST008'),
('Rumah Makan Griyo Wono', '0', 'CUST008'),
('Pantai Sepanjang', '0', 'CUST008'),
('Pantai Nglolang', '0', 'CUST008'),
('Pantai Drini', '0', 'CUST008'),
('Pantai Krakal', '0', 'CUST008'),
('Pantai Somandeng', '0', 'CUST008'),
('Candi Kalasan', '0', 'CUST008'),
('Candi Sari', '0', 'CUST008'),
('Candi Prambanan', '0', 'CUST008'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST008'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST008'),
('Candi Ijo', '0', 'CUST008'),
('Candi Borobudur', '0', 'CUST009'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST009'),
('Ketep Pass', '0', 'CUST009'),
('Candi Mendut', '0', 'CUST009'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST009'),
('Candi Sojiwan', '0', 'CUST009'),
('Museum Karst', '0', 'CUST009'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST009'),
('Waduk Gajah Mungkur', '0', 'CUST009'),
('Pantai Nampu', '0', 'CUST009'),
('Air Terjun Grojogan Sewu', '0', 'CUST009'),
('Bukit Sekipan', '0', 'CUST009'),
('Candi Sukuh', '0', 'CUST009'),
('Kebun Teh Kemuning', '0', 'CUST009'),
('Kampoeng Karet', '0', 'CUST009'),
('Air Terjun Jumog', '0', 'CUST009'),
('Bale Branti Restoran', '0', 'CUST009'),
('Candi Cetho', '0', 'CUST009'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST009'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST009'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST009'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST009'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST009'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST009'),
('Baron Techno Park', '0', 'CUST009'),
('Pantai Baron', '0', 'CUST009'),
('Pantai Kukup', '0', 'CUST009'),
('Rumah Makan Griyo Wono', '0', 'CUST009'),
('Pantai Sepanjang', '0', 'CUST009'),
('Pantai Nglolang', '0', 'CUST009'),
('Pantai Drini', '0', 'CUST009'),
('Pantai Krakal', '0', 'CUST009'),
('Pantai Somandeng', '0', 'CUST009'),
('Candi Kalasan', '0', 'CUST009'),
('Candi Sari', '0', 'CUST009'),
('Candi Prambanan', '0', 'CUST009'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST009'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST009'),
('Candi Ijo', '0', 'CUST009'),
('Candi Borobudur', '0', 'CUST010'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST010'),
('Ketep Pass', '0', 'CUST010'),
('Candi Mendut', '0', 'CUST010'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST010'),
('Candi Sojiwan', '0', 'CUST010'),
('Museum Karst', '2', 'CUST010'),
('Goa Putri Kencono (Goa Growong)', '2', 'CUST010'),
('Waduk Gajah Mungkur', '2', 'CUST010'),
('Pantai Nampu', '2', 'CUST010'),
('Air Terjun Grojogan Sewu', '0', 'CUST010'),
('Bukit Sekipan', '0', 'CUST010'),
('Candi Sukuh', '2', 'CUST010'),
('Kebun Teh Kemuning', '2', 'CUST010'),
('Kampoeng Karet', '2', 'CUST010'),
('Air Terjun Jumog', '0', 'CUST010'),
('Bale Branti Restoran', '0', 'CUST010'),
('Candi Cetho', '0', 'CUST010'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST010'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST010'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST010'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST010'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST010'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST010'),
('Baron Techno Park', '0', 'CUST010'),
('Pantai Baron', '0', 'CUST010'),
('Pantai Kukup', '0', 'CUST010'),
('Rumah Makan Griyo Wono', '0', 'CUST010'),
('Pantai Sepanjang', '0', 'CUST010'),
('Pantai Nglolang', '0', 'CUST010'),
('Pantai Drini', '0', 'CUST010'),
('Pantai Krakal', '0', 'CUST010'),
('Pantai Somandeng', '0', 'CUST010'),
('Candi Kalasan', '0', 'CUST010'),
('Candi Sari', '0', 'CUST010'),
('Candi Prambanan', '0', 'CUST010'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST010'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST010'),
('Candi Ijo', '0', 'CUST010'),
('Candi Borobudur', '2', 'CUST011'),
('Gereja Ayam - Bukit Rhema', '2', 'CUST011'),
('Ketep Pass', '2', 'CUST011'),
('Candi Mendut', '2', 'CUST011'),
('Candi Plaosan (Lor dan Kidul)', '2', 'CUST011'),
('Candi Sojiwan', '2', 'CUST011'),
('Museum Karst', '0', 'CUST011'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST011'),
('Waduk Gajah Mungkur', '0', 'CUST011'),
('Pantai Nampu', '0', 'CUST011'),
('Air Terjun Grojogan Sewu', '2', 'CUST011'),
('Bukit Sekipan', '2', 'CUST011'),
('Candi Sukuh', '0', 'CUST011'),
('Kebun Teh Kemuning', '0', 'CUST011'),
('Kampoeng Karet', '0', 'CUST011'),
('Air Terjun Jumog', '2', 'CUST011'),
('Bale Branti Restoran', '2', 'CUST011'),
('Candi Cetho', '2', 'CUST011'),
('Etalase Taman Batu (Geo Park)', '2', 'CUST011'),
('Pasar Ngingrong (Destinasi Digital)', '2', 'CUST011'),
('Pondok Ikan Bakar Bu Shintia', '2', 'CUST011'),
('Gunung Api Purba Nglanggeran - Ekowisata', '2', 'CUST011'),
('Embung Nglanggeran - Agrowisata', '2', 'CUST011'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '2', 'CUST011'),
('Baron Techno Park', '2', 'CUST011'),
('Pantai Baron', '2', 'CUST011'),
('Pantai Kukup', '2', 'CUST011'),
('Rumah Makan Griyo Wono', '2', 'CUST011'),
('Pantai Sepanjang', '2', 'CUST011'),
('Pantai Nglolang', '2', 'CUST011'),
('Pantai Drini', '2', 'CUST011'),
('Pantai Krakal', '2', 'CUST011'),
('Pantai Somandeng', '2', 'CUST011'),
('Candi Kalasan', '2', 'CUST011'),
('Candi Sari', '2', 'CUST011'),
('Candi Prambanan', '2', 'CUST011'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '2', 'CUST011'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '2', 'CUST011'),
('Candi Ijo', '2', 'CUST011'),
('Candi Borobudur', '0', 'CUST012'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST012'),
('Ketep Pass', '0', 'CUST012'),
('Candi Mendut', '0', 'CUST012'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST012'),
('Candi Sojiwan', '0', 'CUST012'),
('Museum Karst', '0', 'CUST012'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST012'),
('Waduk Gajah Mungkur', '0', 'CUST012'),
('Pantai Nampu', '0', 'CUST012'),
('Air Terjun Grojogan Sewu', '0', 'CUST012'),
('Bukit Sekipan', '0', 'CUST012'),
('Candi Sukuh', '0', 'CUST012'),
('Kebun Teh Kemuning', '0', 'CUST012'),
('Kampoeng Karet', '0', 'CUST012'),
('Air Terjun Jumog', '0', 'CUST012'),
('Bale Branti Restoran', '0', 'CUST012'),
('Candi Cetho', '0', 'CUST012'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST012'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST012'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST012'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST012'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST012'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST012'),
('Baron Techno Park', '0', 'CUST012'),
('Pantai Baron', '0', 'CUST012'),
('Pantai Kukup', '0', 'CUST012'),
('Rumah Makan Griyo Wono', '0', 'CUST012'),
('Pantai Sepanjang', '0', 'CUST012'),
('Pantai Nglolang', '0', 'CUST012'),
('Pantai Drini', '0', 'CUST012'),
('Pantai Krakal', '0', 'CUST012'),
('Pantai Somandeng', '0', 'CUST012'),
('Candi Kalasan', '0', 'CUST012'),
('Candi Sari', '0', 'CUST012'),
('Candi Prambanan', '0', 'CUST012'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST012'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST012'),
('Candi Ijo', '0', 'CUST012'),
('Candi Borobudur', '1', 'CUST013'),
('Gereja Ayam - Bukit Rhema', '1', 'CUST013'),
('Ketep Pass', '1', 'CUST013'),
('Candi Mendut', '1', 'CUST013'),
('Candi Plaosan (Lor dan Kidul)', '1', 'CUST013'),
('Candi Sojiwan', '1', 'CUST013'),
('Museum Karst', '1', 'CUST013'),
('Goa Putri Kencono (Goa Growong)', '1', 'CUST013'),
('Waduk Gajah Mungkur', '1', 'CUST013'),
('Pantai Nampu', '1', 'CUST013'),
('Air Terjun Grojogan Sewu', '1', 'CUST013'),
('Bukit Sekipan', '1', 'CUST013'),
('Candi Sukuh', '1', 'CUST013'),
('Kebun Teh Kemuning', '1', 'CUST013'),
('Kampoeng Karet', '1', 'CUST013'),
('Air Terjun Jumog', '1', 'CUST013'),
('Bale Branti Restoran', '1', 'CUST013'),
('Candi Cetho', '1', 'CUST013'),
('Etalase Taman Batu (Geo Park)', '1', 'CUST013'),
('Pasar Ngingrong (Destinasi Digital)', '1', 'CUST013'),
('Pondok Ikan Bakar Bu Shintia', '1', 'CUST013'),
('Gunung Api Purba Nglanggeran - Ekowisata', '1', 'CUST013'),
('Embung Nglanggeran - Agrowisata', '1', 'CUST013'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '1', 'CUST013'),
('Baron Techno Park', '1', 'CUST013'),
('Pantai Baron', '1', 'CUST013'),
('Pantai Kukup', '1', 'CUST013'),
('Rumah Makan Griyo Wono', '1', 'CUST013'),
('Pantai Sepanjang', '1', 'CUST013'),
('Pantai Nglolang', '1', 'CUST013'),
('Pantai Drini', '1', 'CUST013'),
('Pantai Krakal', '1', 'CUST013'),
('Pantai Somandeng', '1', 'CUST013'),
('Candi Kalasan', '1', 'CUST013'),
('Candi Sari', '1', 'CUST013'),
('Candi Prambanan', '1', 'CUST013'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '1', 'CUST013'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '1', 'CUST013'),
('Candi Ijo', '1', 'CUST013'),
('Candi Borobudur', '0', 'CUST014'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST014'),
('Ketep Pass', '0', 'CUST014'),
('Candi Mendut', '0', 'CUST014'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST014'),
('Candi Sojiwan', '0', 'CUST014'),
('Museum Karst', '0', 'CUST014'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST014'),
('Waduk Gajah Mungkur', '0', 'CUST014'),
('Pantai Nampu', '0', 'CUST014'),
('Air Terjun Grojogan Sewu', '0', 'CUST014'),
('Bukit Sekipan', '0', 'CUST014'),
('Candi Sukuh', '0', 'CUST014'),
('Kebun Teh Kemuning', '0', 'CUST014'),
('Kampoeng Karet', '0', 'CUST014'),
('Air Terjun Jumog', '0', 'CUST014'),
('Bale Branti Restoran', '0', 'CUST014'),
('Candi Cetho', '0', 'CUST014'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST014'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST014'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST014'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST014'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST014'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST014'),
('Baron Techno Park', '0', 'CUST014'),
('Pantai Baron', '0', 'CUST014'),
('Pantai Kukup', '0', 'CUST014'),
('Rumah Makan Griyo Wono', '0', 'CUST014'),
('Pantai Sepanjang', '0', 'CUST014'),
('Pantai Nglolang', '0', 'CUST014'),
('Pantai Drini', '0', 'CUST014'),
('Pantai Krakal', '0', 'CUST014'),
('Pantai Somandeng', '0', 'CUST014'),
('Candi Kalasan', '0', 'CUST014'),
('Candi Sari', '0', 'CUST014'),
('Candi Prambanan', '0', 'CUST014'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST014'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST014'),
('Candi Ijo', '0', 'CUST014'),
('Candi Borobudur', '0', 'CUST015'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST015'),
('Ketep Pass', '0', 'CUST015'),
('Candi Mendut', '0', 'CUST015'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST015'),
('Candi Sojiwan', '0', 'CUST015'),
('Museum Karst', '0', 'CUST015'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST015'),
('Waduk Gajah Mungkur', '0', 'CUST015'),
('Pantai Nampu', '0', 'CUST015'),
('Air Terjun Grojogan Sewu', '0', 'CUST015'),
('Bukit Sekipan', '0', 'CUST015'),
('Candi Sukuh', '0', 'CUST015'),
('Kebun Teh Kemuning', '0', 'CUST015'),
('Kampoeng Karet', '0', 'CUST015'),
('Air Terjun Jumog', '0', 'CUST015'),
('Bale Branti Restoran', '0', 'CUST015'),
('Candi Cetho', '0', 'CUST015'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST015'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST015'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST015'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST015'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST015'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST015'),
('Baron Techno Park', '0', 'CUST015'),
('Pantai Baron', '0', 'CUST015'),
('Pantai Kukup', '0', 'CUST015'),
('Rumah Makan Griyo Wono', '0', 'CUST015'),
('Pantai Sepanjang', '0', 'CUST015'),
('Pantai Nglolang', '0', 'CUST015'),
('Pantai Drini', '0', 'CUST015'),
('Pantai Krakal', '0', 'CUST015'),
('Pantai Somandeng', '0', 'CUST015'),
('Candi Kalasan', '0', 'CUST015'),
('Candi Sari', '0', 'CUST015'),
('Candi Prambanan', '0', 'CUST015'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST015'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST015'),
('Candi Ijo', '0', 'CUST015'),
('Candi Borobudur', '0', 'CUST016'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST016'),
('Ketep Pass', '0', 'CUST016'),
('Candi Mendut', '0', 'CUST016'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST016'),
('Candi Sojiwan', '0', 'CUST016'),
('Museum Karst', '0', 'CUST016'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST016'),
('Waduk Gajah Mungkur', '0', 'CUST016'),
('Pantai Nampu', '0', 'CUST016'),
('Air Terjun Grojogan Sewu', '0', 'CUST016'),
('Bukit Sekipan', '0', 'CUST016'),
('Candi Sukuh', '0', 'CUST016'),
('Kebun Teh Kemuning', '0', 'CUST016'),
('Kampoeng Karet', '0', 'CUST016'),
('Air Terjun Jumog', '0', 'CUST016'),
('Bale Branti Restoran', '0', 'CUST016'),
('Candi Cetho', '0', 'CUST016'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST016'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST016'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST016'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST016'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST016'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST016'),
('Baron Techno Park', '0', 'CUST016'),
('Pantai Baron', '0', 'CUST016'),
('Pantai Kukup', '0', 'CUST016'),
('Rumah Makan Griyo Wono', '0', 'CUST016'),
('Pantai Sepanjang', '0', 'CUST016'),
('Pantai Nglolang', '0', 'CUST016'),
('Pantai Drini', '0', 'CUST016'),
('Pantai Krakal', '0', 'CUST016'),
('Pantai Somandeng', '0', 'CUST016'),
('Candi Kalasan', '0', 'CUST016'),
('Candi Sari', '0', 'CUST016'),
('Candi Prambanan', '0', 'CUST016'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST016'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST016'),
('Candi Ijo', '0', 'CUST016'),
('Candi Borobudur', '2', 'CUST017'),
('Gereja Ayam - Bukit Rhema', '2', 'CUST017'),
('Ketep Pass', '2', 'CUST017'),
('Candi Mendut', '2', 'CUST017'),
('Candi Plaosan (Lor dan Kidul)', '2', 'CUST017'),
('Candi Sojiwan', '2', 'CUST017'),
('Museum Karst', '2', 'CUST017'),
('Goa Putri Kencono (Goa Growong)', '2', 'CUST017'),
('Waduk Gajah Mungkur', '2', 'CUST017'),
('Pantai Nampu', '2', 'CUST017'),
('Air Terjun Grojogan Sewu', '2', 'CUST017'),
('Bukit Sekipan', '2', 'CUST017'),
('Candi Sukuh', '2', 'CUST017'),
('Kebun Teh Kemuning', '2', 'CUST017'),
('Kampoeng Karet', '2', 'CUST017'),
('Air Terjun Jumog', '2', 'CUST017'),
('Bale Branti Restoran', '2', 'CUST017'),
('Candi Cetho', '2', 'CUST017'),
('Etalase Taman Batu (Geo Park)', '2', 'CUST017'),
('Pasar Ngingrong (Destinasi Digital)', '2', 'CUST017'),
('Pondok Ikan Bakar Bu Shintia', '2', 'CUST017'),
('Gunung Api Purba Nglanggeran - Ekowisata', '2', 'CUST017'),
('Embung Nglanggeran - Agrowisata', '2', 'CUST017'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '2', 'CUST017'),
('Baron Techno Park', '2', 'CUST017'),
('Pantai Baron', '2', 'CUST017'),
('Pantai Kukup', '2', 'CUST017'),
('Rumah Makan Griyo Wono', '2', 'CUST017'),
('Pantai Sepanjang', '2', 'CUST017'),
('Pantai Nglolang', '2', 'CUST017'),
('Pantai Drini', '2', 'CUST017'),
('Pantai Krakal', '2', 'CUST017'),
('Pantai Somandeng', '2', 'CUST017'),
('Candi Kalasan', '2', 'CUST017'),
('Candi Sari', '2', 'CUST017'),
('Candi Prambanan', '2', 'CUST017'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '2', 'CUST017'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '2', 'CUST017'),
('Candi Ijo', '2', 'CUST017'),
('Candi Borobudur', '1', 'CUST018'),
('Gereja Ayam - Bukit Rhema', '1', 'CUST018'),
('Ketep Pass', '1', 'CUST018'),
('Candi Mendut', '1', 'CUST018'),
('Candi Plaosan (Lor dan Kidul)', '1', 'CUST018'),
('Candi Sojiwan', '1', 'CUST018'),
('Museum Karst', '1', 'CUST018'),
('Goa Putri Kencono (Goa Growong)', '1', 'CUST018'),
('Waduk Gajah Mungkur', '1', 'CUST018'),
('Pantai Nampu', '1', 'CUST018'),
('Air Terjun Grojogan Sewu', '1', 'CUST018'),
('Bukit Sekipan', '1', 'CUST018'),
('Candi Sukuh', '1', 'CUST018'),
('Kebun Teh Kemuning', '1', 'CUST018'),
('Kampoeng Karet', '1', 'CUST018'),
('Air Terjun Jumog', '1', 'CUST018'),
('Bale Branti Restoran', '1', 'CUST018'),
('Candi Cetho', '1', 'CUST018'),
('Etalase Taman Batu (Geo Park)', '1', 'CUST018'),
('Pasar Ngingrong (Destinasi Digital)', '1', 'CUST018'),
('Pondok Ikan Bakar Bu Shintia', '1', 'CUST018'),
('Gunung Api Purba Nglanggeran - Ekowisata', '1', 'CUST018'),
('Embung Nglanggeran - Agrowisata', '1', 'CUST018'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '1', 'CUST018'),
('Baron Techno Park', '1', 'CUST018'),
('Pantai Baron', '1', 'CUST018'),
('Pantai Kukup', '1', 'CUST018'),
('Rumah Makan Griyo Wono', '1', 'CUST018'),
('Pantai Sepanjang', '1', 'CUST018'),
('Pantai Nglolang', '1', 'CUST018'),
('Pantai Drini', '1', 'CUST018'),
('Pantai Krakal', '1', 'CUST018'),
('Pantai Somandeng', '1', 'CUST018'),
('Candi Kalasan', '1', 'CUST018'),
('Candi Sari', '1', 'CUST018'),
('Candi Prambanan', '1', 'CUST018'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '1', 'CUST018'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '1', 'CUST018'),
('Candi Ijo', '1', 'CUST018'),
('Candi Borobudur', '0', 'CUST019'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST019'),
('Ketep Pass', '0', 'CUST019'),
('Candi Mendut', '0', 'CUST019'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST019'),
('Candi Sojiwan', '0', 'CUST019'),
('Museum Karst', '0', 'CUST019'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST019'),
('Waduk Gajah Mungkur', '0', 'CUST019'),
('Pantai Nampu', '0', 'CUST019'),
('Air Terjun Grojogan Sewu', '0', 'CUST019'),
('Bukit Sekipan', '0', 'CUST019'),
('Candi Sukuh', '0', 'CUST019'),
('Kebun Teh Kemuning', '0', 'CUST019'),
('Kampoeng Karet', '0', 'CUST019'),
('Air Terjun Jumog', '0', 'CUST019'),
('Bale Branti Restoran', '0', 'CUST019'),
('Candi Cetho', '0', 'CUST019'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST019'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST019'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST019'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST019'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST019'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST019'),
('Baron Techno Park', '0', 'CUST019'),
('Pantai Baron', '0', 'CUST019'),
('Pantai Kukup', '0', 'CUST019'),
('Rumah Makan Griyo Wono', '0', 'CUST019'),
('Pantai Sepanjang', '0', 'CUST019'),
('Pantai Nglolang', '0', 'CUST019'),
('Pantai Drini', '0', 'CUST019'),
('Pantai Krakal', '0', 'CUST019'),
('Pantai Somandeng', '0', 'CUST019'),
('Candi Kalasan', '0', 'CUST019'),
('Candi Sari', '0', 'CUST019'),
('Candi Prambanan', '0', 'CUST019'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST019'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST019'),
('Candi Ijo', '0', 'CUST019'),
('Candi Borobudur', '0', 'CUST020'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST020'),
('Ketep Pass', '0', 'CUST020'),
('Candi Mendut', '0', 'CUST020'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST020'),
('Candi Sojiwan', '0', 'CUST020'),
('Museum Karst', '0', 'CUST020'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST020'),
('Waduk Gajah Mungkur', '0', 'CUST020'),
('Pantai Nampu', '0', 'CUST020'),
('Air Terjun Grojogan Sewu', '0', 'CUST020'),
('Bukit Sekipan', '0', 'CUST020'),
('Candi Sukuh', '0', 'CUST020'),
('Kebun Teh Kemuning', '0', 'CUST020'),
('Kampoeng Karet', '0', 'CUST020'),
('Air Terjun Jumog', '0', 'CUST020'),
('Bale Branti Restoran', '0', 'CUST020'),
('Candi Cetho', '0', 'CUST020'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST020'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST020'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST020'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST020'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST020'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST020'),
('Baron Techno Park', '0', 'CUST020'),
('Pantai Baron', '0', 'CUST020'),
('Pantai Kukup', '0', 'CUST020'),
('Rumah Makan Griyo Wono', '0', 'CUST020'),
('Pantai Sepanjang', '0', 'CUST020'),
('Pantai Nglolang', '0', 'CUST020'),
('Pantai Drini', '0', 'CUST020'),
('Pantai Krakal', '0', 'CUST020'),
('Pantai Somandeng', '0', 'CUST020'),
('Candi Kalasan', '0', 'CUST020'),
('Candi Sari', '0', 'CUST020'),
('Candi Prambanan', '0', 'CUST020'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST020'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST020'),
('Candi Ijo', '0', 'CUST020'),
('Candi Borobudur', '0', 'CUST021'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST021'),
('Ketep Pass', '0', 'CUST021'),
('Candi Mendut', '0', 'CUST021'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST021'),
('Candi Sojiwan', '0', 'CUST021'),
('Museum Karst', '0', 'CUST021'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST021'),
('Waduk Gajah Mungkur', '0', 'CUST021'),
('Pantai Nampu', '0', 'CUST021'),
('Air Terjun Grojogan Sewu', '0', 'CUST021'),
('Bukit Sekipan', '0', 'CUST021'),
('Candi Sukuh', '0', 'CUST021'),
('Kebun Teh Kemuning', '0', 'CUST021'),
('Kampoeng Karet', '0', 'CUST021'),
('Air Terjun Jumog', '0', 'CUST021'),
('Bale Branti Restoran', '0', 'CUST021'),
('Candi Cetho', '0', 'CUST021'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST021'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST021'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST021'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST021'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST021'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST021'),
('Baron Techno Park', '0', 'CUST021'),
('Pantai Baron', '0', 'CUST021'),
('Pantai Kukup', '0', 'CUST021'),
('Rumah Makan Griyo Wono', '0', 'CUST021'),
('Pantai Sepanjang', '0', 'CUST021'),
('Pantai Nglolang', '0', 'CUST021'),
('Pantai Drini', '0', 'CUST021'),
('Pantai Krakal', '0', 'CUST021'),
('Pantai Somandeng', '0', 'CUST021'),
('Candi Kalasan', '0', 'CUST021'),
('Candi Sari', '0', 'CUST021'),
('Candi Prambanan', '0', 'CUST021'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST021'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST021'),
('Candi Ijo', '0', 'CUST021'),
('Candi Borobudur', '0', 'CUST022'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST022'),
('Ketep Pass', '0', 'CUST022'),
('Candi Mendut', '0', 'CUST022'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST022'),
('Candi Sojiwan', '0', 'CUST022'),
('Museum Karst', '0', 'CUST022'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST022'),
('Waduk Gajah Mungkur', '0', 'CUST022'),
('Pantai Nampu', '0', 'CUST022'),
('Air Terjun Grojogan Sewu', '0', 'CUST022'),
('Bukit Sekipan', '0', 'CUST022'),
('Candi Sukuh', '0', 'CUST022'),
('Kebun Teh Kemuning', '0', 'CUST022'),
('Kampoeng Karet', '0', 'CUST022'),
('Air Terjun Jumog', '0', 'CUST022'),
('Bale Branti Restoran', '0', 'CUST022'),
('Candi Cetho', '0', 'CUST022'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST022'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST022'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST022'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST022'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST022'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST022'),
('Baron Techno Park', '0', 'CUST022'),
('Pantai Baron', '0', 'CUST022'),
('Pantai Kukup', '0', 'CUST022'),
('Rumah Makan Griyo Wono', '0', 'CUST022'),
('Pantai Sepanjang', '0', 'CUST022'),
('Pantai Nglolang', '0', 'CUST022'),
('Pantai Drini', '0', 'CUST022'),
('Pantai Krakal', '0', 'CUST022'),
('Pantai Somandeng', '0', 'CUST022'),
('Candi Kalasan', '0', 'CUST022'),
('Candi Sari', '0', 'CUST022'),
('Candi Prambanan', '0', 'CUST022'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST022'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST022'),
('Candi Ijo', '0', 'CUST022'),
('Candi Borobudur', '1', 'CUST023'),
('Gereja Ayam - Bukit Rhema', '1', 'CUST023'),
('Ketep Pass', '1', 'CUST023'),
('Candi Mendut', '1', 'CUST023'),
('Candi Plaosan (Lor dan Kidul)', '1', 'CUST023'),
('Candi Sojiwan', '1', 'CUST023'),
('Museum Karst', '2', 'CUST023'),
('Goa Putri Kencono (Goa Growong)', '2', 'CUST023'),
('Waduk Gajah Mungkur', '2', 'CUST023'),
('Pantai Nampu', '2', 'CUST023'),
('Air Terjun Grojogan Sewu', '1', 'CUST023'),
('Bukit Sekipan', '1', 'CUST023'),
('Candi Sukuh', '2', 'CUST023'),
('Kebun Teh Kemuning', '2', 'CUST023'),
('Kampoeng Karet', '2', 'CUST023'),
('Air Terjun Jumog', '1', 'CUST023'),
('Bale Branti Restoran', '1', 'CUST023'),
('Candi Cetho', '1', 'CUST023'),
('Etalase Taman Batu (Geo Park)', '1', 'CUST023'),
('Pasar Ngingrong (Destinasi Digital)', '1', 'CUST023'),
('Pondok Ikan Bakar Bu Shintia', '1', 'CUST023'),
('Gunung Api Purba Nglanggeran - Ekowisata', '1', 'CUST023'),
('Embung Nglanggeran - Agrowisata', '1', 'CUST023'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '1', 'CUST023'),
('Baron Techno Park', '1', 'CUST023'),
('Pantai Baron', '1', 'CUST023'),
('Pantai Kukup', '1', 'CUST023'),
('Rumah Makan Griyo Wono', '1', 'CUST023'),
('Pantai Sepanjang', '1', 'CUST023'),
('Pantai Nglolang', '1', 'CUST023'),
('Pantai Drini', '1', 'CUST023'),
('Pantai Krakal', '1', 'CUST023'),
('Pantai Somandeng', '1', 'CUST023'),
('Candi Kalasan', '1', 'CUST023'),
('Candi Sari', '1', 'CUST023'),
('Candi Prambanan', '1', 'CUST023'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '1', 'CUST023'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '1', 'CUST023'),
('Candi Ijo', '1', 'CUST023'),
('Candi Borobudur', '0', 'CUST024'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST024'),
('Ketep Pass', '0', 'CUST024'),
('Candi Mendut', '0', 'CUST024'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST024'),
('Candi Sojiwan', '0', 'CUST024'),
('Museum Karst', '0', 'CUST024'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST024'),
('Waduk Gajah Mungkur', '0', 'CUST024'),
('Pantai Nampu', '0', 'CUST024'),
('Air Terjun Grojogan Sewu', '0', 'CUST024'),
('Bukit Sekipan', '0', 'CUST024'),
('Candi Sukuh', '0', 'CUST024'),
('Kebun Teh Kemuning', '0', 'CUST024'),
('Kampoeng Karet', '0', 'CUST024'),
('Air Terjun Jumog', '0', 'CUST024'),
('Bale Branti Restoran', '0', 'CUST024'),
('Candi Cetho', '0', 'CUST024'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST024'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST024'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST024'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST024'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST024'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST024'),
('Baron Techno Park', '0', 'CUST024'),
('Pantai Baron', '0', 'CUST024'),
('Pantai Kukup', '0', 'CUST024'),
('Rumah Makan Griyo Wono', '0', 'CUST024'),
('Pantai Sepanjang', '0', 'CUST024'),
('Pantai Nglolang', '0', 'CUST024'),
('Pantai Drini', '0', 'CUST024'),
('Pantai Krakal', '0', 'CUST024'),
('Pantai Somandeng', '0', 'CUST024'),
('Candi Kalasan', '0', 'CUST024'),
('Candi Sari', '0', 'CUST024'),
('Candi Prambanan', '0', 'CUST024'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST024'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST024'),
('Candi Ijo', '0', 'CUST024'),
('Candi Borobudur', '1', 'CUST025'),
('Gereja Ayam - Bukit Rhema', '1', 'CUST025'),
('Ketep Pass', '1', 'CUST025'),
('Candi Mendut', '1', 'CUST025'),
('Candi Plaosan (Lor dan Kidul)', '1', 'CUST025'),
('Candi Sojiwan', '1', 'CUST025'),
('Museum Karst', '1', 'CUST025'),
('Goa Putri Kencono (Goa Growong)', '1', 'CUST025'),
('Waduk Gajah Mungkur', '1', 'CUST025'),
('Pantai Nampu', '1', 'CUST025'),
('Air Terjun Grojogan Sewu', '1', 'CUST025'),
('Bukit Sekipan', '1', 'CUST025'),
('Candi Sukuh', '1', 'CUST025'),
('Kebun Teh Kemuning', '1', 'CUST025'),
('Kampoeng Karet', '1', 'CUST025'),
('Air Terjun Jumog', '1', 'CUST025'),
('Bale Branti Restoran', '1', 'CUST025'),
('Candi Cetho', '1', 'CUST025'),
('Etalase Taman Batu (Geo Park)', '1', 'CUST025'),
('Pasar Ngingrong (Destinasi Digital)', '1', 'CUST025'),
('Pondok Ikan Bakar Bu Shintia', '1', 'CUST025'),
('Gunung Api Purba Nglanggeran - Ekowisata', '1', 'CUST025'),
('Embung Nglanggeran - Agrowisata', '1', 'CUST025'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '1', 'CUST025'),
('Baron Techno Park', '1', 'CUST025'),
('Pantai Baron', '1', 'CUST025'),
('Pantai Kukup', '1', 'CUST025'),
('Rumah Makan Griyo Wono', '1', 'CUST025'),
('Pantai Sepanjang', '1', 'CUST025'),
('Pantai Nglolang', '1', 'CUST025'),
('Pantai Drini', '1', 'CUST025'),
('Pantai Krakal', '1', 'CUST025'),
('Pantai Somandeng', '1', 'CUST025'),
('Candi Kalasan', '1', 'CUST025'),
('Candi Sari', '1', 'CUST025'),
('Candi Prambanan', '1', 'CUST025'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '1', 'CUST025'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '1', 'CUST025'),
('Candi Ijo', '1', 'CUST025'),
('Candi Borobudur', '0', 'CUST026'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST026'),
('Ketep Pass', '0', 'CUST026'),
('Candi Mendut', '0', 'CUST026'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST026'),
('Candi Sojiwan', '0', 'CUST026'),
('Museum Karst', '0', 'CUST026'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST026'),
('Waduk Gajah Mungkur', '0', 'CUST026'),
('Pantai Nampu', '0', 'CUST026'),
('Air Terjun Grojogan Sewu', '0', 'CUST026'),
('Bukit Sekipan', '0', 'CUST026'),
('Candi Sukuh', '0', 'CUST026'),
('Kebun Teh Kemuning', '0', 'CUST026'),
('Kampoeng Karet', '0', 'CUST026'),
('Air Terjun Jumog', '0', 'CUST026'),
('Bale Branti Restoran', '0', 'CUST026'),
('Candi Cetho', '0', 'CUST026'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST026'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST026'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST026'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST026'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST026'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST026'),
('Baron Techno Park', '0', 'CUST026'),
('Pantai Baron', '0', 'CUST026'),
('Pantai Kukup', '0', 'CUST026'),
('Rumah Makan Griyo Wono', '0', 'CUST026'),
('Pantai Sepanjang', '0', 'CUST026'),
('Pantai Nglolang', '0', 'CUST026'),
('Pantai Drini', '0', 'CUST026'),
('Pantai Krakal', '0', 'CUST026'),
('Pantai Somandeng', '0', 'CUST026'),
('Candi Kalasan', '0', 'CUST026'),
('Candi Sari', '0', 'CUST026'),
('Candi Prambanan', '0', 'CUST026'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST026'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST026'),
('Candi Ijo', '0', 'CUST026'),
('Candi Borobudur', '0', 'CUST027'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST027'),
('Ketep Pass', '0', 'CUST027'),
('Candi Mendut', '0', 'CUST027'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST027'),
('Candi Sojiwan', '0', 'CUST027'),
('Museum Karst', '0', 'CUST027'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST027'),
('Waduk Gajah Mungkur', '0', 'CUST027'),
('Pantai Nampu', '0', 'CUST027'),
('Air Terjun Grojogan Sewu', '0', 'CUST027'),
('Bukit Sekipan', '0', 'CUST027'),
('Candi Sukuh', '0', 'CUST027'),
('Kebun Teh Kemuning', '0', 'CUST027'),
('Kampoeng Karet', '0', 'CUST027'),
('Air Terjun Jumog', '0', 'CUST027'),
('Bale Branti Restoran', '0', 'CUST027'),
('Candi Cetho', '0', 'CUST027'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST027'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST027'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST027'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST027'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST027'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST027'),
('Baron Techno Park', '0', 'CUST027'),
('Pantai Baron', '0', 'CUST027'),
('Pantai Kukup', '0', 'CUST027'),
('Rumah Makan Griyo Wono', '0', 'CUST027'),
('Pantai Sepanjang', '0', 'CUST027'),
('Pantai Nglolang', '0', 'CUST027'),
('Pantai Drini', '0', 'CUST027'),
('Pantai Krakal', '0', 'CUST027'),
('Pantai Somandeng', '0', 'CUST027'),
('Candi Kalasan', '0', 'CUST027'),
('Candi Sari', '0', 'CUST027'),
('Candi Prambanan', '0', 'CUST027'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST027'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST027'),
('Candi Ijo', '0', 'CUST027'),
('Candi Borobudur', '0', 'CUST028'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST028'),
('Ketep Pass', '0', 'CUST028'),
('Candi Mendut', '0', 'CUST028'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST028'),
('Candi Sojiwan', '0', 'CUST028'),
('Museum Karst', '0', 'CUST028'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST028'),
('Waduk Gajah Mungkur', '0', 'CUST028'),
('Pantai Nampu', '0', 'CUST028'),
('Air Terjun Grojogan Sewu', '0', 'CUST028'),
('Bukit Sekipan', '0', 'CUST028'),
('Candi Sukuh', '0', 'CUST028'),
('Kebun Teh Kemuning', '0', 'CUST028'),
('Kampoeng Karet', '0', 'CUST028'),
('Air Terjun Jumog', '0', 'CUST028'),
('Bale Branti Restoran', '0', 'CUST028'),
('Candi Cetho', '0', 'CUST028'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST028'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST028'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST028'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST028'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST028'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST028'),
('Baron Techno Park', '0', 'CUST028'),
('Pantai Baron', '0', 'CUST028'),
('Pantai Kukup', '0', 'CUST028'),
('Rumah Makan Griyo Wono', '0', 'CUST028'),
('Pantai Sepanjang', '0', 'CUST028'),
('Pantai Nglolang', '0', 'CUST028'),
('Pantai Drini', '0', 'CUST028'),
('Pantai Krakal', '0', 'CUST028'),
('Pantai Somandeng', '0', 'CUST028'),
('Candi Kalasan', '0', 'CUST028'),
('Candi Sari', '0', 'CUST028'),
('Candi Prambanan', '0', 'CUST028'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST028'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST028'),
('Candi Ijo', '0', 'CUST028'),
('Candi Borobudur', '1', 'CUST029'),
('Gereja Ayam - Bukit Rhema', '1', 'CUST029'),
('Ketep Pass', '1', 'CUST029'),
('Candi Mendut', '1', 'CUST029'),
('Candi Plaosan (Lor dan Kidul)', '1', 'CUST029'),
('Candi Sojiwan', '1', 'CUST029'),
('Museum Karst', '1', 'CUST029'),
('Goa Putri Kencono (Goa Growong)', '1', 'CUST029'),
('Waduk Gajah Mungkur', '1', 'CUST029'),
('Pantai Nampu', '1', 'CUST029'),
('Air Terjun Grojogan Sewu', '1', 'CUST029'),
('Bukit Sekipan', '1', 'CUST029'),
('Candi Sukuh', '1', 'CUST029'),
('Kebun Teh Kemuning', '1', 'CUST029'),
('Kampoeng Karet', '1', 'CUST029'),
('Air Terjun Jumog', '1', 'CUST029'),
('Bale Branti Restoran', '1', 'CUST029'),
('Candi Cetho', '1', 'CUST029'),
('Etalase Taman Batu (Geo Park)', '1', 'CUST029'),
('Pasar Ngingrong (Destinasi Digital)', '1', 'CUST029'),
('Pondok Ikan Bakar Bu Shintia', '1', 'CUST029'),
('Gunung Api Purba Nglanggeran - Ekowisata', '1', 'CUST029'),
('Embung Nglanggeran - Agrowisata', '1', 'CUST029'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '1', 'CUST029'),
('Baron Techno Park', '1', 'CUST029'),
('Pantai Baron', '1', 'CUST029'),
('Pantai Kukup', '1', 'CUST029'),
('Rumah Makan Griyo Wono', '1', 'CUST029'),
('Pantai Sepanjang', '1', 'CUST029'),
('Pantai Nglolang', '1', 'CUST029'),
('Pantai Drini', '1', 'CUST029'),
('Pantai Krakal', '1', 'CUST029'),
('Pantai Somandeng', '1', 'CUST029'),
('Candi Kalasan', '1', 'CUST029'),
('Candi Sari', '1', 'CUST029'),
('Candi Prambanan', '1', 'CUST029'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '1', 'CUST029'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '1', 'CUST029'),
('Candi Ijo', '1', 'CUST029'),
('Candi Borobudur', '0', 'CUST030'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST030'),
('Ketep Pass', '0', 'CUST030'),
('Candi Mendut', '0', 'CUST030'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST030'),
('Candi Sojiwan', '0', 'CUST030'),
('Museum Karst', '0', 'CUST030'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST030'),
('Waduk Gajah Mungkur', '0', 'CUST030'),
('Pantai Nampu', '0', 'CUST030'),
('Air Terjun Grojogan Sewu', '0', 'CUST030'),
('Bukit Sekipan', '0', 'CUST030'),
('Candi Sukuh', '0', 'CUST030'),
('Kebun Teh Kemuning', '0', 'CUST030'),
('Kampoeng Karet', '0', 'CUST030'),
('Air Terjun Jumog', '0', 'CUST030'),
('Bale Branti Restoran', '0', 'CUST030'),
('Candi Cetho', '0', 'CUST030'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST030'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST030'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST030'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST030'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST030'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST030'),
('Baron Techno Park', '0', 'CUST030'),
('Pantai Baron', '0', 'CUST030'),
('Pantai Kukup', '0', 'CUST030'),
('Rumah Makan Griyo Wono', '0', 'CUST030'),
('Pantai Sepanjang', '0', 'CUST030'),
('Pantai Nglolang', '0', 'CUST030'),
('Pantai Drini', '0', 'CUST030'),
('Pantai Krakal', '0', 'CUST030'),
('Pantai Somandeng', '0', 'CUST030'),
('Candi Kalasan', '0', 'CUST030'),
('Candi Sari', '0', 'CUST030'),
('Candi Prambanan', '0', 'CUST030'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST030'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST030'),
('Candi Ijo', '0', 'CUST030'),
('Candi Borobudur', '0', 'CUST031'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST031'),
('Ketep Pass', '0', 'CUST031'),
('Candi Mendut', '0', 'CUST031'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST031'),
('Candi Sojiwan', '0', 'CUST031'),
('Museum Karst', '0', 'CUST031'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST031'),
('Waduk Gajah Mungkur', '0', 'CUST031'),
('Pantai Nampu', '0', 'CUST031'),
('Air Terjun Grojogan Sewu', '0', 'CUST031'),
('Bukit Sekipan', '0', 'CUST031'),
('Candi Sukuh', '0', 'CUST031'),
('Kebun Teh Kemuning', '0', 'CUST031'),
('Kampoeng Karet', '0', 'CUST031'),
('Air Terjun Jumog', '0', 'CUST031'),
('Bale Branti Restoran', '0', 'CUST031'),
('Candi Cetho', '0', 'CUST031'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST031'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST031'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST031'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST031'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST031'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST031'),
('Baron Techno Park', '0', 'CUST031'),
('Pantai Baron', '0', 'CUST031'),
('Pantai Kukup', '0', 'CUST031'),
('Rumah Makan Griyo Wono', '0', 'CUST031'),
('Pantai Sepanjang', '0', 'CUST031'),
('Pantai Nglolang', '0', 'CUST031'),
('Pantai Drini', '0', 'CUST031'),
('Pantai Krakal', '0', 'CUST031'),
('Pantai Somandeng', '0', 'CUST031'),
('Candi Kalasan', '0', 'CUST031'),
('Candi Sari', '0', 'CUST031'),
('Candi Prambanan', '0', 'CUST031'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST031'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST031'),
('Candi Ijo', '0', 'CUST031'),
('Candi Borobudur', '0', 'CUST032'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST032'),
('Ketep Pass', '0', 'CUST032'),
('Candi Mendut', '0', 'CUST032'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST032'),
('Candi Sojiwan', '0', 'CUST032'),
('Museum Karst', '0', 'CUST032'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST032'),
('Waduk Gajah Mungkur', '0', 'CUST032'),
('Pantai Nampu', '0', 'CUST032'),
('Air Terjun Grojogan Sewu', '0', 'CUST032'),
('Bukit Sekipan', '0', 'CUST032'),
('Candi Sukuh', '0', 'CUST032'),
('Kebun Teh Kemuning', '0', 'CUST032'),
('Kampoeng Karet', '0', 'CUST032'),
('Air Terjun Jumog', '0', 'CUST032'),
('Bale Branti Restoran', '0', 'CUST032'),
('Candi Cetho', '0', 'CUST032'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST032'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST032'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST032'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST032'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST032'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST032'),
('Baron Techno Park', '0', 'CUST032'),
('Pantai Baron', '0', 'CUST032'),
('Pantai Kukup', '0', 'CUST032'),
('Rumah Makan Griyo Wono', '0', 'CUST032'),
('Pantai Sepanjang', '0', 'CUST032'),
('Pantai Nglolang', '0', 'CUST032'),
('Pantai Drini', '0', 'CUST032'),
('Pantai Krakal', '0', 'CUST032'),
('Pantai Somandeng', '0', 'CUST032'),
('Candi Kalasan', '0', 'CUST032'),
('Candi Sari', '0', 'CUST032'),
('Candi Prambanan', '0', 'CUST032'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST032'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST032'),
('Candi Ijo', '0', 'CUST032'),
('Candi Borobudur', '2', 'CUST033'),
('Gereja Ayam - Bukit Rhema', '2', 'CUST033'),
('Ketep Pass', '2', 'CUST033'),
('Candi Mendut', '2', 'CUST033');
INSERT INTO `tampung` (`Tempat`, `Centroid`, `Customer_ID`) VALUES
('Candi Plaosan (Lor dan Kidul)', '2', 'CUST033'),
('Candi Sojiwan', '2', 'CUST033'),
('Museum Karst', '2', 'CUST033'),
('Goa Putri Kencono (Goa Growong)', '2', 'CUST033'),
('Waduk Gajah Mungkur', '2', 'CUST033'),
('Pantai Nampu', '2', 'CUST033'),
('Air Terjun Grojogan Sewu', '2', 'CUST033'),
('Bukit Sekipan', '2', 'CUST033'),
('Candi Sukuh', '2', 'CUST033'),
('Kebun Teh Kemuning', '2', 'CUST033'),
('Kampoeng Karet', '2', 'CUST033'),
('Air Terjun Jumog', '2', 'CUST033'),
('Bale Branti Restoran', '2', 'CUST033'),
('Candi Cetho', '2', 'CUST033'),
('Etalase Taman Batu (Geo Park)', '2', 'CUST033'),
('Pasar Ngingrong (Destinasi Digital)', '2', 'CUST033'),
('Pondok Ikan Bakar Bu Shintia', '2', 'CUST033'),
('Gunung Api Purba Nglanggeran - Ekowisata', '2', 'CUST033'),
('Embung Nglanggeran - Agrowisata', '2', 'CUST033'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '2', 'CUST033'),
('Baron Techno Park', '2', 'CUST033'),
('Pantai Baron', '2', 'CUST033'),
('Pantai Kukup', '2', 'CUST033'),
('Rumah Makan Griyo Wono', '2', 'CUST033'),
('Pantai Sepanjang', '2', 'CUST033'),
('Pantai Nglolang', '2', 'CUST033'),
('Pantai Drini', '2', 'CUST033'),
('Pantai Krakal', '2', 'CUST033'),
('Pantai Somandeng', '2', 'CUST033'),
('Candi Kalasan', '2', 'CUST033'),
('Candi Sari', '2', 'CUST033'),
('Candi Prambanan', '2', 'CUST033'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '2', 'CUST033'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '2', 'CUST033'),
('Candi Ijo', '2', 'CUST033'),
('Candi Borobudur', '0', 'CUST034'),
('Gereja Ayam - Bukit Rhema', '0', 'CUST034'),
('Ketep Pass', '0', 'CUST034'),
('Candi Mendut', '0', 'CUST034'),
('Candi Plaosan (Lor dan Kidul)', '0', 'CUST034'),
('Candi Sojiwan', '0', 'CUST034'),
('Museum Karst', '0', 'CUST034'),
('Goa Putri Kencono (Goa Growong)', '0', 'CUST034'),
('Waduk Gajah Mungkur', '0', 'CUST034'),
('Pantai Nampu', '0', 'CUST034'),
('Air Terjun Grojogan Sewu', '0', 'CUST034'),
('Bukit Sekipan', '0', 'CUST034'),
('Candi Sukuh', '0', 'CUST034'),
('Kebun Teh Kemuning', '0', 'CUST034'),
('Kampoeng Karet', '0', 'CUST034'),
('Air Terjun Jumog', '0', 'CUST034'),
('Bale Branti Restoran', '0', 'CUST034'),
('Candi Cetho', '0', 'CUST034'),
('Etalase Taman Batu (Geo Park)', '0', 'CUST034'),
('Pasar Ngingrong (Destinasi Digital)', '0', 'CUST034'),
('Pondok Ikan Bakar Bu Shintia', '0', 'CUST034'),
('Gunung Api Purba Nglanggeran - Ekowisata', '0', 'CUST034'),
('Embung Nglanggeran - Agrowisata', '0', 'CUST034'),
('Pantai Indrayanti (Pantai Pulang Sawal)', '0', 'CUST034'),
('Baron Techno Park', '0', 'CUST034'),
('Pantai Baron', '0', 'CUST034'),
('Pantai Kukup', '0', 'CUST034'),
('Rumah Makan Griyo Wono', '0', 'CUST034'),
('Pantai Sepanjang', '0', 'CUST034'),
('Pantai Nglolang', '0', 'CUST034'),
('Pantai Drini', '0', 'CUST034'),
('Pantai Krakal', '0', 'CUST034'),
('Pantai Somandeng', '0', 'CUST034'),
('Candi Kalasan', '0', 'CUST034'),
('Candi Sari', '0', 'CUST034'),
('Candi Prambanan', '0', 'CUST034'),
('Keraton Ratu Boko (Keraton masa Kerajaan)', '0', 'CUST034'),
('Taman Tebing Breksi (Taman Pandang Sore Hari)', '0', 'CUST034'),
('Candi Ijo', '0', 'CUST034');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`anggotaKODE`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`beritaKODE`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`fasilitasKODE`);

--
-- Indexes for table `fasilitasobyek`
--
ALTER TABLE `fasilitasobyek`
  ADD PRIMARY KEY (`fasilitasobyekKODE`);

--
-- Indexes for table `fotoberita`
--
ALTER TABLE `fotoberita`
  ADD PRIMARY KEY (`beritafotoKODE`);

--
-- Indexes for table `fotoobyekwisata`
--
ALTER TABLE `fotoobyekwisata`
  ADD PRIMARY KEY (`fotoobyekKODE`);

--
-- Indexes for table `jarakobyek`
--
ALTER TABLE `jarakobyek`
  ADD PRIMARY KEY (`ruteKODE`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupatenKODE`);

--
-- Indexes for table `kabupaten_salinan`
--
ALTER TABLE `kabupaten_salinan`
  ADD PRIMARY KEY (`kabupatenKODE`);

--
-- Indexes for table `kategoriberita`
--
ALTER TABLE `kategoriberita`
  ADD PRIMARY KEY (`kategoriberitaKODE`);

--
-- Indexes for table `kategoriwisata`
--
ALTER TABLE `kategoriwisata`
  ADD PRIMARY KEY (`kategoriKODE`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatanKODE`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`eventKODE`);

--
-- Indexes for table `obyekwisata`
--
ALTER TABLE `obyekwisata`
  ADD PRIMARY KEY (`obyekKODE`);

--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`pengelolaKODE`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sliderKODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `anggotaKODE` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jarakobyek`
--
ALTER TABLE `jarakobyek`
  MODIFY `ruteKODE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `pengelola`
--
ALTER TABLE `pengelola`
  MODIFY `pengelolaKODE` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
