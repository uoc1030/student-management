USE [StudentManagementNew]
GO
/*Object: Table [dbo].[tblMajor]*/
CREATE TABLE [dbo].[tblMajor]
(
	[majorID] [varchar](20) NOT NULL,
	[nameMajor] [varchar](50) NULL,
	CONSTRAINT [PK_tblMajor_majorID] PRIMARY KEY([majorID])
)
/*Object: Table [dto].[tblStudent]*/
CREATE TABLE [dbo].[tblStudent]
(
	[studentID] [varchar](20) NOT NULL,
	[fullname] [varchar](50) NULL,
	[birthday] [date] NULL,
	[gender] [int] NULL,
	[address] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[birthplace] [varchar](50) NULL,
	[majorID] [varchar](20) NULL,
	CONSTRAINT [PK_tblStudent_studentID] PRIMARY KEY([studentID]),
	CONSTRAINT [FK_tblStudent_majorID] FOREIGN KEY([majorID]) REFERENCES [dbo].[tblMajor]([majorID])
)
/*Object: Table [dbo].[tblSubject]*/
CREATE TABLE [dbo].[tblSubject]
(
	[subjectID] [varchar](20) NOT NULL,
	[nameSubject] [varchar](50) NULL,
	CONSTRAINT [PK_tblSubject_subjectID] PRIMARY KEY([subjectID])
)
/*Object: Table [dbo].[tblMark]*/
CREATE TABLE [dbo].[tblMark]
(
	[mark] [int] NULL,
	[subjectID] [varchar](20) NOT NULL,
	[studentID] [varchar](20) NOT NULL,
	CONSTRAINT [PK_tblMark_studentID_subjectID] PRIMARY KEY([studentID],[subjectID]),
	CONSTRAINT [FK_tblMark_studentID] FOREIGN KEY([studentID]) REFERENCES [dbo].[tblStudent]([studentID]),
	CONSTRAINT [FK_tblMark_subjectID] FOREIGN KEY([subjectID]) REFERENCES [dbo].[tblSubject]([subjectID])
)
