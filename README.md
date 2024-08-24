Social Media Website is one of the leading ways of communication that takes place between people these days. This project provides an idea of developing an application called a social website. The social networking websites include Facebook, Twitter, Linked In, and 
so on. People get to know people around the world through these social networking websites. Social Media Networking means a group of people come together to know each other through the facility of the internet. The social networking website project helps to share videos, images, stories, and a lot of things. The system would provide a basic set of features to add/update members, add/update posts, and manage check-in specifications for the systems based on the user’s statement of need. Social Media Networking System is a typical Management Information System (MIS), its development includes the establishment and maintenance of back-end development and front-end application development aspects. For the former requirement, the establishment of data consistency and integrity of the strong data security and good networking site. The latter requires the application fully functional, easy to use, and so on. 
The aim is to bring people closer, keep updated about yourself and follow up with friends and other people well organized globe. 
The features that can be included in this project are as follows: 
• Sharing of videos, images: Through this project, the people will be able to share the images, videos among a group of people. 
• Database management of the people: The people who are part of the groups or the social networking website application, their information needs to be stored in a well-organized manner. 
• Knowledge can be gained: Through this application, it is also possible to share the knowledge- based articles which result in knowledge gain. 

SYSTEM REQUIREMENTS SPECIFICATIONS
2.1 HARDWARE REQUIREMENTS
The section of hardware configuration is an important task related to the software development insufficient random-access memory may affect adversely on the speed and efficiency of the entire system. The process should be powerful to handle the entire operations. The hard disk should have sufficient capacity to store the file and application.

Processor: Intel(R) Core(TM) i3-3110M CPU @ 2.40GHz
RAM: 4GB
Keyboard: 101 keys
Hard Disk: Min 40GB storage
System type: 64-bit Operating System, x64based processor

2.2 SOFTWARE REQUIREMENTS
A major element in building a system is the section of compatible software since the software in the market is experiencing in geometric progression. Selected software should be acceptable by the firm and one user as well as it should be feasible for the system. This document gives a detailed description of the software requirement specification. The study of requirement specification is focused specially on the functioning of the system. It allows the developer or analyst to understand the system, function to be carried out the performance level to be obtained and corresponding interfaces to be established.

Front End : PHP (Hypertext Preprocessor), HTML, CSS
Back End : WAMPP server, MYSQL
Operation System : Windows 10
IDE : Visual Studio Code

SYSTEM IMPLEMENTATION
a) CREATE A CONNECTION TO DATABASE
Before you can access data in a database, you must create a connection to the database. In PHP, this is done with the get connection( ) function.
<?php
$con = mysqli_connect('localhost','root','','facebook');
?>

b) CREATE DATABASE
Create database facebook;
USE facebook;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

c) CREATION OF TABLES
1. User Table
2. Photos Table
3. Post Table
4. Comments Table
5. Account Info Table
6. Login Table
7. Forgot Password Table
   
The Social Media Network Management System has been computed successfully and was also tested successfully by taking “test cases”. It is user-friendly and has the required options, which can be utilized by the user to perform the desired operation. The software is developed using PHP as front-end and MySQL as back-end in Windows environment. The goals that are achieved by the software are:

 Optimum utilization of resources
 Efficient management of records
 Simplification of the operations
 Less processing time and getting required information
 User friendly
 Portable and flexible for further enhancement
