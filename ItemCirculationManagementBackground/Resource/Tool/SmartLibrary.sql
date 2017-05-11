/*
Navicat SQL Server Data Transfer

Source Server         : 192.168.100.200
Source Server Version : 110000
Source Host           : 192.168.100.200:1433
Source Database       : SmartLibrary
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2017-04-12 16:17:15
*/


-- ----------------------------
-- Table structure for L_Circulation
-- ----------------------------
DROP TABLE [dbo].[L_Circulation]
GO
CREATE TABLE [dbo].[L_Circulation] (
[ID] int NOT NULL IDENTITY(1,1) ,
[MachineID] int NOT NULL ,
[StaffId] int NULL ,
[CirculationType] varchar(4) NOT NULL ,
[BookBarcode] varchar(30) NOT NULL ,
[PatronCode] varchar(30) NULL ,
[CirculationDate] datetime NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[L_Circulation]', RESEED, 395)
GO

-- ----------------------------
-- Records of L_Circulation
-- ----------------------------
SET IDENTITY_INSERT [dbo].[L_Circulation] ON
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'43', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-09 13:27:19.783')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'44', N'8', null, N'1001', N'C2815A9F000104E0', N'1005', N'2016-12-09 13:54:15.460')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'45', N'8', null, N'1001', N'20825A9F000104E0', N'1002', N'2016-12-12 16:45:20.420')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'46', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:45:43.393')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'47', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:51:35.043')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'48', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 16:51:44.097')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'49', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:51:45.327')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'50', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:51:49.910')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'51', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 16:56:22.813')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'52', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:56:23.787')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'53', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:56:34.050')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'54', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 16:56:57.393')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'55', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:56:58.637')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'56', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 16:57:06.113')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'57', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 17:00:50.713')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'58', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:00:52.503')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'59', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:00:57.917')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'60', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 17:01:02.430')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'61', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:01:04.090')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'62', N'8', null, N'1001', N'61765A9F000104E0', N'1006', N'2016-12-12 17:01:05.810')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'63', N'8', null, N'1003', N'61765A9F000104E0', N'1006', N'2016-12-12 17:02:04.333')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'64', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:02:15.157')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'65', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-12 17:02:25.130')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'66', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 17:02:25.190')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'67', N'8', null, N'1001', N'61765A9F000104E0', N'1006', N'2016-12-12 17:02:26.787')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'68', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:02:26.897')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'69', N'8', null, N'1003', N'61765A9F000104E0', N'1006', N'2016-12-12 17:02:41.773')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'70', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:02:41.803')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'71', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-12 17:04:38.000')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'72', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-12 17:04:38.070')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'73', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 17:04:38.180')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'74', N'8', null, N'1001', N'61765A9F000104E0', N'1006', N'2016-12-12 17:04:41.780')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'75', N'8', null, N'1001', N'C2815A9F000104E0', N'1006', N'2016-12-12 17:04:41.900')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'76', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:04:41.990')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'77', N'8', null, N'1003', N'61765A9F000104E0', N'1006', N'2016-12-12 17:04:53.570')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'78', N'8', null, N'1003', N'C2815A9F000104E0', N'1006', N'2016-12-12 17:04:53.597')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'79', N'8', null, N'1003', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:04:53.630')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'80', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-12 17:04:58.047')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'81', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-12 17:04:58.110')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'82', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-12 17:04:58.163')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'83', N'8', null, N'1001', N'61765A9F000104E0', N'1006', N'2016-12-12 17:05:01.430')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'84', N'8', null, N'1001', N'C2815A9F000104E0', N'1006', N'2016-12-12 17:05:01.537')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'85', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-12 17:05:01.630')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'86', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:19:07.033')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'87', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:19:07.140')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'88', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:19:07.210')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'89', N'8', null, N'1001', N'0D765A9F000104E0', N'1006', N'2016-12-13 12:19:11.533')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'90', N'8', null, N'1001', N'61765A9F000104E0', N'1006', N'2016-12-13 12:19:13.857')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'91', N'8', null, N'1001', N'C2815A9F000104E0', N'1006', N'2016-12-13 12:19:15.477')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'92', N'8', null, N'1003', N'C2815A9F000104E0', N'1006', N'2016-12-13 12:19:19.590')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'93', N'8', null, N'1003', N'61765A9F000104E0', N'1006', N'2016-12-13 12:19:21.507')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'94', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:20:14.140')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'95', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:20:14.190')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'96', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:20:14.243')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'97', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:20:53.767')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'98', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:20:53.873')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'99', N'8', null, N'1001', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:20:53.963')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'100', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:20:57.913')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'101', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:20:57.943')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'102', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:23:10.680')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'103', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:23:10.730')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'104', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:23:10.780')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'105', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:23:13.043')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'106', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:23:13.210')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'107', N'8', null, N'1001', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:23:13.320')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'108', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:23:16.730')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'109', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:23:16.767')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'110', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:25:39.340')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'111', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:25:39.390')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'112', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:25:39.440')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'113', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:25:40.363')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'114', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:25:40.470')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'115', N'8', null, N'1001', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:25:40.563')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'116', N'8', null, N'1003', N'20825A9F000104E0', N'1002', N'2016-12-13 12:25:43.603')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'117', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:25:43.873')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'118', N'8', null, N'1003', N'20825A9F000104E0', N'1002', N'2016-12-13 12:25:46.057')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'119', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:25:46.087')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'120', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:25:46.117')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'121', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:25:47.787')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'122', N'8', null, N'1003', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:25:47.813')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'123', N'8', null, N'1003', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:25:49.983')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'124', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:27:30.640')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'125', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:27:30.693')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'126', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:27:30.743')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'127', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:27:32.140')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'128', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:27:32.247')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'129', N'8', null, N'1001', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:27:32.337')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'130', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:27:32.990')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'131', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:27:33.040')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'132', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:27:33.093')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'133', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:27:34.343')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'134', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:27:34.460')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'135', N'8', null, N'1001', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:27:34.550')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'136', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:27:35.437')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'137', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:27:35.490')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'138', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:27:35.540')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'139', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:27:36.117')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'140', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:27:36.250')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'141', N'8', null, N'1001', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:27:36.383')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'142', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:27:38.820')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'143', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:27:38.870')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'144', N'8', null, N'1002', N'0D765A9F000104E0', null, N'2016-12-13 12:27:38.923')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'145', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:27:39.973')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'146', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:27:40.077')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'147', N'8', null, N'1001', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:27:40.190')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'148', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:27:44.137')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'149', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:27:51.560')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'150', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:27:51.590')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'151', N'8', null, N'1003', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:27:51.620')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'152', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:27:53.357')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'153', N'8', null, N'1003', N'0D765A9F000104E0', N'1002', N'2016-12-13 12:27:53.393')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'154', N'8', null, N'1002', N'20825A9F000104E0', null, N'2016-12-13 12:52:53.123')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'155', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:52:53.187')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'156', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:52:53.240')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'157', N'8', null, N'1001', N'20825A9F000104E0', N'1002', N'2016-12-13 12:52:54.320')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'158', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:52:54.433')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'159', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:52:54.527')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'160', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:53:31.423')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'161', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:54:40.143')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'162', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:54:55.767')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'163', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:54:56.620')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'164', N'8', null, N'1002', N'20825A9F000104E0', null, N'2016-12-13 12:55:29.107')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'165', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:55:29.160')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'166', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:55:29.217')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'167', N'8', null, N'1001', N'20825A9F000104E0', N'1002', N'2016-12-13 12:55:31.610')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'168', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:55:31.730')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'169', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:55:31.820')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'170', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:55:35.943')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'171', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:55:35.973')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'172', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:55:37.513')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'173', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:55:37.543')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'174', N'8', null, N'1002', N'20825A9F000104E0', null, N'2016-12-13 12:55:45.890')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'175', N'8', null, N'1002', N'C2815A9F000104E0', null, N'2016-12-13 12:55:45.943')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'176', N'8', null, N'1002', N'61765A9F000104E0', null, N'2016-12-13 12:55:45.997')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'177', N'8', null, N'1001', N'20825A9F000104E0', N'1002', N'2016-12-13 12:55:47.050')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'178', N'8', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:55:47.160')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'179', N'8', null, N'1001', N'61765A9F000104E0', N'1002', N'2016-12-13 12:55:47.260')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'180', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:55:54.553')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'181', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:55:54.587')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'182', N'8', null, N'1003', N'C2815A9F000104E0', N'1002', N'2016-12-13 12:56:04.307')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'183', N'8', null, N'1003', N'61765A9F000104E0', N'1002', N'2016-12-13 12:56:09.967')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'184', N'8', null, N'1001', N'ZD2016005', N'1006', N'2016-12-16 16:55:34.993')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'185', N'8', null, N'1002', N'ZD2016005', null, N'2016-12-16 16:55:38.077')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'186', N'8', null, N'1001', N'ZD2016005', N'1006', N'2016-12-16 16:55:39.597')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'187', N'18', null, N'1001', N'ZD2016042', N'1002', N'2016-12-20 09:44:43.997')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'188', N'18', null, N'1002', N'ZD2016042', null, N'2016-12-20 09:44:56.557')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'189', N'18', null, N'1001', N'ZD2016037', N'1002', N'2016-12-20 09:47:39.937')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'190', N'18', null, N'1001', N'ZD2016022', N'1002', N'2016-12-20 09:47:43.120')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'191', N'18', null, N'1001', N'ZD2016025', N'1002', N'2016-12-20 09:47:44.730')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'192', N'18', null, N'1001', N'ZD2016032', N'1002', N'2016-12-20 09:47:46.340')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'193', N'18', null, N'1002', N'ZD2016025', null, N'2016-12-20 09:48:15.643')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'194', N'18', null, N'1002', N'ZD2016032', null, N'2016-12-20 09:48:15.757')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'195', N'18', null, N'1002', N'ZD2016022', null, N'2016-12-20 09:48:15.863')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'196', N'18', null, N'1002', N'ZD2016037', null, N'2016-12-20 09:48:15.993')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'197', N'18', null, N'1001', N'ZD2016003', N'1002', N'2016-12-20 09:49:08.390')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'198', N'18', null, N'1001', N'ZD2016041', N'1002', N'2016-12-20 10:15:24.667')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'199', N'18', null, N'1001', N'ZD2016044', N'1002', N'2016-12-20 10:15:25.623')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'200', N'18', null, N'1001', N'ZD2016051', N'1002', N'2016-12-20 10:15:29.710')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'201', N'18', null, N'1001', N'ZD2016013', N'1002', N'2016-12-20 10:15:31.243')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'202', N'18', null, N'1001', N'ZD2016014', N'1002', N'2016-12-20 10:15:32.607')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'203', N'18', null, N'1002', N'ZD2016051', null, N'2016-12-20 10:16:02.090')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'204', N'18', null, N'1002', N'ZD2016014', null, N'2016-12-20 10:16:02.217')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'205', N'18', null, N'1002', N'ZD2016044', null, N'2016-12-20 10:16:20.193')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'206', N'18', null, N'1002', N'ZD2016013', null, N'2016-12-20 10:16:22.543')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'207', N'18', null, N'1001', N'ZD2016044', N'1002', N'2016-12-20 10:16:51.170')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'208', N'18', null, N'1001', N'ZD2016013', N'1002', N'2016-12-20 10:16:52.943')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'209', N'18', null, N'1001', N'ZD2016014', N'1002', N'2016-12-20 10:16:54.360')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'210', N'18', null, N'1001', N'ZD2016051', N'1002', N'2016-12-20 10:16:54.800')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'211', N'18', null, N'1002', N'ZD2016051', null, N'2016-12-20 10:17:07.423')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'212', N'18', null, N'1002', N'ZD2016013', null, N'2016-12-20 10:17:07.560')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'213', N'18', null, N'1002', N'ZD2016014', null, N'2016-12-20 10:17:07.683')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'214', N'18', null, N'1002', N'ZD2016044', null, N'2016-12-20 10:17:07.983')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'215', N'18', null, N'1001', N'ZD2016040', N'1002', N'2016-12-20 10:23:16.530')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'216', N'18', null, N'1001', N'ZD2016021', N'1002', N'2016-12-20 10:23:26.890')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'217', N'18', null, N'1001', N'ZD2016016', N'1002', N'2016-12-20 10:23:59.363')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'218', N'18', null, N'1001', N'ZD2016001', N'1002', N'2016-12-20 10:24:03.890')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'219', N'18', null, N'1001', N'ZD2016023', N'1002', N'2016-12-20 10:24:13.053')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'220', N'18', null, N'1001', N'ZD2016046', N'1002', N'2016-12-20 10:24:15.520')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'221', N'18', null, N'1001', N'ZD2016054', N'1002', N'2016-12-20 10:24:19.167')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'222', N'18', null, N'1001', N'ZD2016002', N'1002', N'2016-12-20 10:24:21.593')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'223', N'18', null, N'1001', N'ZD2016057', N'1002', N'2016-12-20 10:24:24.060')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'224', N'18', null, N'1002', N'ZD2016016', null, N'2016-12-20 10:24:53.580')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'225', N'18', null, N'1001', N'ZD2016016', N'1002', N'2016-12-20 10:25:04.723')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'226', N'18', null, N'1002', N'ZD2016016', null, N'2016-12-20 10:25:07.133')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'227', N'18', null, N'1001', N'ZD2016016', N'1002', N'2016-12-20 10:25:10.537')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'228', N'18', null, N'1002', N'ZD2016016', null, N'2016-12-20 10:25:44.077')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'229', N'18', null, N'1002', N'ZD2016002', null, N'2016-12-20 10:26:54.140')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'230', N'18', null, N'1001', N'ZD2016014', N'1002', N'2016-12-20 10:37:23.403')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'231', N'21', null, N'1002', N'ZD2016014', null, N'2016-12-20 10:37:25.120')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'232', N'18', null, N'1001', N'ZD2016013', N'1002', N'2016-12-20 10:38:02.850')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'233', N'21', null, N'1002', N'ZD2016013', null, N'2016-12-20 10:38:14.173')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'234', N'18', null, N'1001', N'ZD2016004', N'1002', N'2016-12-20 10:49:48.337')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'235', N'18', null, N'1001', N'ZD2016032', N'1002', N'2016-12-20 10:49:48.767')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'236', N'18', null, N'1001', N'ZD2016010', N'1002', N'2016-12-20 10:49:49.107')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'237', N'18', null, N'1001', N'ZD2016033', N'1002', N'2016-12-20 10:49:49.480')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'238', N'18', null, N'1001', N'ZD2016049', N'1002', N'2016-12-20 10:49:49.880')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'239', N'18', null, N'1001', N'ZD2016050', N'1002', N'2016-12-20 10:49:50.253')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'240', N'18', null, N'1002', N'ZD2016004', null, N'2016-12-20 10:50:42.953')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'241', N'18', null, N'1002', N'ZD2016032', null, N'2016-12-20 10:50:44.750')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'242', N'18', null, N'1002', N'ZD2016033', null, N'2016-12-20 10:50:46.787')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'243', N'18', null, N'1002', N'ZD2016049', null, N'2016-12-20 10:50:47.830')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'244', N'18', null, N'1001', N'ZD2016004', N'1002', N'2016-12-20 10:51:04.960')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'245', N'18', null, N'1001', N'ZD2016032', N'1002', N'2016-12-20 10:51:05.370')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'246', N'18', null, N'1001', N'ZD2016033', N'1002', N'2016-12-20 10:51:05.983')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'247', N'18', null, N'1001', N'ZD2016049', N'1002', N'2016-12-20 10:51:06.310')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'248', N'18', null, N'1001', N'ZD2016002', N'1002', N'2016-12-20 10:51:33.007')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'249', N'18', null, N'1002', N'ZD2016002', null, N'2016-12-20 10:51:44.950')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'250', N'18', null, N'1002', N'ZD2016054', null, N'2016-12-20 10:51:45.073')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'251', N'18', null, N'1002', N'ZD2016046', null, N'2016-12-20 10:51:45.427')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'252', N'18', null, N'1002', N'ZD2016057', null, N'2016-12-20 10:51:45.603')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'253', N'18', null, N'1001', N'ZD2016016', N'1002', N'2016-12-20 10:51:57.250')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'254', N'18', null, N'1001', N'ZD2016002', N'1002', N'2016-12-20 10:51:57.607')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'255', N'18', null, N'1001', N'ZD2016054', N'1002', N'2016-12-20 10:51:58.547')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'256', N'18', null, N'1001', N'ZD2016046', N'1002', N'2016-12-20 10:52:00.490')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'257', N'18', null, N'1001', N'ZD2016057', N'1002', N'2016-12-20 10:52:00.800')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'258', N'18', null, N'1002', N'ZD2016016', null, N'2016-12-20 10:52:14.423')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'259', N'18', null, N'1001', N'ZD2016016', N'1002', N'2016-12-20 10:52:47.977')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'260', N'18', null, N'1002', N'ZD2016016', null, N'2016-12-20 10:52:51.317')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'261', N'18', null, N'1002', N'ZD2016057', null, N'2016-12-20 10:53:12.580')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'262', N'18', null, N'1002', N'ZD2016046', null, N'2016-12-20 10:53:12.723')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'263', N'18', null, N'1002', N'ZD2016054', null, N'2016-12-20 10:53:12.837')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'264', N'18', null, N'1002', N'ZD2016002', null, N'2016-12-20 10:53:12.997')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'265', N'18', null, N'1001', N'ZD2016027', N'1002', N'2016-12-20 10:57:28.300')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'266', N'18', null, N'1001', N'ZD2016035', N'1002', N'2016-12-20 10:57:28.783')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'267', N'18', null, N'1001', N'ZD2016026', N'1002', N'2016-12-20 10:57:29.093')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'268', N'18', null, N'1001', N'ZD2016024', N'1002', N'2016-12-20 10:57:29.520')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'269', N'18', null, N'1001', N'ZD2016045', N'1002', N'2016-12-20 10:57:30.143')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'270', N'18', null, N'1001', N'ZD2016008', N'1002', N'2016-12-20 10:57:31.997')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'271', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-20 11:02:07.610')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'272', N'21', null, N'1002', N'ZD2016008', null, N'2016-12-20 11:02:08.863')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'273', N'21', null, N'1002', N'ZD2016026', null, N'2016-12-20 11:02:10.403')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'274', N'21', null, N'1002', N'ZD2016027', null, N'2016-12-20 11:02:11.660')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'275', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-20 11:02:13.000')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'276', N'21', null, N'1002', N'ZD2016024', null, N'2016-12-20 11:02:15.073')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'277', N'18', null, N'1001', N'ZD2016014', N'1002', N'2016-12-20 11:04:44.937')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'278', N'18', null, N'1001', N'ZD2016013', N'1002', N'2016-12-20 11:04:45.217')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'279', N'21', null, N'1002', N'ZD2016013', null, N'2016-12-20 11:04:53.547')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'280', N'21', null, N'1002', N'ZD2016014', null, N'2016-12-20 11:04:53.847')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'281', N'18', null, N'1001', N'ZD2016045', N'8888', N'2016-12-20 12:11:18.227')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'282', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-20 12:11:40.117')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'283', N'18', null, N'1001', N'ZD2016044', N'8878', N'2016-12-20 12:12:40.803')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'284', N'21', null, N'1002', N'ZD2016044', null, N'2016-12-20 12:12:47.730')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'285', N'21', null, N'1002', N'ZD2016032', null, N'2016-12-20 12:14:19.237')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'286', N'18', null, N'1001', N'ZD2016035', N'6687', N'2016-12-20 12:14:35.193')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'287', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-20 12:14:43.597')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'288', N'18', null, N'1001', N'ZD2016025', N'6614', N'2016-12-20 12:16:55.983')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'289', N'18', null, N'1001', N'ZD2016042', N'6614', N'2016-12-20 12:17:02.417')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'290', N'21', null, N'1002', N'ZD2016042', null, N'2016-12-20 12:17:18.420')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'291', N'21', null, N'1002', N'ZD2016025', null, N'2016-12-20 12:17:18.537')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'292', N'18', null, N'1001', N'ZD2016024', N'6656', N'2016-12-20 12:17:41.533')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'293', N'21', null, N'1002', N'ZD2016024', null, N'2016-12-20 12:17:47.687')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'294', N'18', null, N'1001', N'ZD2016002', N'6779', N'2016-12-20 12:19:26.447')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'295', N'21', null, N'1002', N'ZD2016002', null, N'2016-12-20 12:19:35.333')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'296', N'18', null, N'1001', N'ZD2016002', N'9999', N'2016-12-20 12:22:01.350')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'297', N'18', null, N'1001', N'ZD2016022', N'9999', N'2016-12-20 12:22:01.583')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'298', N'18', null, N'1001', N'ZD2016027', N'6727', N'2016-12-20 12:22:09.887')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'299', N'18', null, N'1001', N'ZD2016026', N'6727', N'2016-12-20 12:22:10.330')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'300', N'21', null, N'1002', N'ZD2016002', null, N'2016-12-20 12:22:22.273')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'301', N'21', null, N'1002', N'ZD2016022', null, N'2016-12-20 12:22:22.363')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'302', N'18', null, N'1002', N'ZD2016027', null, N'2016-12-20 12:25:32.080')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'303', N'18', null, N'1002', N'ZD2016026', null, N'2016-12-20 12:25:32.413')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'304', N'18', null, N'1001', N'ZD2016026', N'6727', N'2016-12-20 12:25:45.873')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'305', N'18', null, N'1001', N'ZD2016027', N'6727', N'2016-12-20 12:25:46.200')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'306', N'18', null, N'1002', N'ZD2016026', null, N'2016-12-20 12:26:13.840')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'307', N'18', null, N'1001', N'ZD2016026', N'6727', N'2016-12-20 12:26:16.540')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'308', N'18', null, N'1002', N'ZD2016004', null, N'2016-12-20 12:26:48.633')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'309', N'18', null, N'1001', N'ZD2016004', N'6727', N'2016-12-20 12:26:51.637')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'310', N'18', null, N'1002', N'ZD2016004', null, N'2016-12-20 12:27:15.160')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'311', N'18', null, N'1002', N'ZD2016026', null, N'2016-12-20 12:27:17.133')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'312', N'18', null, N'1002', N'ZD2016027', null, N'2016-12-20 12:27:18.523')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'313', N'18', null, N'1001', N'ZD2016027', N'6727', N'2016-12-20 12:27:21.790')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'314', N'18', null, N'1001', N'ZD2016026', N'6727', N'2016-12-20 12:27:22.010')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'315', N'18', null, N'1001', N'ZD2016004', N'6727', N'2016-12-20 12:27:22.217')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'316', N'18', null, N'1002', N'ZD2016004', null, N'2016-12-20 12:27:32.260')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'317', N'18', null, N'1002', N'ZD2016027', null, N'2016-12-20 12:27:32.457')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'318', N'18', null, N'1002', N'ZD2016026', null, N'2016-12-20 12:27:32.573')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'319', N'18', null, N'1001', N'ZD2016027', N'6727', N'2016-12-20 12:27:35.313')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'320', N'18', null, N'1001', N'ZD2016026', N'6727', N'2016-12-20 12:27:35.513')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'321', N'18', null, N'1001', N'ZD2016004', N'6727', N'2016-12-20 12:27:35.717')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'322', N'18', null, N'1002', N'ZD2016004', null, N'2016-12-20 12:27:55.360')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'323', N'18', null, N'1002', N'ZD2016027', null, N'2016-12-20 12:27:55.440')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'324', N'18', null, N'1002', N'ZD2016026', null, N'2016-12-20 12:27:55.533')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'325', N'18', null, N'1001', N'ZD2016004', N'6727', N'2016-12-20 12:27:58.547')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'326', N'18', null, N'1001', N'ZD2016027', N'6727', N'2016-12-20 12:27:58.733')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'327', N'18', null, N'1001', N'ZD2016026', N'6727', N'2016-12-20 12:27:58.890')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'328', N'18', null, N'1002', N'ZD2016004', null, N'2016-12-20 12:28:10.837')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'329', N'18', null, N'1002', N'ZD2016026', null, N'2016-12-20 12:28:11.113')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'330', N'18', null, N'1002', N'ZD2016027', null, N'2016-12-20 12:28:11.207')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'331', N'18', null, N'1001', N'ZD2016045', N'6764', N'2016-12-20 12:33:47.293')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'332', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-20 12:33:56.777')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'333', N'18', null, N'1001', N'ZD2016025', N'6764', N'2016-12-20 12:34:33.550')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'334', N'18', null, N'1001', N'ZD2016045', N'6710', N'2016-12-20 12:35:21.357')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'335', N'21', null, N'1002', N'ZD2016025', null, N'2016-12-20 12:35:31.867')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'336', N'18', null, N'1001', N'ZD2016025', N'6764', N'2016-12-20 12:35:44.600')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'337', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-20 12:36:14.747')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'338', N'21', null, N'1002', N'ZD2016025', null, N'2016-12-20 12:36:19.630')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'339', N'18', null, N'1001', N'ZD2016046', N'6764', N'2016-12-20 12:37:13.903')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'340', N'18', null, N'1001', N'ZD2016002', N'6764', N'2016-12-20 12:37:35.817')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'341', N'18', null, N'1001', N'ZD2016042', N'6764', N'2016-12-20 12:37:54.417')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'342', N'18', null, N'1001', N'ZD2016025', N'9999', N'2016-12-20 17:07:27.257')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'343', N'21', null, N'1002', N'ZD2016025', null, N'2016-12-20 17:07:35.007')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'344', N'18', null, N'1001', N'ZD2016037', N'6727', N'2016-12-21 11:50:09.497')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'345', N'21', null, N'1002', N'ZD2016037', null, N'2016-12-21 11:50:31.050')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'346', N'18', null, N'1001', N'ZD2016025', N'9999', N'2016-12-21 16:43:51.503')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'347', N'21', null, N'1002', N'ZD2016025', null, N'2016-12-21 16:44:06.447')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'348', N'21', null, N'1002', N'ZD2016033', null, N'2016-12-22 11:40:43.913')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'349', N'18', null, N'1001', N'ZD2016033', N'6677', N'2016-12-22 11:40:53.960')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'350', N'18', null, N'1001', N'ZD2016025', N'6742', N'2016-12-22 11:44:44.027')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'351', N'18', null, N'1001', N'ZD2016035', N'6727', N'2016-12-22 11:45:23.473')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'352', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-22 11:45:37.697')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'353', N'21', null, N'1001', N'ZD2016035', N'9999', N'2016-12-22 16:49:12.780')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'354', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-22 16:49:14.213')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'355', N'18', null, N'1001', N'ZD2016035', N'6727', N'2016-12-23 11:42:31.670')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'356', N'18', null, N'1001', N'ZD2016045', N'6727', N'2016-12-23 11:42:37.847')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'357', N'18', null, N'1001', N'ZD2016037', N'6727', N'2016-12-23 11:42:38.030')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'358', N'21', null, N'1002', N'ZD2016037', null, N'2016-12-23 11:43:00.797')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'359', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-23 11:44:04.883')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'360', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-23 11:44:14.623')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'361', N'18', null, N'1001', N'ZD2016035', N'6727', N'2016-12-23 11:44:32.660')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'362', N'18', null, N'1001', N'ZD2016037', N'6727', N'2016-12-23 11:44:32.863')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'363', N'18', null, N'1001', N'ZD2016045', N'6727', N'2016-12-23 11:44:33.043')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'364', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-23 11:45:44.147')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'365', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-23 11:45:44.277')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'366', N'21', null, N'1002', N'ZD2016037', null, N'2016-12-23 11:45:44.383')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'367', N'18', null, N'1001', N'ZD2016035', N'6727', N'2016-12-23 11:45:54.990')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'368', N'18', null, N'1001', N'ZD2016045', N'6727', N'2016-12-23 11:45:55.197')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'369', N'18', null, N'1001', N'ZD2016037', N'6727', N'2016-12-23 11:45:55.343')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'370', N'21', null, N'1002', N'ZD2016037', null, N'2016-12-23 11:48:05.427')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'371', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-23 11:48:05.710')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'372', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-23 11:48:05.837')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'373', N'18', null, N'1001', N'ZD2016035', N'6727', N'2016-12-23 11:48:14.917')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'374', N'18', null, N'1001', N'ZD2016045', N'6727', N'2016-12-23 11:48:15.127')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'375', N'18', null, N'1001', N'ZD2016037', N'6727', N'2016-12-23 11:48:15.267')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'376', N'21', null, N'1002', N'ZD2016037', null, N'2016-12-23 11:48:39.383')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'377', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-23 11:48:39.463')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'378', N'21', null, N'1002', N'ZD2016035', null, N'2016-12-23 11:48:39.560')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'379', N'18', null, N'1001', N'ZD2016045', N'9999', N'2016-12-23 12:38:15.640')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'380', N'18', null, N'1003', N'ZD2016045', N'9999', N'2016-12-23 12:38:47.010')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'381', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-23 12:39:09.087')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'382', N'18', null, N'1001', N'ZD2016045', N'9999', N'2016-12-23 12:40:36.173')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'383', N'21', null, N'1002', N'ZD2016045', null, N'2016-12-26 11:13:37.510')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'384', N'18', null, N'1001', N'ZD2016037', N'9999', N'2016-12-26 11:14:02.790')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'385', N'21', null, N'1002', N'ZD2016037', null, N'2016-12-26 11:14:08.457')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'386', N'18', null, N'1001', N'ZD2016013', N'9999', N'2016-12-27 10:00:42.770')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'387', N'21', null, N'1002', N'ZD2016013', null, N'2016-12-27 10:00:51.843')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'388', N'21', null, N'1002', N'ZD2016046', null, N'2017-01-03 12:15:47.517')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'389', N'21', null, N'1002', N'ZD2016002', null, N'2017-01-03 12:15:57.000')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'390', N'21', null, N'1002', N'ZD2016042', null, N'2017-01-03 12:16:02.647')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'391', N'18', null, N'1001', N'ZD2016002', N'8688', N'2017-01-07 11:22:21.533')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'392', N'21', null, N'1002', N'ZD2016002', null, N'2017-01-07 11:22:48.783')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'393', N'18', null, N'1001', N'ZD2016002', N'8688', N'2017-01-07 11:22:58.530')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'394', N'21', null, N'1002', N'ZD2016002', null, N'2017-01-07 11:23:40.967')
GO
GO
INSERT INTO [dbo].[L_Circulation] ([ID], [MachineID], [StaffId], [CirculationType], [BookBarcode], [PatronCode], [CirculationDate]) VALUES (N'395', N'21', null, N'1002', N'ZD2016025', null, N'2017-01-16 10:04:36.360')
GO
GO
SET IDENTITY_INSERT [dbo].[L_Circulation] OFF
GO

