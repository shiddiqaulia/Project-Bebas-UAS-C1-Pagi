-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2024 pada 08.39
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aplikasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`id`, `nip`, `nama`, `tanggal`, `keterangan`) VALUES
(5, '1998060220041001', 'Angelina Jolie', '2024-01-04', 'Present'),
(6, '1999091020062003', 'Iqbaal Ramadhan', '2024-01-08', 'Present'),
(7, '2000100120062004', 'Dani Irawan', '2024-01-10', 'Present'),
(8, '312', 'Fikry', '2024-01-11', 'Present'),
(10, '1992040220042005', 'Muhammad Zulfahmi Khairullah', '2024-01-11', 'Present'),
(13, '312', 'Fikry', '2024-01-04', 'Present'),
(14, '8756', 'aku', '2024-01-13', 'Present'),
(15, '8756', 'aku', '2024-01-10', 'Present'),
(16, '312', 'Fikry', '2024-01-13', 'Present'),
(17, '312', 'Fikry', '2024-01-02', 'Present'),
(18, '312', 'Fikry', '2024-01-10', 'Present'),
(19, '1998060220041001', 'Angelina Jolie', '2024-01-13', 'Late'),
(20, '8796', 'aku', '2024-01-13', 'Present'),
(21, '312', 'Fikry', '2024-01-12', 'Present');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` varchar(30) NOT NULL,
  `thn_lahir` varchar(30) NOT NULL,
  `gender` enum('Laki - Laki','Perempuan','','') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jabatan` enum('Manager','Employee','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `umur`, `thn_lahir`, `gender`, `alamat`, `jabatan`) VALUES
(4, '312', 'wqe', 'adc', 'adb', 'Laki - Laki', 'das', 'Manager'),
(5, '1998060220041001', 'Angelina Jolie', '30', '1998', 'Perempuan', 'Jl.Bersama', 'Manager'),
(6, '1997030420042002', 'Fikri Firmansyah', '28', '2000', 'Laki - Laki', 'Jl.Terusan', 'Manager'),
(7, '1999091020062003', 'Iqbaal Ramadhan', '44', '1999', 'Laki - Laki', 'JL.Klumpang Kebun', 'Employee'),
(8, '2000100120062004', 'Dani Irawan', '34', '1997', 'Laki - Laki', 'JL.Hamparan Perak', 'Employee'),
(9, '1992040220042005', 'Muhammad Zulfahmi Khairullah', '35', '1990', 'Laki - Laki', 'Jl. Semangka', 'Manager'),
(10, '1995070210042006', 'Aulia Shiddiq Asy-Syifa', '38', '1993', 'Laki - Laki', 'Jl.Sunggal', 'Manager'),
(11, '1998050620022007', 'M. Dzaki Fauzi', '39', '1997', 'Laki - Laki', 'Jl. Helvetia', 'Manager'),
(16, '5678', 'data', '20', '2006', 'Laki - Laki', 'saat', 'Employee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender` enum('Laki - Laki','Perempuan','','') NOT NULL,
  `jabatan` enum('Manager','Employee','','') NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nip`, `nama`, `gender`, `jabatan`, `email`, `password`) VALUES
(1, '1998060220041001', 'Angelina Jolie', 'Perempuan', 'Manager', 'AngelinaJolie@gmail.com', 'angel1998'),
(2, '1997030420042002', 'Fikri Firmansyah', 'Laki - Laki', 'Manager', 'FikriFirmansyah@gmail.com', 'firmansyah2005'),
(3, '1999091020062003', 'Iqbaal Ramadhan', 'Laki - Laki', 'Employee', 'IqbalRamadhan@gmail.com', 'iqbaal1998'),
(5, '2000100120062004', 'Dani Irawan', 'Laki - Laki', 'Employee', 'daniirawan@gmail.com', 'dani123'),
(8, '1992040220042005', 'Muhammad Zulfahmi Khairullah', 'Laki - Laki', 'Manager', 'fahmikhairullah@gmail.com', 'fahmi1992'),
(9, '1995070210042006', 'Aulia Shiddiq Asy-Syifa', 'Laki - Laki', 'Manager', 'auliashiddiq@gmail.com', 'auliashiddiq19'),
(10, '1998050620022007', 'M. Dzaki Fauzi', 'Laki - Laki', 'Manager', 'zeekyy@gmail.com', 'zakizeek'),
(11, '312', 'Fikry', 'Laki - Laki', 'Manager', 'fikri', 'fikri');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `jabatan` (`jabatan`),
  ADD KEY `gender` (`gender`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
