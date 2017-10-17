-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 17 oct. 2017 à 22:08
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `dbSchoolMark`
--

-- --------------------------------------------------------

--
-- Structure de la table `lesson`
--

CREATE TABLE `lesson` (
  `nLessonId` int(11) NOT NULL,
  `sLessonName` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `lesson`
--

INSERT INTO `lesson` (`nLessonId`, `sLessonName`) VALUES
(1, 'Vocabulary'),
(2, 'Grammar'),
(3, 'Listening'),
(4, 'Reading'),
(5, 'Speaking');

-- --------------------------------------------------------

--
-- Structure de la table `level`
--

CREATE TABLE `level` (
  `nLevelId` int(11) NOT NULL,
  `nLevelNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `level`
--

INSERT INTO `level` (`nLevelId`, `nLevelNumber`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `mark`
--

CREATE TABLE `mark` (
  `nStudentId` int(11) NOT NULL,
  `nLevelId` int(11) NOT NULL,
  `nLessonId` int(11) NOT NULL,
  `nMarkNote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `school`
--

CREATE TABLE `school` (
  `nSchoolId` int(11) NOT NULL,
  `sSchoolName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sSchoolCity` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sSchoolDirector` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `school`
--

INSERT INTO `school` (`nSchoolId`, `sSchoolName`, `sSchoolCity`, `sSchoolDirector`) VALUES
(1, 'Sand Fork', 'Aix-en-Provence', 'Ellen Weber'),
(2, 'Grant View', 'Marseille', 'Jean Lopez'),
(3, '', '', ''),
(4, 'Wilson school', 'Paris', 'Richard Lindsey');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `nStudentId` int(11) NOT NULL,
  `nSchoolId` int(11) NOT NULL,
  `sStudentFirstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sStudentLastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`nStudentId`, `nSchoolId`, `sStudentFirstname`, `sStudentLastname`) VALUES
(6, 1, 'Skye', 'Fallon'),
(7, 1, 'Victoria', 'Hampden'),
(8, 1, 'Jonathan', 'Teresa'),
(9, 1, 'Jessica', 'Matheson'),
(10, 1, 'James', 'Marina'),
(11, 2, 'Evie', 'Flick'),
(12, 2, 'James', 'Kotai'),
(13, 2, 'Dean', 'Spruson'),
(14, 2, 'Tayla', 'Wonggu'),
(15, 2, 'Mia', 'Kethel'),
(16, 3, 'Lilly', 'Bertie'),
(17, 3, 'Owen', 'Milne'),
(18, 3, 'John', 'Sheldon'),
(19, 3, 'Koby', 'Krefft'),
(20, 3, 'Paige', 'Royal');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`nLessonId`);

--
-- Index pour la table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`nLevelId`);

--
-- Index pour la table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`nStudentId`,`nLevelId`,`nLessonId`);

--
-- Index pour la table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`nSchoolId`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`nStudentId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `nLessonId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `level`
--
ALTER TABLE `level`
  MODIFY `nLevelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `school`
--
ALTER TABLE `school`
  MODIFY `nSchoolId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `nStudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;