-- ----------------------------
-- Table structure for L_TagInit
-- ----------------------------
DROP TABLE [dbo].[L_TagInit]
GO
CREATE TABLE [dbo].[L_TagInit] (
[ID] int NOT NULL IDENTITY(1,1) ,
[PatronCode] varchar(30) NULL ,
[TagTid] varchar(30) NOT NULL ,
[BookBarcode] varchar(30) NOT NULL ,
[Type] char(4) NULL ,
[CreateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[L_TagInit]', RESEED, 92)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'L_TagInit', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'L_TagInit', 
'COLUMN', N'TagTid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标签表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'TagTid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标签表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'TagTid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'L_TagInit', 
'COLUMN', N'BookBarcode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图书表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'BookBarcode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图书表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'BookBarcode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'L_TagInit', 
'COLUMN', N'Type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作类型 TYPE 1010 能力有限 弄不了'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'Type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作类型 TYPE 1010 能力有限 弄不了'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'Type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'L_TagInit', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'加工时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'加工时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'L_TagInit', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'加工人员ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'加工人员ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'L_TagInit', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'L_TagInit'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of L_TagInit
-- ----------------------------
SET IDENTITY_INSERT [dbo].[L_TagInit] ON
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'59', N'1001', N'C2815A9F000104E0', N'ZD2016006', null, N'2016-12-16 16:23:45.367', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'60', N'1001', N'D610E666500104E0', N'ZD2016003', null, N'2016-12-16 16:23:58.527', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'61', N'1001', N'08535A9F000104E0', N'ZD2016042', null, N'2016-12-16 16:24:09.723', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'62', N'1001', N'E7625A9F000104E0', N'ZD2016037', null, N'2016-12-16 16:24:26.693', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'63', N'1001', N'CD525A9F000104E0', N'ZD2016022', null, N'2016-12-16 16:24:40.833', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'64', N'1001', N'77515A9F000104E0', N'ZD2016025', null, N'2016-12-16 16:24:56.880', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'65', N'1001', N'445A5A9F000104E0', N'ZD2016032', null, N'2016-12-16 16:25:06.960', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'66', N'1001', N'CB625A9F000104E0', N'ZD2016005', null, N'2016-12-16 16:25:18.240', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'67', N'1001', N'0F535A9F000104E0', N'ZD2016014', null, N'2016-12-20 10:13:26.847', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'68', N'1001', N'E8525A9F000104E0', N'ZD2016013', null, N'2016-12-20 10:13:55.923', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'69', N'1001', N'7E595A9F000104E0', N'ZD2016051', null, N'2016-12-20 10:14:24.140', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'70', N'1001', N'5D735A9F000104E0', N'ZD2016044', null, N'2016-12-20 10:14:37.577', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'71', N'1001', N'D810E666500104E0', N'ZD2016041', null, N'2016-12-20 10:14:51.943', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'72', N'1001', N'F410E666500104E0', N'ZD2016040', null, N'2016-12-20 10:17:57.240', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'73', N'1001', N'55765A9F000104E0', N'ZD2016024', null, N'2016-12-20 10:18:05.087', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'74', N'1001', N'01825A9F000104E0', N'ZD2016035', null, N'2016-12-20 10:18:15.023', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'75', N'1001', N'36765A9F000104E0', N'ZD2016027', null, N'2016-12-20 10:18:29.557', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'76', N'1001', N'51515A9F000104E0', N'ZD2016026', null, N'2016-12-20 10:18:38.270', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'77', N'1001', N'67765A9F000104E0', N'ZD2016008', null, N'2016-12-20 10:18:45.833', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'78', N'1001', N'24765A9F000104E0', N'ZD2016045', null, N'2016-12-20 10:18:55.193', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'79', N'1001', N'558C7636500104E0', N'ZD2016010', null, N'2016-12-20 10:19:05.337', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'80', N'1001', N'29515A9F000104E0', N'ZD2016004', null, N'2016-12-20 10:19:13.650', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'81', N'1001', N'15735A9F000104E0', N'ZD2016032', null, N'2016-12-20 10:19:22.603', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'82', N'1001', N'605A5A9F000104E0', N'ZD2016033', null, N'2016-12-20 10:19:31.760', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'83', N'1001', N'B95A5A9F000104E0', N'ZD2016049', null, N'2016-12-20 10:19:40.637', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'84', N'1001', N'7014E666500104E0', N'ZD2016050', null, N'2016-12-20 10:19:52.323', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'85', N'1001', N'CF615A9F000104E0', N'ZD2016057', null, N'2016-12-20 10:20:07.970', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'86', N'1001', N'0E765A9F000104E0', N'ZD2016002', null, N'2016-12-20 10:20:29.490', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'87', N'1001', N'A1595A9F000104E0', N'ZD2016054', null, N'2016-12-20 10:20:39.557', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'88', N'1001', N'02825A9F000104E0', N'ZD2016046', null, N'2016-12-20 10:20:46.937', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'89', N'1001', N'1D9BF936500104E0', N'ZD2016023', null, N'2016-12-20 10:21:24.550', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'90', N'1001', N'799BF936500104E0', N'ZD2016001', null, N'2016-12-20 10:21:53.563', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'91', N'1001', N'37535A9F000104E0', N'ZD2016016', null, N'2016-12-20 10:22:04.240', N'0', null)
GO
GO
INSERT INTO [dbo].[L_TagInit] ([ID], [PatronCode], [TagTid], [BookBarcode], [Type], [CreateDate], [CreateBy], [Remark]) VALUES (N'92', N'1001', N'4F827636500104E0', N'ZD2016021', null, N'2016-12-20 10:22:22.097', N'0', null)
GO
GO
SET IDENTITY_INSERT [dbo].[L_TagInit] OFF
GO

-- ----------------------------
-- Table structure for R_PositionRole
-- ----------------------------
DROP TABLE [dbo].[R_PositionRole]
GO
CREATE TABLE [dbo].[R_PositionRole] (
[ID] int NOT NULL IDENTITY(1,1) ,
[PositionId] int NOT NULL ,
[RoleId] int NOT NULL ,
[CreateDate] datetime NOT NULL ,
[CreateBy] datetime NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_PositionRole', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_PositionRole', 
'COLUMN', N'PositionId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'职位表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'PositionId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'职位表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'PositionId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_PositionRole', 
'COLUMN', N'RoleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'RoleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'RoleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_PositionRole', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_PositionRole', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_PositionRole'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO

-- ----------------------------
-- Records of R_PositionRole
-- ----------------------------
SET IDENTITY_INSERT [dbo].[R_PositionRole] ON
GO
SET IDENTITY_INSERT [dbo].[R_PositionRole] OFF
GO

-- ----------------------------
-- Table structure for R_RoleFunction
-- ----------------------------
DROP TABLE [dbo].[R_RoleFunction]
GO
CREATE TABLE [dbo].[R_RoleFunction] (
[ID] int NOT NULL IDENTITY(1,1) ,
[RoleId] int NOT NULL ,
[FunctionId] int NOT NULL ,
[CreateDate] datetime NOT NULL ,
[CreateBy] datetime NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_RoleFunction', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_RoleFunction', 
'COLUMN', N'RoleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'RoleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'RoleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_RoleFunction', 
'COLUMN', N'FunctionId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'职位表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'FunctionId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'职位表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'FunctionId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_RoleFunction', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_RoleFunction', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_RoleFunction'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO

-- ----------------------------
-- Records of R_RoleFunction
-- ----------------------------
SET IDENTITY_INSERT [dbo].[R_RoleFunction] ON
GO
SET IDENTITY_INSERT [dbo].[R_RoleFunction] OFF
GO

-- ----------------------------
-- Table structure for R_UserPosition
-- ----------------------------
DROP TABLE [dbo].[R_UserPosition]
GO
CREATE TABLE [dbo].[R_UserPosition] (
[ID] int NOT NULL IDENTITY(1,1) ,
[UserId] int NOT NULL ,
[PositionId] int NOT NULL ,
[CreateDate] datetime NOT NULL ,
[CreateBy] datetime NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_UserPosition', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_UserPosition', 
'COLUMN', N'UserId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'UserId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'UserId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_UserPosition', 
'COLUMN', N'PositionId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'职位表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'PositionId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'职位表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'PositionId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_UserPosition', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'R_UserPosition', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'R_UserPosition'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO

-- ----------------------------
-- Records of R_UserPosition
-- ----------------------------
SET IDENTITY_INSERT [dbo].[R_UserPosition] ON
GO
SET IDENTITY_INSERT [dbo].[R_UserPosition] OFF
GO

-- ----------------------------
-- Table structure for T_AcsParam
-- ----------------------------
DROP TABLE [dbo].[T_AcsParam]
GO
CREATE TABLE [dbo].[T_AcsParam] (
[id] int NOT NULL IDENTITY(1,1) ,
[Param] varchar(MAX) NOT NULL ,
[LoginId] varchar(30) NULL ,
[LoginPwd] varchar(30) NULL ,
[LoginCode] varchar(30) NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_AcsParam]', RESEED, 3)
GO

-- ----------------------------
-- Records of T_AcsParam
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_AcsParam] ON
GO
INSERT INTO [dbo].[T_AcsParam] ([id], [Param], [LoginId], [LoginPwd], [LoginCode], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'3', N'0001000000FFFFFFFF01000000000000000C020000003A5369702C2056657273696F6E3D312E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C0C030000003C4D6F64656C2C2056657273696F6E3D312E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C0C040000003F44617465626173652C2056657273696F6E3D312E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C0501000000105369702E5369702E536970506172616D0900000004747970650772657154797065077265735479706506656E64537472066E6565644179066E656564417A02697004706F7274076462506172616D040404040000010004124D6F64656C2E456E756D2E4163735479706503000000194D6F64656C2E456E756D2E5369705265717565737454797065030000001A4D6F64656C2E456E756D2E536970526573706F6E73655479706503000000144D6F64656C2E456E756D2E536970456E64537472030000000101081F44617465626173652E44617465626173652E4461746562617365506172616D0400000002000000090500000009060000000907000000090800000000010A0000000009090000000505000000124D6F64656C2E456E756D2E41637354797065170000000269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B0F44696374696F6E6172792B636F64651144696374696F6E6172792B706172656E741344696374696F6E6172792B6C616E67756167651044696374696F6E6172792B76616C75651144696374696F6E6172792B7374617475730D44696374696F6E6172792B69641544696374696F6E6172792B637265617465446174651544696374696F6E6172792B757064617465446174651344696374696F6E6172792B63726561746542791344696374696F6E6172792B75706461746542791144696374696F6E6172792B72656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B0000000404010104040104000000040401000000040401080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000144D6F64656C2E44696374696F6E6172795479706503000000104D6F64656C2E44696374696F6E61727903000000104D6F64656C2E44696374696F6E61727903000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E55736572030000000300000000000000000000000000000000000000000000000A0A0A060A0000000431303032090B0000000A060C0000000844617465626173650A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A0506000000194D6F64656C2E456E756D2E5369705265717565737454797065170000000269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B0F44696374696F6E6172792B636F64651144696374696F6E6172792B706172656E741344696374696F6E6172792B6C616E67756167651044696374696F6E6172792B76616C75651144696374696F6E6172792B7374617475730D44696374696F6E6172792B69641544696374696F6E6172792B637265617465446174651544696374696F6E6172792B757064617465446174651344696374696F6E6172792B63726561746542791344696374696F6E6172792B75706461746542791144696374696F6E6172792B72656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B0000000404010104040104000000040401000000040401080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000144D6F64656C2E44696374696F6E6172795479706503000000104D6F64656C2E44696374696F6E61727903000000104D6F64656C2E44696374696F6E61727903000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E55736572030000000300000000000000000000000000000000000000000000000A0A0A060D0000000431303031090E0000000A060F0000000CE9BB98E8AEA4E8AFB7E6B1820A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A05070000001A4D6F64656C2E456E756D2E536970526573706F6E736554797065170000000269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B0F44696374696F6E6172792B636F64651144696374696F6E6172792B706172656E741344696374696F6E6172792B6C616E67756167651044696374696F6E6172792B76616C75651144696374696F6E6172792B7374617475730D44696374696F6E6172792B69641544696374696F6E6172792B637265617465446174651544696374696F6E6172792B757064617465446174651344696374696F6E6172792B63726561746542791344696374696F6E6172792B75706461746542791144696374696F6E6172792B72656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B0000000404010104040104000000040401000000040401080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000144D6F64656C2E44696374696F6E6172795479706503000000104D6F64656C2E44696374696F6E61727903000000104D6F64656C2E44696374696F6E61727903000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E55736572030000000300000000000000000000000000000000000000000000000A0A0A090D00000009110000000A061200000006E5A699E6809D0A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A0508000000144D6F64656C2E456E756D2E536970456E64537472170000000269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B0F44696374696F6E6172792B636F64651144696374696F6E6172792B706172656E741344696374696F6E6172792B6C616E67756167651044696374696F6E6172792B76616C75651144696374696F6E6172792B7374617475730D44696374696F6E6172792B69641544696374696F6E6172792B637265617465446174651544696374696F6E6172792B757064617465446174651344696374696F6E6172792B63726561746542791344696374696F6E6172792B75706461746542791144696374696F6E6172792B72656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B0000000404010104040104000000040401000000040401080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000144D6F64656C2E44696374696F6E6172795479706503000000104D6F64656C2E44696374696F6E61727903000000104D6F64656C2E44696374696F6E61727903000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E55736572030000000300000000000000000000000000000000000000000000000A0A0A090D00000009140000000A06150000000A52E7BB93E69D9FE7ACA60A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A05090000001F44617465626173652E44617465626173652E4461746562617365506172616D0500000004747970650269700664624E616D65076C6F67696E4964086C6F67696E50776404010101011844617465626173652E44617465626173652E446254797065040000000400000005EAFFFFFF1844617465626173652E44617465626173652E446254797065010000000776616C75655F5F000804000000EA03000006170000000F3139322E3136382E3130302E3231320618000000084C69624D616E44620619000000027361061A0000000731323340616263050B000000144D6F64656C2E44696374696F6E617279547970650F00000004636F64650576616C7565067374617475730269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B010104000000040401000000040401104D6F64656C2E44696374696F6E61727903000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E5573657203000000080D0D0A4D6F64656C2E55736572030000000A4D6F64656C2E557365720300000003000000061B00000004313031340A0A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A010E0000000B000000061C00000004313031330A0A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A01110000000B000000061D00000004313032320A0A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A01140000000B000000061E00000004313031320A0A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A0B00000000000000000000000000000000000000000000000000', null, null, null, N'2016-12-20 09:26:16.370', N'2016-12-20 09:26:16.370', N'0', N'0', null)
GO
GO
SET IDENTITY_INSERT [dbo].[T_AcsParam] OFF
GO

-- ----------------------------
-- Table structure for T_Book
-- ----------------------------
DROP TABLE [dbo].[T_Book]
GO
CREATE TABLE [dbo].[T_Book] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Barcode] varchar(30) NOT NULL ,
[Tid] varchar(30) NULL ,
[Name] varchar(60) NOT NULL ,
[CallCode] varchar(30) NOT NULL ,
[Author] varchar(60) NULL ,
[Publisher] varchar(30) NULL ,
[Isbn] varchar(15) NULL ,
[Size] char(4) NULL ,
[Page] int NULL ,
[Status] char(4) NOT NULL ,
[Price] float(53) NULL ,
[HoldPatron] varchar(30) NULL ,
[RoomCode] char(4) NULL ,
[LocationCode] char(6) NULL ,
[CurrentLocation] varchar(20) NULL ,
[Duedate] datetime NULL ,
[CreateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[UpdateBy] int NOT NULL ,
[LastLocationTime] datetime NULL ,
[Remark] varchar(60) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Book]', RESEED, 56)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Barcode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'条形码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Barcode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'条形码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Barcode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Tid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标签TID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Tid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标签TID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Tid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'书名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'书名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'CallCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'索书号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'CallCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'索书号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'CallCode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Author')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Author'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Author'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Publisher')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出版社'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Publisher'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出版社'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Publisher'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Isbn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ISBN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Isbn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISBN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Isbn'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Size')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'尺寸 在Dictionary中， 4开 8开 16开等'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Size'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'尺寸 在Dictionary中， 4开 8开 16开等'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Size'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Page')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Page'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Page'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态 在馆、出借'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态 在馆、出借'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'码洋'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'码洋'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'HoldPatron')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'预约者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'HoldPatron'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'预约者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'HoldPatron'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'RoomCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'定位房间代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'RoomCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'定位房间代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'RoomCode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'LocationCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'位置代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'LocationCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'位置代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'LocationCode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'CurrentLocation')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'临时位置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'CurrentLocation'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'临时位置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'CurrentLocation'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'Duedate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'限还日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Duedate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'限还日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'Duedate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Book', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Book'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO

-- ----------------------------
-- Records of T_Book
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Book] ON
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'22', N'ZD2016014', N'0F535A9F000104E0', N'江泽民文选.第二卷', N'D', N'吴孟栓 罗庆东', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:13:26.840', N'0', N'2016-12-20 10:13:26.840', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'23', N'ZD2016013', N'E8525A9F000104E0', N'江泽民文选.第一卷', N'D2', N'孙国栋', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:13:55.923', N'0', N'2016-12-20 10:13:55.923', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'24', N'ZD2016051', N'7E595A9F000104E0', N'闵行区干部工作研究（一）', N'D', N'刘强', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:14:24.140', N'0', N'2016-12-20 10:14:24.140', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'25', N'ZD2016044', N'5D735A9F000104E0', N'2016全国职称英语等级考试用书（理工类）', N'H31', N'马原', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:14:37.573', N'0', N'2016-12-20 10:14:37.573', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'26', N'ZD2016041', N'D810E666500104E0', N'军魂在闵行', N'K820.521', N'马原', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:14:51.943', N'0', N'2016-12-20 10:14:51.943', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'27', N'ZD2016040', N'F410E666500104E0', N'唐', N'K.1103', N'陈兴良', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:17:57.240', N'0', N'2016-12-20 10:17:57.240', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'28', N'ZD2016024', N'55765A9F000104E0', N'重启改革议程', N'F121', N'周其华', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:18:05.087', N'0', N'2016-12-20 10:18:05.087', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'29', N'ZD2016035', N'01825A9F000104E0', N'2016全国职称英语等级考试历年真题及全真模拟试卷（理工类）', N'H31', N'周光权', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:18:15.023', N'0', N'2016-12-20 10:18:15.023', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'30', N'ZD2016027', N'36765A9F000104E0', N'环球科学2010·12', N'Z', N'刘华', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:18:29.557', N'0', N'2016-12-20 10:18:29.557', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'31', N'ZD2016026', N'51515A9F000104E0', N'建设工程安全生产管理', N'T', N'李东方', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:18:38.267', N'0', N'2016-12-20 10:18:38.267', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'32', N'ZD2016008', N'67765A9F000104E0', N'2016全国职称英语等级考试历年真题及全真模拟试卷', N'H31', N'郑少华', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:18:45.833', N'0', N'2016-12-20 10:18:45.833', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'33', N'ZD2016045', N'24765A9F000104E0', N'2016全国职称英语等级考试用书（综合类）', N'H31', N'马原', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:18:55.193', N'0', N'2016-12-20 10:18:55.193', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'34', N'ZD2016010', N'558C7636500104E0', N'信息系统项目管理师考试全程指导', N'G202', N'邢志人', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:19:05.333', N'0', N'2016-12-20 10:19:05.333', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'35', N'ZD2016004', N'29515A9F000104E0', N'建设工程安全生产法律法规', N'T', N'柴建国', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:19:13.647', N'0', N'2016-12-20 10:19:13.647', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'36', N'ZD2016033', N'605A5A9F000104E0', N'清华管理评论2011·4', N'Z', N'梁慧星 陈华彬', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:19:31.760', N'0', N'2016-12-20 10:19:31.760', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'37', N'ZD2016049', N'B95A5A9F000104E0', N'自主创新 服务世博', N'N', N'张明楷', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:19:40.637', N'0', N'2016-12-20 10:19:40.637', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'38', N'ZD2016050', N'7014E666500104E0', N'“十一五”闵行民生发展报告', N'D', N'魏东', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:19:52.320', N'0', N'2016-12-20 10:19:52.320', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'39', N'ZD2016057', N'CF615A9F000104E0', N'计算机操作员,', N'TP3', N'张智辉', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:20:07.967', N'0', N'2016-12-20 10:20:07.967', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'40', N'ZD2016002', N'0E765A9F000104E0', N'诚信善待宽容', N'B', N'吕来明', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:20:29.490', N'0', N'2016-12-20 10:20:29.490', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'41', N'ZD2016054', N'A1595A9F000104E0', N'遵义投资导航', N'Z', N'徐卉', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:20:39.553', N'0', N'2016-12-20 10:20:39.553', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'42', N'ZD2016046', N'02825A9F000104E0', N'失衡', N'D668', N'唐德华 高圣平', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:20:46.937', N'0', N'2016-12-20 10:20:46.937', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'43', N'ZD2016023', N'1D9BF936500104E0', N'变革中国', N'F12', N'', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:21:24.547', N'0', N'2016-12-20 10:21:24.547', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'44', N'ZD2016001', N'799BF936500104E0', N'开一家自己的个性店', N'F715', N'陈兴良', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:21:53.563', N'0', N'2016-12-20 10:21:53.563', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'45', N'ZD2016016', N'37535A9F000104E0', N'江泽民文选.第三卷', N'A', N'吴合振', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:22:04.240', N'0', N'2016-12-20 10:22:04.240', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'46', N'ZD2016021', N'4F827636500104E0', N'善变知识为资本', N'F062.3', N'王宗非', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-20 10:22:22.097', N'0', N'2016-12-20 10:22:22.097', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'14', N'ZD2016006', N'C2815A9F000104E0', N'2016全国职称英语等级考试词汇重点突破', N'H313', N'万鄂湘', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:23:45.367', N'0', N'2016-12-16 16:23:45.367', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'15', N'ZD2016003', N'D610E666500104E0', N'FoxPro2.0入门', N'TP312BA', N'中国人民大学民商事法律科学研究中心', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:23:58.503', N'0', N'2016-12-16 16:23:58.503', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'16', N'ZD2016042', N'08535A9F000104E0', N'中国计算机用户1994·3', N'Z', N'于志刚', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:24:09.723', N'0', N'2016-12-16 16:24:09.723', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'17', N'ZD2016037', N'E7625A9F000104E0', N'汽车维修涂装工（中级）', N'U472.4', N'马原', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:24:26.693', N'0', N'2016-12-16 16:24:26.693', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'18', N'ZD2016022', N'CD525A9F000104E0', N'计算机安装调试维修员,', N'TP36', N'赵秀文', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:24:40.830', N'0', N'2016-12-16 16:24:40.830', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'19', N'ZD2016025', N'77515A9F000104E0', N'建设工程法规及相关知识', N'D922.297.4', N'沈德咏', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:24:56.880', N'0', N'2016-12-16 16:24:56.880', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'20', N'ZD2016032', N'15735A9F000104E0', N'凝练世博科技引领科学发展', N'N11', N'马原', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:25:06.960', N'0', N'2016-12-20 10:19:22.603', N'0', null, null)
GO
GO
INSERT INTO [dbo].[T_Book] ([Id], [Barcode], [Tid], [Name], [CallCode], [Author], [Publisher], [Isbn], [Size], [Page], [Status], [Price], [HoldPatron], [RoomCode], [LocationCode], [CurrentLocation], [Duedate], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [LastLocationTime], [Remark]) VALUES (N'21', N'ZD2016005', N'CB625A9F000104E0', N'道路客货运输驾驶员从业资格考试大纲及考试题库', N'U471.3-41', N'吴合振', null, null, null, null, N'1001', null, null, null, null, null, null, N'2016-12-16 16:25:18.240', N'0', N'2016-12-16 16:25:18.240', N'0', null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[T_Book] OFF
GO

-- ----------------------------
-- Table structure for T_BookBatch
-- ----------------------------
DROP TABLE [dbo].[T_BookBatch]
GO
CREATE TABLE [dbo].[T_BookBatch] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Code] varchar(30) NOT NULL ,
[SupplierId] int NOT NULL ,
[Status] char(4) NOT NULL ,
[Price] float(53) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'Code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'批次号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'批次号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'SupplierId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'SupplierId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'SupplierId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态 1005'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态 1005'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'Price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'码洋'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'码洋'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'UpdateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'UpdateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookBatch', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookBatch'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of T_BookBatch
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_BookBatch] ON
GO
SET IDENTITY_INSERT [dbo].[T_BookBatch] OFF
GO

