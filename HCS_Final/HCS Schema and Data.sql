USE [HCS]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_Patient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [FK_Note_Patient]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_NoteType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [FK_Note_NoteType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_HealthCareProvider]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [FK_Note_HealthCareProvider]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_Patient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [FK_Appointment_Patient]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_HealthCareProvider]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [FK_Appointment_HealthCareProvider]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_UserIdEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_DateEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_Active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_DateOfBirth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_DateOfBirth]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_CellPhone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_CellPhone]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_HomePhone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_HomePhone]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_Address2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_Address2]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_Address1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_Address1]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_HealthCardNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_HealthCardNo]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_LastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_LastName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_FirstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [DF_Patient_FirstName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] DROP CONSTRAINT [DF_NoteType_UserIdEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] DROP CONSTRAINT [DF_NoteType_DateEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] DROP CONSTRAINT [DF_NoteType_Active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_Description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] DROP CONSTRAINT [DF_NoteType_Description]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [DF_Note_UserIdEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [DF_Note_DateEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [DF_Note_Active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_Speciality]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [DF_Table_1_Speciality]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_LastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [DF_Table_1_LastName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_FirstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [DF_Table_1_FirstName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_HealthCareProviderId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] DROP CONSTRAINT [DF_Note_HealthCareProviderId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_Password]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_HealthCareProvider_Password]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_Username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_HealthCareProvider_Username]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_HealthCareProvider_UserIdEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_HealthCareProvider_DateEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_HealthCareProvider_Active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_Address1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_Table_1_Address1]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_HealthCardNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_Table_1_HealthCardNo]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_LastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_HealthCareProvider_LastName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_FirstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] DROP CONSTRAINT [DF_HealthCareProvider_FirstName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_UserIdEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_DateEntered]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_Active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_Cancelled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_Cancelled]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_NoShow]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_NoShow]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_PatientId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_PatientId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_HealthCareProviderId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_HealthCareProviderId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_EndTo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_EndTo]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_StartFrom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [DF_Appointment_StartFrom]
END

