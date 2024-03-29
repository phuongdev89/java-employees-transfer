CREATE DATABASE [EmployeeTransferManagement]
GO
USE [EmployeeTransferManagement]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 05/10/2014 16:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [Description]) VALUES (4, N'Hanoi Office', N'Cau Giay, Ha Noi')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [Description]) VALUES (5, N'Ho Chi Minh Office', N'Quan 1, Ho Chi Minh city')
SET IDENTITY_INSERT [dbo].[Departments] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 05/10/2014 16:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Uname] [varchar](25) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[Role] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([ID], [Uname], [Password], [Role]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', 1)
INSERT [dbo].[Users] ([ID], [Uname], [Password], [Role]) VALUES (28, N'demo1', N'9336ebf25087d91c818ee6e9ec29f8c1', 0)
INSERT [dbo].[Users] ([ID], [Uname], [Password], [Role]) VALUES (29, N'demo2', N'9dd4e461268c8034f5c8564e155c67a6', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[Transfers]    Script Date: 05/10/2014 16:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transfers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transfers](
	[TransferID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeNumber] [int] NULL,
	[TransferToProjectID] [int] NULL,
	[TransferToLocationID] [int] NULL,
	[TransferToDepartmentID] [int] NULL,
	[TransferFromProjectID] [int] NULL,
	[TransferFromLocationID] [int] NULL,
	[TransferFromDepartmentID] [int] NULL,
	[TransferJoiningDate] [date] NOT NULL,
	[Status] [bit] NOT NULL,
	[TransferRelievingDate] [date] NOT NULL,
 CONSTRAINT [PK_Transfers] PRIMARY KEY CLUSTERED 
(
	[TransferID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Transfers] ON
INSERT [dbo].[Transfers] ([TransferID], [EmployeeNumber], [TransferToProjectID], [TransferToLocationID], [TransferToDepartmentID], [TransferFromProjectID], [TransferFromLocationID], [TransferFromDepartmentID], [TransferJoiningDate], [Status], [TransferRelievingDate]) VALUES (4, 18, 6, 2, -1, 6, 2, -1, CAST(0x7F380B00 AS Date), 1, CAST(0x7F380B00 AS Date))
SET IDENTITY_INSERT [dbo].[Transfers] OFF
/****** Object:  Table [dbo].[Requests]    Script Date: 05/10/2014 16:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Requests]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Requests](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[ProjectID] [int] NULL,
	[LocationID] [int] NULL,
	[DepartmentID] [int] NULL,
	[Status] [bit] NULL,
	[Content] [text] NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Requests] ON
INSERT [dbo].[Requests] ([RequestID], [EmployeeID], [ProjectID], [LocationID], [DepartmentID], [Status], [Content]) VALUES (1, 18, 6, 1, 0, 1, N'xxxx')
INSERT [dbo].[Requests] ([RequestID], [EmployeeID], [ProjectID], [LocationID], [DepartmentID], [Status], [Content]) VALUES (2, 18, 6, 2, 0, 1, N'')
SET IDENTITY_INSERT [dbo].[Requests] OFF
/****** Object:  Table [dbo].[Projects]    Script Date: 05/10/2014 16:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Projects]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Projects](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Projects] ON
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [Description]) VALUES (7, N'PHP Project', N'The project about php package')
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [Description]) VALUES (8, N'Java Project', N'ABC Company need an application')
SET IDENTITY_INSERT [dbo].[Projects] OFF
/****** Object:  Table [dbo].[Locations]    Script Date: 05/10/2014 16:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Locations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Description]) VALUES (1, N'Ha Noi', N'Ha Noi City')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Description]) VALUES (2, N'Ho Chi Minh', N'Ho Chi Minh City')
SET IDENTITY_INSERT [dbo].[Locations] OFF
/****** Object:  Table [dbo].[Employees]    Script Date: 05/10/2014 16:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employees](
	[EmployeeNumber] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](15) NOT NULL,
	[UserID] [int] NULL,
	[Role] [varchar](50) NULL,
	[WorkExperience] [text] NULL,
	[CurrentProjectID] [int] NULL,
	[CurrentLocationID] [int] NULL,
	[CurrentDepartmentID] [int] NULL,
	[EmployeeFirstName] [varchar](15) NULL,
	[DateOfBirth] [date] NULL,
	[Sex] [bit] NULL,
	[Address] [text] NULL,
	[PhoneNum] [varchar](15) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON
INSERT [dbo].[Employees] ([EmployeeNumber], [EmployeeName], [UserID], [Role], [WorkExperience], [CurrentProjectID], [CurrentLocationID], [CurrentDepartmentID], [EmployeeFirstName], [DateOfBirth], [Sex], [Address], [PhoneNum]) VALUES (1, N'Vuong', 1, N'Developer', N'3 years in java', 8, 1, 5, N'Tran', CAST(0x1E250B00 AS Date), 1, N'Ha Noi', N'03789678678')
INSERT [dbo].[Employees] ([EmployeeNumber], [EmployeeName], [UserID], [Role], [WorkExperience], [CurrentProjectID], [CurrentLocationID], [CurrentDepartmentID], [EmployeeFirstName], [DateOfBirth], [Sex], [Address], [PhoneNum]) VALUES (12, N'Cuong', 28, N'Tester', N'2 Years', 8, 1, 5, N'Manh', CAST(0x7F380B00 AS Date), 1, N'Hanoi', N'045645345')
INSERT [dbo].[Employees] ([EmployeeNumber], [EmployeeName], [UserID], [Role], [WorkExperience], [CurrentProjectID], [CurrentLocationID], [CurrentDepartmentID], [EmployeeFirstName], [DateOfBirth], [Sex], [Address], [PhoneNum]) VALUES (13, N'Hien', 29, N'Assistant', N'4 Years', 7, 2, 5, N'Nguyen', CAST(0x7F380B00 AS Date), 1, N'HCM', N'0834353444')
INSERT [dbo].[Employees] ([EmployeeNumber], [EmployeeName], [UserID], [Role], [WorkExperience], [CurrentProjectID], [CurrentLocationID], [CurrentDepartmentID], [EmployeeFirstName], [DateOfBirth], [Sex], [Address], [PhoneNum]) VALUES (14, N'xxx', 1, N'xxx', N'xxx', NULL, 1, NULL, N'xxx', CAST(0x16390B00 AS Date), 1, N'xxx', N'xxx')
SET IDENTITY_INSERT [dbo].[Employees] OFF
/****** Object:  ForeignKey [FK_Employees_Users]    Script Date: 05/10/2014 16:37:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users]
GO