-- ----------------------------
-- Table structure for T_BookPackage
-- ----------------------------
DROP TABLE [dbo].[T_BookPackage]
GO
CREATE TABLE [dbo].[T_BookPackage] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Code] varchar(30) NOT NULL ,
[BatchId] int NOT NULL ,
[Status] char(40) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'Code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'包号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'Code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'包号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'Code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'BatchId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'批次表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'BatchId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'批次表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'BatchId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'包状态 1005'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'包状态 1005'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'UpdateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'UpdateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_BookPackage', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_BookPackage'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of T_BookPackage
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_BookPackage] ON
GO
SET IDENTITY_INSERT [dbo].[T_BookPackage] OFF
GO

-- ----------------------------
-- Table structure for T_Dictionary
-- ----------------------------
DROP TABLE [dbo].[T_Dictionary]
GO
CREATE TABLE [dbo].[T_Dictionary] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Code] char(4) NOT NULL ,
[ParentCode] char(4) NOT NULL ,
[LanguageCode] char(4) NOT NULL ,
[Value] varchar(30) NOT NULL ,
[Status] char(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Dictionary]', RESEED, 2)
GO

-- ----------------------------
-- Records of T_Dictionary
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Dictionary] ON
GO
INSERT INTO [dbo].[T_Dictionary] ([ID], [Code], [ParentCode], [LanguageCode], [Value], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'1', N'1004', N'1010', N'1001', N'重复加工', N'1001', N'2016-01-01 00:00:00.000', N'2016-01-01 00:00:00.000', N'0', N'0', N'重复加工')
GO
GO
INSERT INTO [dbo].[T_Dictionary] ([ID], [Code], [ParentCode], [LanguageCode], [Value], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'2', N'1004', N'1010', N'1002', N'重复加工', N'1001', N'2016-01-01 00:00:00.000', N'2016-01-01 00:00:00.000', N'0', N'0', N'重复加工')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Dictionary] OFF
GO

-- ----------------------------
-- Table structure for T_DictionaryType
-- ----------------------------
DROP TABLE [dbo].[T_DictionaryType]
GO
CREATE TABLE [dbo].[T_DictionaryType] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Code] char(4) NOT NULL ,
[Value] varchar(30) NOT NULL ,
[Status] char(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'Code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'Value')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Value'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Value'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态 类型1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态 类型1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'UpdateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'UpdateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_DictionaryType', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_DictionaryType'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of T_DictionaryType
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_DictionaryType] ON
GO
SET IDENTITY_INSERT [dbo].[T_DictionaryType] OFF
GO

-- ----------------------------
-- Table structure for T_Function
-- ----------------------------
DROP TABLE [dbo].[T_Function]
GO
CREATE TABLE [dbo].[T_Function] (
[ID] int NOT NULL ,
[Code] varchar(30) NOT NULL ,
[Name] nvarchar(30) NOT NULL ,
[Status] char(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] nvarchar(60) NULL 
)


