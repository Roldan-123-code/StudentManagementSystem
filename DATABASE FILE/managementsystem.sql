-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 01:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: resultgrading
--

-- --------------------------------------------------------

--
-- Table structure for table tbladmin
--

CREATE TABLE tbladmin (
  Id int(20) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  otherName varchar(255) NOT NULL,
  emailAddress varchar(255) NOT NULL,
  phoneNo varchar(20) NOT NULL,
  password varchar(255) NOT NULL,
  adminId varchar(255) NOT NULL,
  adminTypeId int(20) NOT NULL,
  isAssigned int(10) NOT NULL,
  isPasswordChanged int(10) NOT NULL,
  dateCreated varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table tbladmin
--

INSERT INTO tbladmin (Id, firstName, lastName, otherName, emailAddress, phoneNo, password, adminId, adminTypeId, isAssigned, isPasswordChanged, dateCreated) VALUES
(1, 'Code Camp', 'BD', 'CCBD', 'admin@mail.com', '01608445456', '671ae51238477cccb1936932ee9f0fa3', 'CCBD', 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table tbladmintype
--

CREATE TABLE tbladmintype (
  Id int(20) NOT NULL,
  adminTypeName varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table tbladmintype
--

INSERT INTO tbladmintype (Id, adminTypeName) VALUES
(1, 'Super Administrator'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table tblassignedadmin
--

CREATE TABLE tblassignedadmin (
  id int(11) NOT NULL,
  dateAssigned varchar(200) NOT NULL,
  adminId int(11) NOT NULL,
  facultyId int(11) NOT NULL,
  departmentId int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblassignedadmin
--

INSERT INTO tblassignedadmin (id, dateAssigned, adminId, facultyId, departmentId) VALUES
(1, '2022-06-13', 0, 1, 1),
(2, '2024-04-12', 0, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table tblcgparesult
--

CREATE TABLE tblcgparesult (
  Id int(11) NOT NULL,
  matricNo varchar(50) NOT NULL,
  cgpa varchar(50) NOT NULL,
  classOfDiploma varchar(50) NOT NULL,
  dateAdded varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblcgparesult
--

INSERT INTO tblcgparesult (Id, matricNo, cgpa, classOfDiploma, dateAdded) VALUES
(1, 'SGS100', '1.38', 'Fail', '2022-06-13');

-- --------------------------------------------------------

--
-- Table structure for table tblcourse
--

CREATE TABLE tblcourse (
  Id int(11) NOT NULL,
  courseTitle varchar(255) NOT NULL,
  courseCode varchar(255) NOT NULL,
  courseUnit int(10) NOT NULL,
  facultyId varchar(255) NOT NULL,
  departmentId varchar(255) NOT NULL,
  levelId varchar(10) NOT NULL,
  semesterId varchar(20) NOT NULL,
  dateAdded varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblcourse
--

INSERT INTO tblcourse (Id, courseTitle, courseCode, courseUnit, facultyId, departmentId, levelId, semesterId, dateAdded) VALUES
(1, 'Computer Proggraming 2', 'MS-112', 5, '1', '1', '1', '1', '2025-05-03');

-- --------------------------------------------------------

--
-- Table structure for table tbldepartment
--

CREATE TABLE tbldepartment (
  Id int(20) NOT NULL,
  departmentName varchar(255) NOT NULL,
  facultyId int(20) NOT NULL,
  dateCreated varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table tbldepartment
--

INSERT INTO tbldepartment (Id, departmentName, facultyId, dateCreated) VALUES
(1, 'IT Dept', 1, '2022-06-13');

-- --------------------------------------------------------

--
-- Table structure for table tblfaculty
--

CREATE TABLE tblfaculty (
  Id int(20) NOT NULL,
  facultyName varchar(255) NOT NULL,
  dateCreated varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table tblfaculty
--

INSERT INTO tblfaculty (Id, facultyName, dateCreated) VALUES
(1, 'Faculty 1', '2025-05-01');

-- --------------------------------------------------------

--
-- Table structure for table tblfinalresult
--

CREATE TABLE tblfinalresult (
  Id int(10) NOT NULL,
  matricNo varchar(50) NOT NULL,
  levelId varchar(10) NOT NULL,
  semesterId varchar(10) NOT NULL,
  sessionId varchar(10) NOT NULL,
  totalCourseUnit varchar(10) NOT NULL,
  totalScoreGradePoint varchar(10) NOT NULL,
  gpa varchar(255) NOT NULL,
  classOfDiploma varchar(50) NOT NULL,
  dateAdded varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblfinalresult
--

INSERT INTO tblfinalresult (Id, matricNo, levelId, semesterId, sessionId, totalCourseUnit, totalScoreGradePoint, gpa, classOfDiploma, dateAdded) VALUES
(1, 'SGS100', '1', '1', '1', '5', '0', '0', 'Fail', '2022-06-13');

-- --------------------------------------------------------

--
-- Table structure for table tbllevel
--

CREATE TABLE tbllevel (
  Id int(20) NOT NULL,
  levelName varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table tbllevel
--

INSERT INTO tbllevel (Id, levelName) VALUES
(1, 'Level One'),
(2, 'Level Two');

-- --------------------------------------------------------

--
-- Table structure for table tblresult
--

CREATE TABLE tblresult (
  Id int(10) NOT NULL,
  matricNo varchar(50) NOT NULL,
  levelId varchar(10) NOT NULL,
  semesterId varchar(10) NOT NULL,
  sessionId varchar(10) NOT NULL,
  courseCode varchar(50) NOT NULL,
  courseUnit varchar(50) NOT NULL,
  score varchar(50) NOT NULL,
  scoreGradePoint varchar(50) NOT NULL,
  scoreLetterGrade varchar(10) NOT NULL,
  totalScoreGradePoint varchar(50) NOT NULL,
  dateAdded varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblresult
--

INSERT INTO tblresult (Id, matricNo, levelId, semesterId, sessionId, courseCode, courseUnit, score, scoreGradePoint, scoreLetterGrade, totalScoreGradePoint, dateAdded) VALUES
(1, 'SGS100', '1', '1', '1', 'PI01', '5', '30', '0', 'F', '0', '2022-06-13');

-- --------------------------------------------------------

--
-- Table structure for table tblsemester
--

CREATE TABLE tblsemester (
  Id int(20) NOT NULL,
  semesterName varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblsemester
--

INSERT INTO tblsemester (Id, semesterName) VALUES
(1, 'First Sem'),
(2, 'Second Sem');

-- --------------------------------------------------------

--
-- Table structure for table tblsession
--

CREATE TABLE tblsession (
  Id int(20) NOT NULL,
  sessionName varchar(30) NOT NULL,
  isActive int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblsession
--

INSERT INTO tblsession (Id, sessionName, isActive) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table tbladmin
--

CREATE TABLE tbladmin (
  Id int(20) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  otherName varchar(255) NOT NULL,
  emailAddress varchar(255) NOT NULL,
  phoneNo varchar(20) NOT NULL,
  password varchar(255) NOT NULL,
  adminId varchar(255) NOT NULL,
  isAssigned int(10) NOT NULL,
  isPasswordChanged int(10) NOT NULL,
  dateCreated varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table tblstudent
--

CREATE TABLE tblstudent (
  Id int(20) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  otherName varchar(255) NOT NULL,
  matricNo varchar(255) NOT NULL,
  password varchar(255) NOT NULL DEFAULT 'student@ccbd',
  levelId int(10) NOT NULL,
  facultyId int(10) NOT NULL,
  departmentId int(10) NOT NULL,
  sessionId int(10) NOT NULL,
  dateCreated varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table tblstudent
--

INSERT INTO tblstudent (Id, firstName, lastName, otherName, matricNo, password, levelId, facultyId, departmentId, sessionId, dateCreated) VALUES
(1, 'Md. Mehedi', 'Hasan', 'mhrony', '123456', 'student@ccbd', 1, 1, 1, 1, '2024-04-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table tbladmin
--
ALTER TABLE tbladmin
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tbladmintype
--
ALTER TABLE tbladmintype
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblassignedadmin
--
ALTER TABLE tblassignedadmin
  ADD PRIMARY KEY (id);

--
-- Indexes for table tblcgparesult
--
ALTER TABLE tblcgparesult
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblcourse
--
ALTER TABLE tblcourse
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tbldepartment
--
ALTER TABLE tbldepartment
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblfaculty
--
ALTER TABLE tblfaculty
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblfinalresult
--
ALTER TABLE tblfinalresult
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tbllevel
--
ALTER TABLE tbllevel
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblresult
--
ALTER TABLE tblresult
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblsemester
--
ALTER TABLE tblsemester
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblsession
--
ALTER TABLE tblsession
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tbladmin
--
ALTER TABLE tbladmin
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblstudent
--
ALTER TABLE tblstudent
  ADD PRIMARY KEY (Id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table tbladmin
--
ALTER TABLE tbladmin
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table tbladmintype
--
ALTER TABLE tbladmintype
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table tblassignedadmin
--
ALTER TABLE tblassignedadmin
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table tblcgparesult
--
ALTER TABLE tblcgparesult
  MODIFY Id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table tblcourse
--
ALTER TABLE tblcourse
  MODIFY Id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table tbldepartment
--
ALTER TABLE tbldepartment
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table tblfaculty
--
ALTER TABLE tblfaculty
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table tblfinalresult
--
ALTER TABLE tblfinalresult
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table tbllevel
--
ALTER TABLE tbllevel
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table tblresult
--
ALTER TABLE tblresult
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table tblsemester
--
ALTER TABLE tblsemester
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table tblsession
--
ALTER TABLE tblsession
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table tbladmin
--
ALTER TABLE tbladmin
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table tblstudent
--
ALTER TABLE tblstudent
  MODIFY Id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
