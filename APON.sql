-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 02 Sep 2019 pada 00.14
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `APON`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Obat`
--

CREATE TABLE `Obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(50) DEFAULT NULL,
  `dosis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `Obat`
--

INSERT INTO `Obat` (`id_obat`, `nama_obat`, `dosis`) VALUES
('X01', 'Ultraflu', '3 X sehari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Pembayaran`
--

CREATE TABLE `Pembayaran` (
  `id_obat` varchar(50) NOT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `nomor_bon` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `Pembayaran`
--

INSERT INTO `Pembayaran` (`id_obat`, `id_user`, `nomor_bon`) VALUES
('X01', '001', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Pengguna`
--

CREATE TABLE `Pengguna` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `penyakit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `Pengguna`
--

INSERT INTO `Pengguna` (`id_user`, `nama_user`, `email`, `penyakit`) VALUES
('001', 'Yanto', 'Yanto@gmail.com', 'Meriang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Obat`
--
ALTER TABLE `Obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `Pembayaran`
--
ALTER TABLE `Pembayaran`
  ADD KEY `Pembayaran_FK1` (`id_user`),
  ADD KEY `Pembayaran_FK2` (`id_obat`);

--
-- Indeks untuk tabel `Pengguna`
--
ALTER TABLE `Pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `Pembayaran`
--
ALTER TABLE `Pembayaran`
  ADD CONSTRAINT `Pembayaran_FK1` FOREIGN KEY (`id_user`) REFERENCES `Pengguna` (`id_user`),
  ADD CONSTRAINT `Pembayaran_FK2` FOREIGN KEY (`id_obat`) REFERENCES `Obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