GO

-- ----------------------------
-- Records of T_Function
-- ----------------------------

-- ----------------------------
-- Table structure for T_MACHINE
-- ----------------------------
DROP TABLE [dbo].[T_MACHINE]
GO
CREATE TABLE [dbo].[T_MACHINE] (
[id] int NOT NULL IDENTITY(1,1) ,
[mac] varchar(12) NOT NULL ,
[cpu] varchar(16) NOT NULL ,
[name] varchar(30) NOT NULL ,
[type] varchar(4) NOT NULL ,
[regCode] varchar(120) NULL ,
[regTime] datetime NULL ,
[createdate] datetime NOT NULL ,
[updatedate] datetime NOT NULL ,
[createby] int NOT NULL ,
[updateby] int NOT NULL ,
[remark] varchar(60) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_MACHINE]', RESEED, 21)
GO

-- ----------------------------
-- Records of T_MACHINE
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_MACHINE] ON
GO
INSERT INTO [dbo].[T_MACHINE] ([id], [mac], [cpu], [name], [type], [regCode], [regTime], [createdate], [updatedate], [createby], [updateby], [remark]) VALUES (N'18', N'74C63BDD83BF', N'BFEBFBFF000206A7', N'zdyfb2-PC', N'1001', N'8490A4842A6903783108621A7B00', N'2016-12-20 09:12:10.000', N'2016-12-20 00:00:00.000', N'2016-12-20 00:00:00.000', N'1', N'1', N'试作间自助借书机')
GO
GO
INSERT INTO [dbo].[T_MACHINE] ([id], [mac], [cpu], [name], [type], [regCode], [regTime], [createdate], [updatedate], [createby], [updateby], [remark]) VALUES (N'21', N'74C63BDD877E', N'BFEBFBFF000206A7', N'zdyfb3-PC', N'1001', N'96410821282B3171721B494209693', N'2016-12-20 10:30:19.000', N'2016-12-20 10:30:25.000', N'2016-12-20 10:30:28.000', N'1', N'1', N'试作间自主还书机')
GO
GO
SET IDENTITY_INSERT [dbo].[T_MACHINE] OFF
GO

-- ----------------------------
-- Table structure for T_MachineParam
-- ----------------------------
DROP TABLE [dbo].[T_MachineParam]
GO
CREATE TABLE [dbo].[T_MachineParam] (
[id] int NOT NULL IDENTITY(1,1) ,
[MachineId] int NOT NULL ,
[Param] varchar(MAX) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_MachineParam]', RESEED, 14)
GO

-- ----------------------------
-- Records of T_MachineParam
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_MachineParam] ON
GO
INSERT INTO [dbo].[T_MachineParam] ([id], [MachineId], [Param], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'12', N'18', N'0001000000FFFFFFFF01000000000000000C020000003C4D6F64656C2C2056657273696F6E3D312E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C05010000001C4D6F64656C2E436865636B696E6F75744D616368696E65506172616D190000000968617264506172616D0C6E65656450617373776F726414616C6C6F77436865636B696E4C6F636174696F6E12616C6C6F77436865636B696E43616C6C496414616C6C6F77486F6C644974656D436865636B696E0269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B144D616368696E65506172616D2B6D616368696E65144D616368696E65506172616D2B6C6973744D73670F4D616368696E65506172616D2B6964174D616368696E65506172616D2B63726561746544617465174D616368696E65506172616D2B75706461746544617465154D616368696E65506172616D2B6372656174654279154D616368696E65506172616D2B7570646174654279134D616368696E65506172616D2B72656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B030003030000000004040104030000000404010000000404017F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D017F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D7F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D01080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E55736572020000000D4D6F64656C2E4D616368696E65020000007053797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B4D6F64656C2E4D6573736167652C204D6F64656C2C2056657273696F6E3D312E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C5D5D080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E5573657202000000080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E557365720200000002000000090300000000090400000009050000000100000000000000000000000000000000000000000A0A0A09060000000A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A04030000007F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D03000000065F6974656D73055F73697A65085F76657273696F6E060000080809070000000100000001000000010400000003000000090800000001000000000000000105000000030000000909000000010000000000000005060000000D4D6F64656C2E4D616368696E651100000003637075036D61630B6D616368696E654E616D650B6D616368696E65547970650772656754696D650269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B0101010400000000040401000000040401164D6F64656C2E456E756D2E4D616368696E6554797065020000000D080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E5573657202000000080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E5573657202000000020000000A0A0A0A000000000000000012000000000000000000000000000000000000000A0A0A12000000000000000000000000000000000000000A0A0A110700000004000000060A000000804030303031303030303030464646464646464630313030303030303030303030303030304330323030303030303435343236463646364234333631373236343532363536313634363537323243323035363635373237333639364636453344333132453330324533303245333032433230343337353643373437353732363533443645363537353734373236313643324332303530373536323643363936333442363537393534364636423635364533443645373536433643304330333030303030303343344436463634363536433243323035363635373237333639364636453344333132453330324533303245333032433230343337353643373437353732363533443645363537353734373236313643324332303530373536323643363936333442363537393534364636423635364533443645373536433643303530313030303030303331343236463646364234333631373236343532363536313634363537323245343236463646364234333631373236343532363536313634363537323245343236463646364234333631373236343532363536313634363537323530363137323631364431443030303030303033363336463644303236393730303837333635363337353732363937343739304236313636363934343639373336313643363137323644303836313636363934313643363137323644304336333631373236343431364536313643373937333639373330343734373937303635304436453635363536343444363936453443363536453637373436383130363436353636363137353643373434443639364534433635364536373734363830443634363536363631373536433734343136343634353337343732303836313634363434393645363436353738303236393634304136333732363536313734363534343631373436353041373537303634363137343635343436313734363530383633373236353631373436353432373930383735373036343631373436353432373930363732363536443631373236423130343836313732363434333646373236353530363137323631364432423639363431383438363137323634343336463732363535303631373236313644324236333732363536313734363534343631373436353138343836313732363434333646373236353530363137323631364432423735373036343631373436353434363137343635313634383631373236343433364637323635353036313732363136443242363337323635363137343635343237393136343836313732363434333646373236353530363137323631364432423735373036343631373436353432373931343438363137323634343336463732363535303631373236313644324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030313034303130313034303430303030303130303030303030303034303430313030303030303034303430313030303030303034303430313038313634443646363436353643324534353645373536443245353336353633373537323639373437393537363137393033303030303030313834443646363436353643324534353645373536443245343336313732363434313645363136433739353437393730363530333030303030303144344436463634363536433245343536453735364432453432364636463642343336313732363435323635363136343635373235343739373036353033303030303030303130383038303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303230303030303030333030303030303041303930343030303030303036303530303030303030323330333130363036303030303030303234333435303930373030303030303039303830303030303030303038303030303030303630393030303030303031333030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413035303430303030303031363444364636343635364332453435364537353644324535333635363337353732363937343739353736313739313730303030303030323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304634343639363337343639364636453631373237393242363336463634363531313434363936333734363936463645363137323739324237303631373236353645373431333434363936333734363936463645363137323739324236433631364536373735363136373635313034343639363337343639364636453631373237393242373636313643373536353131343436393633373436393646364536313732373932423733373436313734373537333044343436393633373436393646364536313732373932423639363431353434363936333734363936463645363137323739324236333732363536313734363534343631373436353135343436393633373436393646364536313732373932423735373036343631373436353434363137343635313334343639363337343639364636453631373237393242363337323635363137343635343237393133343436393633373436393646364536313732373932423735373036343631373436353432373931313434363936333734363936463645363137323739324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030303030303430343031303130343034303130343030303030303034303430313030303030303034303430313038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303134344436463634363536433245343436393633373436393646364536313732373935343739373036353033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303330303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303630413030303030303034333133303330333130393042303030303030304130363043303030303030303934313436343945393938423245373942393730413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303530373030303030303138344436463634363536433245343536453735364432453433363137323634343136453631364337393534373937303635313730303030303030323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304634343639363337343639364636453631373237393242363336463634363531313434363936333734363936463645363137323739324237303631373236353645373431333434363936333734363936463645363137323739324236433631364536373735363136373635313034343639363337343639364636453631373237393242373636313643373536353131343436393633373436393646364536313732373932423733373436313734373537333044343436393633373436393646364536313732373932423639363431353434363936333734363936463645363137323739324236333732363536313734363534343631373436353135343436393633373436393646364536313732373932423735373036343631373436353434363137343635313334343639363337343639364636453631373237393242363337323635363137343635343237393133343436393633373436393646364536313732373932423735373036343631373436353432373931313434363936333734363936463645363137323739324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030303030303430343031303130343034303130343030303030303034303430313030303030303034303430313038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303134344436463634363536433245343436393633373436393646364536313732373935343739373036353033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303330303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303930413030303030303039304530303030303030413036304630303030303030393331333645384246394245353838423634313041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130353038303030303030314434443646363436353643324534353645373536443245343236463646364234333631373236343532363536313634363537323534373937303635313730303030303030323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304634343639363337343639364636453631373237393242363336463634363531313434363936333734363936463645363137323739324237303631373236353645373431333434363936333734363936463645363137323739324236433631364536373735363136373635313034343639363337343639364636453631373237393242373636313643373536353131343436393633373436393646364536313732373932423733373436313734373537333044343436393633373436393646364536313732373932423639363431353434363936333734363936463645363137323739324236333732363536313734363534343631373436353135343436393633373436393646364536313732373932423735373036343631373436353434363137343635313334343639363337343639364636453631373237393242363337323635363137343635343237393133343436393633373436393646364536313732373932423735373036343631373436353432373931313434363936333734363936463645363137323739324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030303030303430343031303130343034303130343030303030303034303430313030303030303034303430313038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303134344436463634363536433245343436393633373436393646364536313732373935343739373036353033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303330303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303930413030303030303039313130303030303030413036313230303030303030394538393041354534424641313532353233393041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130353042303030303030313434443646363436353643324534343639363337343639364636453631373237393534373937303635304630303030303030343633364636343635303537363631364337353635303637333734363137343735373330323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304434323631373336393633344436463634363536433242363936343135343236313733363936333444364636343635364332423633373236353631373436353434363137343635313534323631373336393633344436463634363536433242373537303634363137343635343436313734363531333432363137333639363334443646363436353643324236333732363536313734363534323739313334323631373336393633344436463634363536433242373537303634363137343635343237393131343236313733363936333444364636343635364332423732363536443631373236423031303130343030303030303034303430313030303030303034303430313130344436463634363536433245343436393633373436393646364536313732373930333030303030303038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303033303030303030303631333030303030303034333133303331333830413041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130313045303030303030304230303030303030363134303030303030303433313330333133353041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413031313130303030303030423030303030303036313530303030303030343331333033313336304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041304230303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300D03110800000001000000060B00000000110900000001000000060C000000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', N'2016-12-20 09:27:16.620', N'1', N'2016-12-20 09:27:16.620', N'1', null)
GO
GO
INSERT INTO [dbo].[T_MachineParam] ([id], [MachineId], [Param], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'14', N'21', N'0001000000FFFFFFFF01000000000000000C020000003C4D6F64656C2C2056657273696F6E3D312E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C05010000001C4D6F64656C2E436865636B696E6F75744D616368696E65506172616D190000000968617264506172616D0C6E65656450617373776F726414616C6C6F77436865636B696E4C6F636174696F6E12616C6C6F77436865636B696E43616C6C496414616C6C6F77486F6C644974656D436865636B696E0269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B144D616368696E65506172616D2B6D616368696E65144D616368696E65506172616D2B6C6973744D73670F4D616368696E65506172616D2B6964174D616368696E65506172616D2B63726561746544617465174D616368696E65506172616D2B75706461746544617465154D616368696E65506172616D2B6372656174654279154D616368696E65506172616D2B7570646174654279134D616368696E65506172616D2B72656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B030003030000000004040104030000000404010000000404017F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D017F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D7F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D01080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E55736572020000000D4D6F64656C2E4D616368696E65020000007053797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B4D6F64656C2E4D6573736167652C204D6F64656C2C2056657273696F6E3D312E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C5D5D080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E5573657202000000080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E557365720200000002000000090300000000090400000009050000000100000000000000000000000000000000000000000A0A0A09060000000A00000000000000000000000000000000000000000A0A0A00000000000000000000000000000000000000000A0A0A04030000007F53797374656D2E436F6C6C656374696F6E732E47656E657269632E4C69737460315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D03000000065F6974656D73055F73697A65085F76657273696F6E060000080809070000000100000001000000010400000003000000090800000001000000000000000105000000030000000909000000010000000000000005060000000D4D6F64656C2E4D616368696E651100000003637075036D61630B6D616368696E654E616D650B6D616368696E65547970650772656754696D650269640A637265617465446174650A757064617465446174650863726561746542790875706461746542790672656D61726B0D42617369634D6F64656C2B69641542617369634D6F64656C2B637265617465446174651542617369634D6F64656C2B757064617465446174651342617369634D6F64656C2B63726561746542791342617369634D6F64656C2B75706461746542791142617369634D6F64656C2B72656D61726B0101010400000000040401000000040401164D6F64656C2E456E756D2E4D616368696E6554797065020000000D080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E5573657202000000080D0D0A4D6F64656C2E55736572020000000A4D6F64656C2E5573657202000000020000000A0A0A0A000000000000000015000000000000000000000000000000000000000A0A0A15000000000000000000000000000000000000000A0A0A110700000004000000060A000000804030303031303030303030464646464646464630313030303030303030303030303030304330323030303030303435343236463646364234333631373236343532363536313634363537323243323035363635373237333639364636453344333132453330324533303245333032433230343337353643373437353732363533443645363537353734373236313643324332303530373536323643363936333442363537393534364636423635364533443645373536433643304330333030303030303343344436463634363536433243323035363635373237333639364636453344333132453330324533303245333032433230343337353643373437353732363533443645363537353734373236313643324332303530373536323643363936333442363537393534364636423635364533443645373536433643303530313030303030303331343236463646364234333631373236343532363536313634363537323245343236463646364234333631373236343532363536313634363537323245343236463646364234333631373236343532363536313634363537323530363137323631364431443030303030303033363336463644303236393730303837333635363337353732363937343739304236313636363934343639373336313643363137323644303836313636363934313643363137323644304336333631373236343431364536313643373937333639373330343734373937303635304436453635363536343444363936453443363536453637373436383130363436353636363137353643373434443639364534433635364536373734363830443634363536363631373536433734343136343634353337343732303836313634363434393645363436353738303236393634304136333732363536313734363534343631373436353041373537303634363137343635343436313734363530383633373236353631373436353432373930383735373036343631373436353432373930363732363536443631373236423130343836313732363434333646373236353530363137323631364432423639363431383438363137323634343336463732363535303631373236313644324236333732363536313734363534343631373436353138343836313732363434333646373236353530363137323631364432423735373036343631373436353434363137343635313634383631373236343433364637323635353036313732363136443242363337323635363137343635343237393136343836313732363434333646373236353530363137323631364432423735373036343631373436353432373931343438363137323634343336463732363535303631373236313644324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030313034303130313034303430303030303130303030303030303034303430313030303030303034303430313030303030303034303430313038313634443646363436353643324534353645373536443245353336353633373537323639373437393537363137393033303030303030313834443646363436353643324534353645373536443245343336313732363434313645363136433739353437393730363530333030303030303144344436463634363536433245343536453735364432453432364636463642343336313732363435323635363136343635373235343739373036353033303030303030303130383038303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303230303030303030343030303030303041303930343030303030303036303530303030303030323330333130363036303030303030303234333435303930373030303030303039303830303030303030303038303030303030303630393030303030303031333030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413035303430303030303031363444364636343635364332453435364537353644324535333635363337353732363937343739353736313739313730303030303030323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304634343639363337343639364636453631373237393242363336463634363531313434363936333734363936463645363137323739324237303631373236353645373431333434363936333734363936463645363137323739324236433631364536373735363136373635313034343639363337343639364636453631373237393242373636313643373536353131343436393633373436393646364536313732373932423733373436313734373537333044343436393633373436393646364536313732373932423639363431353434363936333734363936463645363137323739324236333732363536313734363534343631373436353135343436393633373436393646364536313732373932423735373036343631373436353434363137343635313334343639363337343639364636453631373237393242363337323635363137343635343237393133343436393633373436393646364536313732373932423735373036343631373436353432373931313434363936333734363936463645363137323739324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030303030303430343031303130343034303130343030303030303034303430313030303030303034303430313038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303134344436463634363536433245343436393633373436393646364536313732373935343739373036353033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303330303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303630413030303030303034333133303330333130393042303030303030304130363043303030303030303934313436343945393938423245373942393730413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303530373030303030303138344436463634363536433245343536453735364432453433363137323634343136453631364337393534373937303635313730303030303030323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304634343639363337343639364636453631373237393242363336463634363531313434363936333734363936463645363137323739324237303631373236353645373431333434363936333734363936463645363137323739324236433631364536373735363136373635313034343639363337343639364636453631373237393242373636313643373536353131343436393633373436393646364536313732373932423733373436313734373537333044343436393633373436393646364536313732373932423639363431353434363936333734363936463645363137323739324236333732363536313734363534343631373436353135343436393633373436393646364536313732373932423735373036343631373436353434363137343635313334343639363337343639364636453631373237393242363337323635363137343635343237393133343436393633373436393646364536313732373932423735373036343631373436353432373931313434363936333734363936463645363137323739324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030303030303430343031303130343034303130343030303030303034303430313030303030303034303430313038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303134344436463634363536433245343436393633373436393646364536313732373935343739373036353033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303330303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303930413030303030303039304530303030303030413036304630303030303030393331333645384246394245353838423634313041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130353038303030303030314434443646363436353643324534353645373536443245343236463646364234333631373236343532363536313634363537323534373937303635313730303030303030323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304634343639363337343639364636453631373237393242363336463634363531313434363936333734363936463645363137323739324237303631373236353645373431333434363936333734363936463645363137323739324236433631364536373735363136373635313034343639363337343639364636453631373237393242373636313643373536353131343436393633373436393646364536313732373932423733373436313734373537333044343436393633373436393646364536313732373932423639363431353434363936333734363936463645363137323739324236333732363536313734363534343631373436353135343436393633373436393646364536313732373932423735373036343631373436353434363137343635313334343639363337343639364636453631373237393242363337323635363137343635343237393133343436393633373436393646364536313732373932423735373036343631373436353432373931313434363936333734363936463645363137323739324237323635364436313732364230443432363137333639363334443646363436353643324236393634313534323631373336393633344436463634363536433242363337323635363137343635343436313734363531353432363137333639363334443646363436353643324237353730363436313734363534343631373436353133343236313733363936333444364636343635364332423633373236353631373436353432373931333432363137333639363334443646363436353643324237353730363436313734363534323739313134323631373336393633344436463634363536433242373236353644363137323642303030303030303430343031303130343034303130343030303030303034303430313030303030303034303430313038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303134344436463634363536433245343436393633373436393646364536313732373935343739373036353033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030313034443646363436353643324534343639363337343639364636453631373237393033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303830443044304134443646363436353643324535353733363537323033303030303030304134443646363436353643324535353733363537323033303030303030303330303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303930413030303030303039313130303030303030413036313230303030303030394538393041354534424641313532353233393041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130353042303030303030313434443646363436353643324534343639363337343639364636453631373237393534373937303635304630303030303030343633364636343635303537363631364337353635303637333734363137343735373330323639363430413633373236353631373436353434363137343635304137353730363436313734363534343631373436353038363337323635363137343635343237393038373537303634363137343635343237393036373236353644363137323642304434323631373336393633344436463634363536433242363936343135343236313733363936333444364636343635364332423633373236353631373436353434363137343635313534323631373336393633344436463634363536433242373537303634363137343635343436313734363531333432363137333639363334443646363436353643324236333732363536313734363534323739313334323631373336393633344436463634363536433242373537303634363137343635343237393131343236313733363936333444364636343635364332423732363536443631373236423031303130343030303030303034303430313030303030303034303430313130344436463634363536433245343436393633373436393646364536313732373930333030303030303038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303038304430443041344436463634363536433245353537333635373230333030303030303041344436463634363536433245353537333635373230333030303030303033303030303030303631333030303030303034333133303331333830413041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130313045303030303030304230303030303030363134303030303030303433313330333133353041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041303030303030303030303030303030303030303030303030303030303030303030303030303030303041304130413031313130303030303030423030303030303036313530303030303030343331333033313336304130413030303030303030303030303030303030303030303030303030303030303030303030303030303030413041304130303030303030303030303030303030303030303030303030303030303030303030303030303030304130413041304230303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300D03110800000001000000060B00000000110900000001000000060C000000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', N'2016-12-20 10:36:31.380', N'1', N'2016-12-20 10:36:31.380', N'1', null)
GO
GO
SET IDENTITY_INSERT [dbo].[T_MachineParam] OFF
GO

