-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jul 2018 pada 04.54
-- Versi server: 10.1.33-MariaDB
-- Versi PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_pelapor`
--

CREATE TABLE `dt_pelapor` (
  `id_pelapor` int(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `no_ktp` varchar(30) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `NIP` int(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `asal` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_pengaduan`
--

CREATE TABLE `form_pengaduan` (
  `id_pengaduan` int(20) NOT NULL,
  `topik_pengaduan` varchar(50) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `tgl` varchar(20) NOT NULL,
  `form_pengaduan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dt_pelapor`
--
ALTER TABLE `dt_pelapor`
  ADD PRIMARY KEY (`id_pelapor`);

--
-- Indeks untuk tabel `form_pengaduan`
--
ALTER TABLE `form_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dt_pelapor`
--
ALTER TABLE `dt_pelapor`
  MODIFY `id_pelapor` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_pengaduan`
--
ALTER TABLE `form_pengaduan`
  MODIFY `id_pengaduan` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