GO
/****** Object:  Table [dbo].[Patient]    Script Date: 2/5/2016 11:02:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
DROP TABLE [dbo].[Patient]
GO
/****** Object:  Table [dbo].[NoteType]    Script Date: 2/5/2016 11:02:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteType]') AND type in (N'U'))
DROP TABLE [dbo].[NoteType]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 2/5/2016 11:02:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Note]') AND type in (N'U'))
DROP TABLE [dbo].[Note]
GO
/****** Object:  Table [dbo].[HealthCareProvider]    Script Date: 2/5/2016 11:02:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HealthCareProvider]') AND type in (N'U'))
DROP TABLE [dbo].[HealthCareProvider]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 2/5/2016 11:02:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
DROP TABLE [dbo].[Appointment]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 2/5/2016 11:02:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Appointment](
	[AppointmentId] [bigint] IDENTITY(1,1) NOT NULL,
	[StartFrom] [datetime] NULL,
	[EndTo] [datetime] NULL,
	[HealthCareProviderId] [bigint] NOT NULL,
	[PatientId] [bigint] NULL,
	[NoShow] [bit] NULL,
	[Cancelled] [bit] NULL,
	[Active] [bit] NULL,
	[DateEntered] [datetime] NULL,
	[UserIdEntered] [bigint] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HealthCareProvider]    Script Date: 2/5/2016 11:02:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HealthCareProvider]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HealthCareProvider](
	[HealthCareProviderId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Speciality] [nvarchar](50) NULL,
	[RegistrationNumber] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[DateEntered] [datetime] NULL,
	[UserIdEntered] [bigint] NULL,
	[Username] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HealthCareProvider] PRIMARY KEY CLUSTERED 
(
	[HealthCareProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Note]    Script Date: 2/5/2016 11:02:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Note]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Note](
	[NoteId] [bigint] IDENTITY(1,1) NOT NULL,
	[HealthCareProviderId] [bigint] NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[Note] [nvarchar](500) NULL,
	[NoteTypeId] [bigint] NULL,
	[Active] [bit] NULL,
	[DateEntered] [datetime] NULL,
	[UserIdEntered] [bigint] NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[NoteType]    Script Date: 2/5/2016 11:02:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NoteType](
	[NoteTypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[DateEntered] [datetime] NULL,
	[UserIdEntered] [bigint] NULL,
 CONSTRAINT [PK_NoteType] PRIMARY KEY CLUSTERED 
(
	[NoteTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 2/5/2016 11:02:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Patient](
	[PatientId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[HealthCardNo] [nvarchar](50) NULL,
	[Address1] [nvarchar](50) NULL,
	[Address2] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](50) NULL,
	[CellPhone] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Active] [bit] NULL,
	[DateEntered] [datetime] NULL,
	[UserIdEntered] [bigint] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([AppointmentId], [StartFrom], [EndTo], [HealthCareProviderId], [PatientId], [NoShow], [Cancelled], [Active], [DateEntered], [UserIdEntered]) VALUES (1, CAST(0x0000A3EB00AD08E0 AS DateTime), CAST(0x0000A3EB00BD83A0 AS DateTime), 1, 1, 0, 0, 1, CAST(0x0000A3EB00000000 AS DateTime), 1)
INSERT [dbo].[Appointment] ([AppointmentId], [StartFrom], [EndTo], [HealthCareProviderId], [PatientId], [NoShow], [Cancelled], [Active], [DateEntered], [UserIdEntered]) VALUES (2, CAST(0x0000A3EB00AD08E0 AS DateTime), CAST(0x0000A3EB00BD83A0 AS DateTime), 2, 2, 0, 0, 1, CAST(0x0000A3EB00000000 AS DateTime), 1)
INSERT [dbo].[Appointment] ([AppointmentId], [StartFrom], [EndTo], [HealthCareProviderId], [PatientId], [NoShow], [Cancelled], [Active], [DateEntered], [UserIdEntered]) VALUES (3, CAST(0x0000A3EB009C8E20 AS DateTime), CAST(0x0000A3EB00AD08E0 AS DateTime), 1, 3, 0, 0, 1, CAST(0x0000A3EB00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
SET IDENTITY_INSERT [dbo].[HealthCareProvider] ON 

INSERT [dbo].[HealthCareProvider] ([HealthCareProviderId], [FirstName], [LastName], [Speciality], [RegistrationNumber], [Active], [DateEntered], [UserIdEntered], [Username], [Password]) VALUES (1, N'John', N'Smith', N'', N'1234', 1, CAST(0x0000A1EF0156C3E8 AS DateTime), 0, N't', N't')
INSERT [dbo].[HealthCareProvider] ([HealthCareProviderId], [FirstName], [LastName], [Speciality], [RegistrationNumber], [Active], [DateEntered], [UserIdEntered], [Username], [Password]) VALUES (2, N'Mary', N'Wills', N'', N'3456', 1, CAST(0x0000A3EB0113C765 AS DateTime), 0, N'a', N'a')
SET IDENTITY_INSERT [dbo].[HealthCareProvider] OFF
SET IDENTITY_INSERT [dbo].[Note] ON 

INSERT [dbo].[Note] ([NoteId], [HealthCareProviderId], [PatientId], [Note], [NoteTypeId], [Active], [DateEntered], [UserIdEntered]) VALUES (1, 1, 1, N'Sucidal', 1, 1, CAST(0x0000A2A600000000 AS DateTime), 1)
INSERT [dbo].[Note] ([NoteId], [HealthCareProviderId], [PatientId], [Note], [NoteTypeId], [Active], [DateEntered], [UserIdEntered]) VALUES (2, 2, 2, N'Call Cell only', 1, 1, CAST(0x0000A35500000000 AS DateTime), 1)
INSERT [dbo].[Note] ([NoteId], [HealthCareProviderId], [PatientId], [Note], [NoteTypeId], [Active], [DateEntered], [UserIdEntered]) VALUES (3, 1, 3, N'Dont not want emails', 1, 1, CAST(0x0000A3EB00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Note] OFF
SET IDENTITY_INSERT [dbo].[NoteType] ON 

INSERT [dbo].[NoteType] ([NoteTypeId], [Description], [Active], [DateEntered], [UserIdEntered]) VALUES (1, N'Admin - A', 1, CAST(0x0000A3EB01138CA9 AS DateTime), 1)
INSERT [dbo].[NoteType] ([NoteTypeId], [Description], [Active], [DateEntered], [UserIdEntered]) VALUES (2, N'Billing - A', 1, CAST(0x0000A3EB01139065 AS DateTime), 1)
INSERT [dbo].[NoteType] ([NoteTypeId], [Description], [Active], [DateEntered], [UserIdEntered]) VALUES (3, N'Marketing - A', 1, CAST(0x0000A53A00B018DE AS DateTime), 0)
INSERT [dbo].[NoteType] ([NoteTypeId], [Description], [Active], [DateEntered], [UserIdEntered]) VALUES (4, N'Important - A', 1, CAST(0x0000A53A00B02419 AS DateTime), 0)
INSERT [dbo].[NoteType] ([NoteTypeId], [Description], [Active], [DateEntered], [UserIdEntered]) VALUES (5, N'Emergency - A', 1, CAST(0x0000A53A00B034B5 AS DateTime), 0)
INSERT [dbo].[NoteType] ([NoteTypeId], [Description], [Active], [DateEntered], [UserIdEntered]) VALUES (6, N'NA - A', 1, CAST(0x0000A53A00B04594 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[NoteType] OFF
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([PatientId], [FirstName], [LastName], [HealthCardNo], [Address1], [Address2], [HomePhone], [CellPhone], [DateOfBirth], [Active], [DateEntered], [UserIdEntered]) VALUES (1, N'Dough', N'Ford', N'965458', N'66 Bullock Drive', NULL, N'4162895000', N'9052024710', CAST(0x6BF30A00 AS Date), 1, CAST(0x0000A14000000000 AS DateTime), 1)
INSERT [dbo].[Patient] ([PatientId], [FirstName], [LastName], [HealthCardNo], [Address1], [Address2], [HomePhone], [CellPhone], [DateOfBirth], [Active], [DateEntered], [UserIdEntered]) VALUES (2, N'Rob', N'Ford', N'789456', N'100 Young St.', NULL, N'4169856459', N'4163659874', CAST(0x44070B00 AS Date), 1, CAST(0x0000A14000000000 AS DateTime), 1)
INSERT [dbo].[Patient] ([PatientId], [FirstName], [LastName], [HealthCardNo], [Address1], [Address2], [HomePhone], [CellPhone], [DateOfBirth], [Active], [DateEntered], [UserIdEntered]) VALUES (3, N'James', N'Walter', N'654875', N'20 King St.', N'Unit 100', N'9056598745', N'9056549874', CAST(0x820B0B00 AS Date), 1, CAST(0x0000A26200000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Patient] OFF
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_StartFrom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_StartFrom]  DEFAULT (getdate()) FOR [StartFrom]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_EndTo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_EndTo]  DEFAULT (getdate()) FOR [EndTo]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_HealthCareProviderId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_HealthCareProviderId]  DEFAULT ((0)) FOR [HealthCareProviderId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_PatientId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_PatientId]  DEFAULT ((0)) FOR [PatientId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_NoShow]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_NoShow]  DEFAULT ((0)) FOR [NoShow]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_Cancelled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_Cancelled]  DEFAULT ((0)) FOR [Cancelled]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Appointment_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_UserIdEntered]  DEFAULT ((0)) FOR [UserIdEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_FirstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_HealthCareProvider_FirstName]  DEFAULT ('') FOR [FirstName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_LastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_HealthCareProvider_LastName]  DEFAULT ('') FOR [LastName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_HealthCardNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_Table_1_HealthCardNo]  DEFAULT ('') FOR [Speciality]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_Address1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_Table_1_Address1]  DEFAULT ('') FOR [RegistrationNumber]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_HealthCareProvider_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_HealthCareProvider_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_HealthCareProvider_UserIdEntered]  DEFAULT ((0)) FOR [UserIdEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_Username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_HealthCareProvider_Username]  DEFAULT ('') FOR [Username]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_HealthCareProvider_Password]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HealthCareProvider] ADD  CONSTRAINT [DF_HealthCareProvider_Password]  DEFAULT ('') FOR [Password]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_HealthCareProviderId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_HealthCareProviderId]  DEFAULT ((0)) FOR [HealthCareProviderId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_FirstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Table_1_FirstName]  DEFAULT ((0)) FOR [PatientId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_LastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Table_1_LastName]  DEFAULT ('') FOR [Note]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Table_1_Speciality]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Table_1_Speciality]  DEFAULT ((0)) FOR [NoteTypeId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Note_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_UserIdEntered]  DEFAULT ((0)) FOR [UserIdEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_Description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF_NoteType_Description]  DEFAULT ('') FOR [Description]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF_NoteType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF_NoteType_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NoteType_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF_NoteType_UserIdEntered]  DEFAULT ((0)) FOR [UserIdEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_FirstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_FirstName]  DEFAULT ('') FOR [FirstName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_LastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_LastName]  DEFAULT ('') FOR [LastName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_HealthCardNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_HealthCardNo]  DEFAULT ('') FOR [HealthCardNo]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_Address1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_Address1]  DEFAULT ('') FOR [Address1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_Address2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_Address2]  DEFAULT ('') FOR [Address2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_HomePhone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_HomePhone]  DEFAULT ('') FOR [HomePhone]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_CellPhone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_CellPhone]  DEFAULT ('') FOR [CellPhone]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_DateOfBirth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_DateOfBirth]  DEFAULT (getdate()) FOR [DateOfBirth]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_DateEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Patient_UserIdEntered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_UserIdEntered]  DEFAULT ((0)) FOR [UserIdEntered]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_HealthCareProvider]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_HealthCareProvider] FOREIGN KEY([HealthCareProviderId])
REFERENCES [dbo].[HealthCareProvider] ([HealthCareProviderId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_HealthCareProvider]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_HealthCareProvider]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_Patient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_Patient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Patient]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_HealthCareProvider]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_HealthCareProvider] FOREIGN KEY([HealthCareProviderId])
REFERENCES [dbo].[HealthCareProvider] ([HealthCareProviderId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_HealthCareProvider]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_HealthCareProvider]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_NoteType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_NoteType] FOREIGN KEY([NoteTypeId])
REFERENCES [dbo].[NoteType] ([NoteTypeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_NoteType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_NoteType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_Patient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Note_Patient]') AND parent_object_id = OBJECT_ID(N'[dbo].[Note]'))
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_Patient]
GO