-- ----------------------------
-- Table structure for T_MachineStatus
-- ----------------------------
DROP TABLE [dbo].[T_MachineStatus]
GO
CREATE TABLE [dbo].[T_MachineStatus] (
[id] int NOT NULL IDENTITY(1,1) ,
[MachineId] int NOT NULL ,
[Status] varchar(88) NOT NULL ,
[ServiceCommand] varchar(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_MachineStatus]', RESEED, 2003)
GO

-- ----------------------------
-- Records of T_MachineStatus
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_MachineStatus] ON
GO
INSERT INTO [dbo].[T_MachineStatus] ([id], [MachineId], [Status], [ServiceCommand], [CreateDate], [UpdateDate]) VALUES (N'1003', N'21', N'10031003,', N'1001', N'2016-12-28 11:27:17.947', N'2017-01-18 15:39:23.253')
GO
GO
INSERT INTO [dbo].[T_MachineStatus] ([id], [MachineId], [Status], [ServiceCommand], [CreateDate], [UpdateDate]) VALUES (N'2003', N'18', N'10031002,', N'1001', N'2016-12-28 16:16:51.203', N'2017-01-18 17:43:36.190')
GO
GO
SET IDENTITY_INSERT [dbo].[T_MachineStatus] OFF
GO

-- ----------------------------
-- Table structure for T_Message
-- ----------------------------
DROP TABLE [dbo].[T_Message]
GO
CREATE TABLE [dbo].[T_Message] (
[id] int NOT NULL IDENTITY(1,1) ,
[code] varchar(4) NOT NULL ,
[language] varchar(4) NOT NULL ,
[value] varchar(50) NOT NULL ,
[remark] varchar(60) NULL ,
[createdate] datetime NOT NULL ,
[updatedate] datetime NOT NULL ,
[createby] int NOT NULL ,
[updateby] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Message]', RESEED, 58)
GO

-- ----------------------------
-- Records of T_Message
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Message] ON
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'1', N'1000', N'1001', N'数据库连接异常', N'数据库连接异常提示，修改无效', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'2', N'1000', N'1002', N'ENG数据库连接异常', N'数据库连接异常提示，修改无效', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'3', N'1002', N'1001', N'无法连接至服务器', N'自助借还-服务器连接失败的中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'4', N'1002', N'1002', N'无法连接至服务器', N'自助借还-服务器连接失败的英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'5', N'1001', N'1001', N'无法连接至读写器', N'自助借还-读写器连接失败的中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'6', N'1002', N'1002', N'Can not connect reader', N'自助借还-读写器连接失败的英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'7', N'1003', N'1001', N'欢迎使用智定科技自助借还系统', N'自助借还-中文欢迎语', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'8', N'1003', N'1002', N'Welcome to use ZD SmartLibrary System', N'自助借还-英文文欢迎语', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'9', N'1004', N'1001', N'该书被预约，请至服务台归还', N'自助借还-中文归还被预约图书时提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'10', N'1004', N'1002', N'Item is holded…..', N'自助借还-英文归还被预约图书时提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'11', N'1005', N'1001', N'请将书籍归还至{0}类图书归还处', N'自助借还-中文索书号不在此归还', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'12', N'1005', N'1002', N'ENG：请将书籍归还至{0}类图书归还出', N'自助借还-英文索书号不在此归还', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'13', N'1006', N'1001', N'请将书籍归还至{0}', N'自助借还-中文典藏位不在此归还', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'14', N'1006', N'1002', N'ENG：请将书籍归还至{0}', N'自助借还-英文典藏位不在此归还', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'15', N'1007', N'1001', N'还书成功', N'自助借还-中文还书成功提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'16', N'1007', N'1002', N'ENG还书成功', N'自助借还-英文还书成功提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'17', N'1008', N'1001', N'请输入密码', N'自助借还-中文请输入密码', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'18', N'1008', N'1002', N'ENG 请输入密码', N'自助借还-英文请输入密码', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'19', N'1009', N'1001', N'密码错误，请重新输入', N'自助借还-中文密码错误，请重新输入', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'20', N'1009', N'1002', N'ENG 密码错误，请重新输入', N'自助借还-英文密码错误，请重新输入', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'21', N'1010', N'1001', N'请选择需要续借的书籍', N'自助借还-中文续借提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'22', N'1010', N'1002', N'ENG 请选择需要续借的书籍', N'自助借还-英文续借提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'23', N'1011', N'1001', N'请放置需要借阅的图书', N'自助借还-中文借阅提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'24', N'1011', N'1002', N'ENG 请放置需要借阅的图书', N'自助借还-英文借阅提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'25', N'1012', N'1001', N'LMS借书成功', N'自助借还-中文图书馆管理系统借书成功', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'26', N'1012', N'1002', N'ENG LMS借书成功', N'自助借还-英文图书馆管理系统借书成功', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'27', N'1013', N'1001', N'借书成功', N'自助借还-中文借出和消磁都成功', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'28', N'1013', N'1002', N'ENG 借书成功', N'自助借还-英文借出和消磁都成功', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'29', N'1014', N'1001', N'该书被其他同学外借，请交由老师处理', N'自助借还-中文该书被其他同学外借，请交由老师处理', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'30', N'1014', N'1002', N'ENG 该书被其他同学外借，请交由老师处理', N'自助借还-英文该书被其他同学外借，请交由老师处理', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'31', N'1015', N'1001', N'续借成功123', N'自助借还-中文续借成功提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'32', N'1015', N'1002', N'ENG续借成功', N'自助借还-英文续借成功提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'33', N'1016', N'1001', N'参数异常', N'服务-参数异常-中文提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'34', N'1016', N'1002', N'ENG 参数异常', N'服务-参数异常-英文提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'35', N'1017', N'1001', N'设备未注册', N'服务-设备未注册-中文提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'36', N'1017', N'1002', N'Machine unregited', N'服务-设备未注册-英文提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'37', N'1018', N'1001', N'设备没有初始化参数', N'服务-设备没有初始化参数-中文提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'38', N'1018', N'1002', N'ENG设备没有初始化参数', N'服务-设备没有初始化参数-中文提醒', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'39', N'1019', N'1001', N'无法连接图书馆自助接口', N'服务-服务连接图书馆自助接口-中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'40', N'1019', N'1002', N'ENG无法连接图书馆自助接口', N'服务-服务连接图书馆自助接口-英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'41', N'1020', N'1001', N'续借完成', N'续借完成 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'42', N'1020', N'1002', N'ENG 续借完成', N'续借完成 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'43', N'1021', N'1001', N'请将需要归还的图书放置在面板上', N'还书开始 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'44', N'1021', N'1002', N'ENG请将需要归还的图书放置在面板上', N'还书开始 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'45', N'1022', N'1001', N'请放置您的借书卡', N'借书开始 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'46', N'1022', N'1002', N'ENG请放置您的借书卡', N'借书开始 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'47', N'1023', N'1001', N'请放置您的借书卡', N'续借开始 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'48', N'1023', N'1002', N'ENG请放置您的借书卡', N'续借开始 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'49', N'1024', N'1001', N'图书标签未注册', N'图书标签未注册 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'50', N'1024', N'1002', N'ENG图书标签未注册', N'图书标签未注册 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'51', N'1025', N'1001', N'图书标签已经注册', N'图书标签已经注册 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'55', N'1027', N'1001', N'用户名错误', N'手机系统登陆时 用户名错误 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'56', N'1027', N'1002', N'Login Id Error', N'手机系统登陆时 用户名错误 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'57', N'1028', N'1001', N'密码错误', N'手机系统登陆时 密码错误 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'58', N'1028', N'1002', N'Password Error', N'手机系统登陆时 密码错误 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'52', N'1025', N'1002', N'ENG 图书标签已经注册', N'图书标签已经注册 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'53', N'1026', N'1001', N'图书未典藏', N'图书未典藏 中文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Message] ([id], [code], [language], [value], [remark], [createdate], [updatedate], [createby], [updateby]) VALUES (N'54', N'1026', N'1002', N'ENG 图书未典藏', N'图书未典藏 英文提示', N'2016-11-17 00:00:00.000', N'2016-11-17 00:00:00.000', N'1', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Message] OFF
GO

-- ----------------------------
-- Table structure for T_Position
-- ----------------------------
DROP TABLE [dbo].[T_Position]
GO
CREATE TABLE [dbo].[T_Position] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Name] nvarchar(20) NOT NULL ,
[Status] char(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] nvarchar(60) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Position', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'职位名称 最长10个字符'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'职位名称 最长10个字符'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Position', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'启用、停用 T_Dictionary的Code， DictionaryType=1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'启用、停用 T_Dictionary的Code， DictionaryType=1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Position', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Position', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Position', 
'COLUMN', N'UpdateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Position', 
'COLUMN', N'UpdateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Position', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Position'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO

-- ----------------------------
-- Records of T_Position
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Position] ON
GO
SET IDENTITY_INSERT [dbo].[T_Position] OFF
GO

-- ----------------------------
-- Table structure for T_Role
-- ----------------------------
DROP TABLE [dbo].[T_Role]
GO
CREATE TABLE [dbo].[T_Role] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Name] nvarchar(20) NOT NULL ,
[Status] char(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] nvarchar(60) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Role', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Role', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限名称 最大长度10'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限名称 最大长度10'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Role', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'启用、停用 T_Dictionary的Code  Type=1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'启用、停用 T_Dictionary的Code  Type=1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Role', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Role', 
'COLUMN', N'UpdateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Role', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Role', 
'COLUMN', N'UpdateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
GO

-- ----------------------------
-- Records of T_Role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Role] ON
GO
SET IDENTITY_INSERT [dbo].[T_Role] OFF
GO

-- ----------------------------
-- Table structure for T_Supplier
-- ----------------------------
DROP TABLE [dbo].[T_Supplier]
GO
CREATE TABLE [dbo].[T_Supplier] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Name] varchar(30) NOT NULL ,
[Phone] varchar(15) NULL ,
[PersonName] varchar(15) NULL ,
[Address] varchar(120) NULL ,
[Status] char(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'Phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'联系电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'联系电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'PersonName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'联系人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'PersonName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'联系人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'PersonName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'Address')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'快递地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Address'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'快递地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Address'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'启用、停用 1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'启用、停用 1001'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'UpdateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Supplier', 
'COLUMN', N'UpdateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新者  用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Supplier'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
GO

-- ----------------------------
-- Records of T_Supplier
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Supplier] ON
GO
SET IDENTITY_INSERT [dbo].[T_Supplier] OFF
GO

-- ----------------------------
-- Table structure for T_Tag
-- ----------------------------
DROP TABLE [dbo].[T_Tag]
GO
CREATE TABLE [dbo].[T_Tag] (
[ID] int NOT NULL IDENTITY(1,1) ,
[BatchId] int NULL ,
[Type] char(4) NOT NULL ,
[Tid] varchar(24) NOT NULL ,
[Status] char(4) NOT NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Tag]', RESEED, 49)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'BatchId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TagBatch 的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'BatchId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TagBatch 的ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'BatchId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'Type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标签类型 TYPE1009'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'Type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标签类型 TYPE1009'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'Type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'Tid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'Tid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'Tid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标签状态  TYPE 1004'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标签状态  TYPE 1004'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'CreateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'CreateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'UpdateDate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'UpdateDate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'CreateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'CreateBy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_Tag', 
'COLUMN', N'UpdateBy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新者 用户表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_Tag'
, @level2type = 'COLUMN', @level2name = N'UpdateBy'
GO

-- ----------------------------
-- Records of T_Tag
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Tag] ON
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'16', null, N'1001', N'C2815A9F000104E0', N'1002', N'2016-12-16 16:23:45.367', N'2016-12-16 16:23:45.367', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'17', null, N'1001', N'D610E666500104E0', N'1002', N'2016-12-16 16:23:58.527', N'2016-12-16 16:23:58.527', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'18', null, N'1001', N'08535A9F000104E0', N'1002', N'2016-12-16 16:24:09.723', N'2016-12-16 16:24:09.723', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'19', null, N'1001', N'E7625A9F000104E0', N'1002', N'2016-12-16 16:24:26.693', N'2016-12-16 16:24:26.693', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'20', null, N'1001', N'CD525A9F000104E0', N'1002', N'2016-12-16 16:24:40.833', N'2016-12-16 16:24:40.833', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'21', null, N'1001', N'77515A9F000104E0', N'1002', N'2016-12-16 16:24:56.880', N'2016-12-16 16:24:56.880', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'22', null, N'1001', N'445A5A9F000104E0', N'1002', N'2016-12-16 16:25:06.960', N'2016-12-16 16:25:06.960', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'23', null, N'1001', N'CB625A9F000104E0', N'1002', N'2016-12-16 16:25:18.240', N'2016-12-16 16:25:18.240', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'24', null, N'1001', N'0F535A9F000104E0', N'1002', N'2016-12-20 10:13:26.847', N'2016-12-20 10:13:26.847', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'25', null, N'1001', N'E8525A9F000104E0', N'1002', N'2016-12-20 10:13:55.923', N'2016-12-20 10:13:55.923', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'26', null, N'1001', N'7E595A9F000104E0', N'1002', N'2016-12-20 10:14:24.140', N'2016-12-20 10:14:24.140', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'27', null, N'1001', N'5D735A9F000104E0', N'1002', N'2016-12-20 10:14:37.573', N'2016-12-20 10:14:37.573', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'28', null, N'1001', N'D810E666500104E0', N'1002', N'2016-12-20 10:14:51.943', N'2016-12-20 10:14:51.943', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'29', null, N'1001', N'F410E666500104E0', N'1002', N'2016-12-20 10:17:57.240', N'2016-12-20 10:17:57.240', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'30', null, N'1001', N'55765A9F000104E0', N'1002', N'2016-12-20 10:18:05.087', N'2016-12-20 10:18:05.087', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'31', null, N'1001', N'01825A9F000104E0', N'1002', N'2016-12-20 10:18:15.023', N'2016-12-20 10:18:15.023', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'32', null, N'1001', N'36765A9F000104E0', N'1002', N'2016-12-20 10:18:29.557', N'2016-12-20 10:18:29.557', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'33', null, N'1001', N'51515A9F000104E0', N'1002', N'2016-12-20 10:18:38.267', N'2016-12-20 10:18:38.267', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'34', null, N'1001', N'67765A9F000104E0', N'1002', N'2016-12-20 10:18:45.833', N'2016-12-20 10:18:45.833', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'35', null, N'1001', N'24765A9F000104E0', N'1002', N'2016-12-20 10:18:55.193', N'2016-12-20 10:18:55.193', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'36', null, N'1001', N'558C7636500104E0', N'1002', N'2016-12-20 10:19:05.333', N'2016-12-20 10:19:05.333', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'37', null, N'1001', N'29515A9F000104E0', N'1002', N'2016-12-20 10:19:13.650', N'2016-12-20 10:19:13.650', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'38', null, N'1001', N'15735A9F000104E0', N'1002', N'2016-12-20 10:19:22.603', N'2016-12-20 10:19:22.603', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'39', null, N'1001', N'605A5A9F000104E0', N'1002', N'2016-12-20 10:19:31.760', N'2016-12-20 10:19:31.760', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'40', null, N'1001', N'B95A5A9F000104E0', N'1002', N'2016-12-20 10:19:40.637', N'2016-12-20 10:19:40.637', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'41', null, N'1001', N'7014E666500104E0', N'1002', N'2016-12-20 10:19:52.320', N'2016-12-20 10:19:52.320', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'42', null, N'1001', N'CF615A9F000104E0', N'1002', N'2016-12-20 10:20:07.967', N'2016-12-20 10:20:07.967', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'43', null, N'1001', N'0E765A9F000104E0', N'1002', N'2016-12-20 10:20:29.490', N'2016-12-20 10:20:29.490', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'44', null, N'1001', N'A1595A9F000104E0', N'1002', N'2016-12-20 10:20:39.553', N'2016-12-20 10:20:39.553', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'45', null, N'1001', N'02825A9F000104E0', N'1002', N'2016-12-20 10:20:46.937', N'2016-12-20 10:20:46.937', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'46', null, N'1001', N'1D9BF936500104E0', N'1002', N'2016-12-20 10:21:24.550', N'2016-12-20 10:21:24.550', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'47', null, N'1001', N'799BF936500104E0', N'1002', N'2016-12-20 10:21:53.563', N'2016-12-20 10:21:53.563', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'48', null, N'1001', N'37535A9F000104E0', N'1002', N'2016-12-20 10:22:04.240', N'2016-12-20 10:22:04.240', N'0', N'0', N'注册时自动新增')
GO
GO
INSERT INTO [dbo].[T_Tag] ([ID], [BatchId], [Type], [Tid], [Status], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'49', null, N'1001', N'4F827636500104E0', N'1002', N'2016-12-20 10:22:22.097', N'2016-12-20 10:22:22.097', N'0', N'0', N'注册时自动新增')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Tag] OFF
GO

-- ----------------------------
-- Table structure for T_TagBatch
-- ----------------------------
DROP TABLE [dbo].[T_TagBatch]
GO
CREATE TABLE [dbo].[T_TagBatch] (
[ID] int NOT NULL IDENTITY(1,1) ,
[SupplierId] int NOT NULL ,
[Code] varchar(30) NOT NULL ,
[Status] char(4) NOT NULL ,
[Model] varchar(30) NULL ,
[Count] int NOT NULL ,
[PicturePath] varchar(120) NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_TagBatch', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_TagBatch', 
'COLUMN', N'SupplierId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'SupplierId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'SupplierId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_TagBatch', 
'COLUMN', N'Code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'批次号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'批次号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_TagBatch', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标签批次状态 类型1008'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标签批次状态 类型1008'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_TagBatch', 
'COLUMN', N'Model')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'型号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Model'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'型号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Model'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_TagBatch', 
'COLUMN', N'Count')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Count'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_TagBatch'
, @level2type = 'COLUMN', @level2name = N'Count'
GO

-- ----------------------------
-- Records of T_TagBatch
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_TagBatch] ON
GO
SET IDENTITY_INSERT [dbo].[T_TagBatch] OFF
GO

-- ----------------------------
-- Table structure for T_User
-- ----------------------------
DROP TABLE [dbo].[T_User]
GO
CREATE TABLE [dbo].[T_User] (
[id] int NOT NULL IDENTITY(1,1) ,
[CardCode] varchar(10) NULL ,
[PatronCode] varchar(20) NOT NULL ,
[Name] varchar(60) NOT NULL ,
[Sex] varchar(4) NULL ,
[Phone] varchar(15) NULL ,
[Email] varchar(30) NULL ,
[Address] varchar(120) NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_User]', RESEED, 26)
GO

-- ----------------------------
-- Records of T_User
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_User] ON
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'11', null, N'1005', N'张学友', null, null, null, null, N'2016-12-09 13:54:15.460', N'2016-12-09 13:54:15.460', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'12', null, N'1002', N'古天乐', null, null, null, null, N'2016-12-12 16:45:20.453', N'2016-12-12 16:45:20.453', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'13', null, N'1006', N'梁朝伟', null, null, null, null, N'2016-12-12 16:45:43.450', N'2016-12-12 16:45:43.450', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'14', null, N'8888', N'王士男', null, null, null, null, N'2016-12-20 12:11:18.227', N'2016-12-20 12:11:18.227', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'15', null, N'8878', N'娄丹', null, null, null, null, N'2016-12-20 12:12:40.803', N'2016-12-20 12:12:40.803', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'16', null, N'6687', N'樊丽', null, null, null, null, N'2016-12-20 12:14:35.193', N'2016-12-20 12:14:35.193', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'17', null, N'6614', N'杨灏翼', null, null, null, null, N'2016-12-20 12:16:55.983', N'2016-12-20 12:16:55.983', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'18', null, N'6656', N'孙丽培', null, null, null, null, N'2016-12-20 12:17:41.533', N'2016-12-20 12:17:41.533', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'19', null, N'6779', N'胡绍霞', null, null, null, null, N'2016-12-20 12:19:26.447', N'2016-12-20 12:19:26.447', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'20', null, N'9999', N'喻晨杰', null, null, null, null, N'2016-12-20 12:22:01.350', N'2016-12-20 12:22:01.350', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'21', null, N'6727', N'叶浩勇', null, null, null, null, N'2016-12-20 12:22:09.887', N'2016-12-20 12:22:09.887', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'22', null, N'6764', N'蒋宏涛', null, null, null, null, N'2016-12-20 12:33:47.297', N'2016-12-20 12:33:47.297', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'23', null, N'6710', N'陈志艳', null, null, null, null, N'2016-12-20 12:35:21.357', N'2016-12-20 12:35:21.357', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'24', null, N'6677', N'路见', null, null, null, null, N'2016-12-22 11:40:53.960', N'2016-12-22 11:40:53.960', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'25', null, N'6742', N'郭开明', null, null, null, null, N'2016-12-22 11:44:44.027', N'2016-12-22 11:44:44.027', N'0', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_User] ([id], [CardCode], [PatronCode], [Name], [Sex], [Phone], [Email], [Address], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Remark]) VALUES (N'26', null, N'8688', N'于锦锐', null, null, null, null, N'2017-01-07 11:22:21.553', N'2017-01-07 11:22:21.553', N'0', N'0', N'存储过程自动生成')
GO
GO
SET IDENTITY_INSERT [dbo].[T_User] OFF
GO

-- ----------------------------
-- Table structure for T_UserLibraryInfo
-- ----------------------------
DROP TABLE [dbo].[T_UserLibraryInfo]
GO
CREATE TABLE [dbo].[T_UserLibraryInfo] (
[id] int NOT NULL IDENTITY(1,1) ,
[UserId] int NOT NULL ,
[Password] varchar(60) NULL ,
[ChargedCount] int NOT NULL DEFAULT ((0)) ,
[ChargedLimit] int NOT NULL ,
[OverdueCount] int NOT NULL DEFAULT ((0)) ,
[OverdueLimit] int NOT NULL ,
[Fee] float(53) NOT NULL DEFAULT ((0)) ,
[FeeLimit] float(53) NOT NULL DEFAULT ((0)) ,
[CreateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_UserLibraryInfo]', RESEED, 27)
GO

-- ----------------------------
-- Records of T_UserLibraryInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_UserLibraryInfo] ON
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'5', N'4', N'123456ABCDE', N'10', N'10', N'10', N'5', N'5', N'5', N'2016-11-29 15:38:42.247', N'0', N'2016-11-29 15:43:49.263', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'6', N'5', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-09 11:29:43.670', N'0', N'2016-12-09 11:29:43.670', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'7', N'6', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-09 11:32:59.070', N'0', N'2016-12-09 11:32:59.070', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'8', N'7', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-09 11:34:25.873', N'0', N'2016-12-09 11:34:25.873', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'9', N'8', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-09 11:35:21.703', N'0', N'2016-12-09 13:25:39.257', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'10', N'9', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-09 13:26:45.353', N'0', N'2016-12-09 13:26:45.353', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'11', N'10', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-09 13:27:14.690', N'0', N'2016-12-09 13:27:14.690', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'12', N'11', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-09 13:54:15.460', N'0', N'2016-12-09 13:54:15.460', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'13', N'12', N'', N'18', N'100', N'0', N'0', N'0', N'0', N'2016-12-12 16:45:20.457', N'0', N'2016-12-20 11:04:45.220', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'14', N'13', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-12 16:45:43.450', N'0', N'2016-12-16 16:55:39.597', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'15', N'14', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:11:18.230', N'0', N'2016-12-20 12:11:18.230', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'16', N'15', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:12:40.803', N'0', N'2016-12-20 12:12:40.803', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'17', N'16', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:14:35.193', N'0', N'2016-12-20 12:14:35.193', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'18', N'17', N'', N'2', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:16:55.983', N'0', N'2016-12-20 12:17:02.417', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'19', N'18', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:17:41.533', N'0', N'2016-12-20 12:17:41.533', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'20', N'19', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:19:26.447', N'0', N'2016-12-20 12:19:26.447', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'21', N'20', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:22:01.350', N'0', N'2016-12-27 10:00:42.807', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'22', N'21', N'', N'3', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:22:09.887', N'0', N'2016-12-23 11:48:15.267', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'23', N'22', N'', N'3', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:33:47.297', N'0', N'2016-12-20 12:37:54.417', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'24', N'23', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-20 12:35:21.357', N'0', N'2016-12-20 12:35:21.357', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'25', N'24', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-22 11:40:53.960', N'0', N'2016-12-22 11:40:53.960', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'26', N'25', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2016-12-22 11:44:44.027', N'0', N'2016-12-22 11:44:44.027', N'0', N'存储过程自动生成')
GO
GO
INSERT INTO [dbo].[T_UserLibraryInfo] ([id], [UserId], [Password], [ChargedCount], [ChargedLimit], [OverdueCount], [OverdueLimit], [Fee], [FeeLimit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Remark]) VALUES (N'27', N'26', N'', N'1', N'3', N'0', N'0', N'0', N'0', N'2017-01-07 11:22:21.553', N'0', N'2017-01-07 11:22:58.530', N'0', N'存储过程自动生成')
GO
GO
SET IDENTITY_INSERT [dbo].[T_UserLibraryInfo] OFF
GO

-- ----------------------------
-- Table structure for T_WaitCheckBook
-- ----------------------------
DROP TABLE [dbo].[T_WaitCheckBook]
GO
CREATE TABLE [dbo].[T_WaitCheckBook] (
[ID] int NOT NULL IDENTITY(1,1) ,
[PackageId] int NOT NULL ,
[Barcode] varchar(30) NOT NULL ,
[Tid] varchar(30) NULL ,
[Size] varchar(10) NULL ,
[Publisher] varchar(30) NULL ,
[Page] int NULL ,
[ISBN] char(13) NULL ,
[Name] varchar(100) NULL ,
[Author] varchar(30) NULL ,
[CallId] varchar(20) NULL ,
[Status] char(4) NOT NULL ,
[FailReason] char(4) NULL ,
[CreateDate] datetime NOT NULL ,
[UpdateDate] datetime NOT NULL ,
[CreateBy] int NOT NULL ,
[UpdateBy] int NOT NULL ,
[Remark] varchar(60) NULL ,
[price] float(53) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_WaitCheckBook', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'自增长'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_WaitCheckBook', 
'COLUMN', N'PackageId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'包 ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'PackageId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'包 ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'PackageId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_WaitCheckBook', 
'COLUMN', N'Barcode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'条形码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'Barcode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'条形码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'Barcode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_WaitCheckBook', 
'COLUMN', N'Tid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'RFID 的TID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'Tid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'RFID 的TID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'Tid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_WaitCheckBook', 
'COLUMN', N'CallId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'索书号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'CallId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'索书号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'CallId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_WaitCheckBook', 
'COLUMN', N'Status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态  1005'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'Status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态  1005'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'Status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'T_WaitCheckBook', 
'COLUMN', N'FailReason')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'失败理由1011'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'FailReason'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'失败理由1011'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'T_WaitCheckBook'
, @level2type = 'COLUMN', @level2name = N'FailReason'
GO

-- ----------------------------
-- Records of T_WaitCheckBook
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_WaitCheckBook] ON
GO
SET IDENTITY_INSERT [dbo].[T_WaitCheckBook] OFF
GO

-- ----------------------------
-- Procedure structure for BookInit
-- ----------------------------
DROP PROCEDURE [dbo].[BookInit]
GO
CREATE proc [dbo].[BookInit] (@patronid int = 1,@patronCode varchar(30),@itemTid varchar(40),
@BookBarcode varchar(30),
@BookCallCode varchar(15)=NULL,@BookName varchar(60),
@Author varchar(60)=NULL,  @Status varchar(4))
	
	as

	if @patronid is null
	set @patronid=1

	UPDATE T_BOOK SET TID='' WHERE TID=@itemTid
	
	merge into t_book as t
	using (select @BookBarcode as barcode) as s
	on  t.barcode = s.barcode
	when matched 
	then  
	update set t.tid=@itemTid,t.callcode=@BookCallCode,t.name=@BookName,t.author=@Author,t.status=@Status,T.UPDATEDATE=GETDATE(),UPDATEBY=@PATRONID
	when not matched
	then insert  (barcode,tid,callcode ,name,status,author,createdate,createby,updatedate,updateby) 
	values(@BookBarcode,@itemTid,@BookCallCode,@BookName,@Status,@Author,getdate(),@patronid,getdate(),@patronid);

	merge into T_TAG as TT
	using (select @ITEMTID as TID) as ST
	on  TT.TID=ST.TID
	when matched 
	then  
	update set TT.STATUS = 1002,UPDATEDATE=GETDATE(),UPDATEBY=@PATRONID
	when not matched
	then insert  (Type,Tid,Status,CreateDate,Updatedate,createby,updateby,remark) 
	values('1001',@ItemTid,'1002',getdate(),getdate(),@patronid,@patronid,'注册时自动新增');

	insert into L_TagInit(patroncode,tagtid,bookbarcode,createdate,createby)values
	(@patroncode,@itemTid,@BookBarcode,getdate(),@patronid)

GO

-- ----------------------------
-- Procedure structure for InsertCirculationLog
-- ----------------------------
DROP PROCEDURE [dbo].[InsertCirculationLog]
GO
CREATE procedure [dbo].[InsertCirculationLog] (@MachineId int,@StaffId int=NULL ,@CirculationType varchar(4),@BookBarcode varchar(30),
@BookCallCode varchar(15),@BookName varchar(60),
@Author varchar(60)=NULL,@Status varchar(4),
@PatronCode varchar(30)=NULL,@PatronName varchar(60)=NULL,@Password varchar(60) = NULL,@ChargedCount int=0,@ChargedLimit int=0,@OverdueCount int=0,@OverdueLimit int = 0,@Fee float = 0,@FeeLimit float = 0)
	as
	begin TRANSACTION
	declare @UserId int
	declare @BookNameTemp varchar(60)
	declare @AuthorTemp varchar(20)
	declare @BookCallCodeTemp varchar(15)

	/* 插入日志 */
	
	

	INSERT INTO L_Circulation ( MachineId,StaffId,CirculationType,BookBarcode,PatronCode,CirculationDate ) 
	VALUES(@MachineId,@StaffId,@CirculationType,@BookBarcode,@PatronCode, getdate())

	/* 图书信息更新 */
	SELECT  @BookNameTemp=name, @AuthorTemp=Author, @BookCallCodeTemp=CallCode FROM T_BOOK WHERE BARCODE = @BookBarcode
	
	IF  @@RowCount  = 0 /* 没有数据 */
	begin
	/* 插入图书数据 */
	
	INSERT INTO T_BOOK (BARCODE,NAME,CALLCODE,AUTHOR,STATUS,HoldPatron,CreateDate,CreateBy,UpdateDate,UpdateBy,remark) 
	VALUES(@BookBarcode,@BookName,@BookCallCode,@Author,@Status,@PatronCode,getdate(),0,getdate(),0,'存储过程自动生成')
	
	end
	else
	begin
	/* 更新图书数据 */

	UPDATE T_BOOK SET 
	NAME=CASE WHEN (@BookName is not null and LEN(@BookName)>0) THEN @BookName ELSE @BookNameTemp END,
	Author=CASE WHEN (@Author is not null and LEN(@Author)>0) THEN @Author ELSE @AuthorTemp END,
	CallCode=CASE WHEN (@BookCallCode is not null and LEN(@BookCallCode)>0) THEN @BookCallCode ELSE @BookCallCodeTemp END
	WHERE BARCODE = @BookBarcode
	
	end

	/* 用户信息更新 */

	if @PatronCode is not null and LEN(@PatronCode)>0
	begin

	SELECT @UserId=id FROM T_USER WHERE PatronCode = @PatronCode

	IF  @@RowCount  = 0 /* 没有数据 */
	begin
	/* 插入图书数据 */
	
	INSERT INTO T_User (PatronCode,Name,CreateDate,CreateBy,UpdateDate,UpdateBy,Remark)values
	(@PatronCode,@PatronName,GETDATE(),0,GETDATE(),0,'存储过程自动生成')

	
	set @UserId=@@identity

	INSERT INTO T_UserLibraryInfo(UserId,Password,ChargedCount,ChargedLimit,OverdueCount,OverdueLimit,Fee,FeeLimit,CreateDate,CreateBy,UpdateDate,UpdateBy,Remark)values
	(@UserId,@Password,@ChargedCount,@ChargedLimit,@OverdueCount,@OverdueLimit,@Fee,@FeeLimit,GETDATE(),0,GETDATE(),0,'存储过程自动生成')
	end
	else
	begin

	SELECT id FROM T_UserLibraryInfo WHERE UserId = @UserId

	IF  @@RowCount  = 0 /* 没有数据 */
	begin
	INSERT INTO T_UserLibraryInfo(UserId,Password,ChargedCount,ChargedLimit,OverdueCount,OverdueLimit,Fee,FeeLimit,CreateDate,CreateBy,UpdateDate,UpdateBy,Remark)values
	(@UserId,@Password,@ChargedCount,@ChargedLimit,@OverdueCount,@OverdueLimit,@Fee,@FeeLimit,GETDATE(),0,GETDATE(),0,'存储过程自动生成')
	end
	else
	begin
	UPDATE T_UserLibraryInfo SET ChargedCount=@ChargedCount,ChargedLimit=@ChargedLimit,OverdueCount=@OverdueCount,OverdueLimit=@OverdueLimit,Fee=@Fee,FeeLimit=@FeeLimit,Updatedate=GETDATE(),UpdateBy=0 where UserId=@UserId
	end
	end
	end
	commit transaction
	return

	
	
	

GO

-- ----------------------------
-- Procedure structure for MachineUpdateStatus
-- ----------------------------
DROP PROCEDURE [dbo].[MachineUpdateStatus]
GO
create procedure [dbo].[MachineUpdateStatus] (@MachineId int,@Status varchar(88),@ServiceCommand varchar(4) out)
	as
	begin TRANSACTION
	declare @ServiceCommandNone varchar(4) ='1001'

	SELECT @ServiceCommand=SERVICECOMMAND FROM T_MACHINESTATUS WHERE MachineId = @MachineId
	
	IF  @@RowCount  = 0 /* 没有数据 */
	begin
	/* 插入数据 */
	INSERT INTO T_MachineStatus(MachineId,Status,ServiceCommand,CreateDate,UpdateDate) VALUES(@MachineId,@Status,@ServiceCommandNone,getdate(),getdate())
	commit transaction
	return
	end
	else
	begin
	/* 更新数据 */
	UPDATE T_MACHINESTATUS SET SERVICECOMMAND = @ServiceCommandNone, STATUS = @Status ,UpdateDate = getdate() WHERE MachineId = @MachineId
	commit transaction
	return
	end
GO

-- ----------------------------
-- Indexes structure for table L_Circulation
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table L_Circulation
-- ----------------------------
ALTER TABLE [dbo].[L_Circulation] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table L_TagInit
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table L_TagInit
-- ----------------------------
ALTER TABLE [dbo].[L_TagInit] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table R_PositionRole
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table R_PositionRole
-- ----------------------------
ALTER TABLE [dbo].[R_PositionRole] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table R_RoleFunction
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table R_RoleFunction
-- ----------------------------
ALTER TABLE [dbo].[R_RoleFunction] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table R_UserPosition
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table R_UserPosition
-- ----------------------------
ALTER TABLE [dbo].[R_UserPosition] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_AcsParam
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_AcsParam
-- ----------------------------
ALTER TABLE [dbo].[T_AcsParam] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table T_BookBatch
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_BookBatch
-- ----------------------------
ALTER TABLE [dbo].[T_BookBatch] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_BookPackage
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_BookPackage
-- ----------------------------
ALTER TABLE [dbo].[T_BookPackage] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_Dictionary
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Dictionary
-- ----------------------------
ALTER TABLE [dbo].[T_Dictionary] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_DictionaryType
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_DictionaryType
-- ----------------------------
ALTER TABLE [dbo].[T_DictionaryType] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_Function
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Function
-- ----------------------------
ALTER TABLE [dbo].[T_Function] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_MachineParam
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_MachineParam
-- ----------------------------
ALTER TABLE [dbo].[T_MachineParam] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table T_MachineStatus
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_MachineStatus
-- ----------------------------
ALTER TABLE [dbo].[T_MachineStatus] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table T_Position
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Position
-- ----------------------------
ALTER TABLE [dbo].[T_Position] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Role
-- ----------------------------
ALTER TABLE [dbo].[T_Role] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_Supplier
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Supplier
-- ----------------------------
ALTER TABLE [dbo].[T_Supplier] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_Tag
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Tag
-- ----------------------------
ALTER TABLE [dbo].[T_Tag] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_TagBatch
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_TagBatch
-- ----------------------------
ALTER TABLE [dbo].[T_TagBatch] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table T_User
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_User
-- ----------------------------
ALTER TABLE [dbo].[T_User] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table T_UserLibraryInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_UserLibraryInfo
-- ----------------------------
ALTER TABLE [dbo].[T_UserLibraryInfo] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table T_WaitCheckBook
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_WaitCheckBook
-- ----------------------------
ALTER TABLE [dbo].[T_WaitCheckBook] ADD PRIMARY KEY ([ID])
GO
