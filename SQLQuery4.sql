USE [LeaveM]
GO
/****** Object:  Table [dbo].[leave]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leave](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EID] [int] NULL,
	[FirstName] [nvarchar](16) NOT NULL,
	[LastName] [nvarchar](16) NULL,
	[Designation] [nvarchar](16) NULL,
	[status] [char](1) NOT NULL,
	[fromDate] [date] NOT NULL,
	[toDate] [date] NOT NULL,
	[reason] [nvarchar](max) NULL,
	[Ltype] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](64) NOT NULL,
	[Pass] [nvarchar](16) NOT NULL,
	[FirstName] [nvarchar](16) NOT NULL,
	[LastName] [nvarchar](16) NULL,
	[Designation] [char](1) NULL,
	[Gender] [char](1) NOT NULL,
	[EL] [int] NOT NULL,
	[CL] [int] NOT NULL,
	[SL] [int] NOT NULL,
	[ML] [int] NULL,
	[HL] [int] NOT NULL,
	[PL] [int] NULL,
	[Role_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Master]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](8) NOT NULL,
	[Role_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[leave] ON 
GO
INSERT [dbo].[leave] ([ID], [EID], [FirstName], [LastName], [Designation], [status], [fromDate], [toDate], [reason], [Ltype]) VALUES (1, 1, N'test1', N'test1', N'S', N'Y', CAST(N'2018-07-20' AS Date), CAST(N'2018-07-28' AS Date), N'josemon', N'EL')
GO
INSERT [dbo].[leave] ([ID], [EID], [FirstName], [LastName], [Designation], [status], [fromDate], [toDate], [reason], [Ltype]) VALUES (2, 1, N'test1', N'test1', N'S', N'R', CAST(N'2018-07-26' AS Date), CAST(N'2018-07-31' AS Date), N'josemon222', N'PL')
GO
SET IDENTITY_INSERT [dbo].[leave] OFF
GO
SET IDENTITY_INSERT [dbo].[login] ON 
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (1, N'test1@gmail.com', N'test1', N'test1', N'test1', N'S', N'M', 26, 50, 50, 0, 50, 30, 0)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (2, N'test2@gmail.com', N'test2', N'test2', N'test2', N'V', N'F', 50, 50, 50, 50, 50, 0, 0)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (3, N'test3@gmail.com', N'test3', N'test3', N'test3', N'T', N'M', 50, 50, 50, 0, 50, 50, 0)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (6, N'adminT@admin.com', N'12345', N'admin', N'', N'T', N'M', 50, 50, 50, 0, 50, 50, 2)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (7, N'hr@hr.com', N'12345', N'hr', N'', N'S', N'F', 50, 50, 50, 50, 50, 0, 1)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (8, N'adminV@admin.com', N'12345', N'admin', N'', N'V', N'F', 50, 50, 50, 50, 50, 0, 2)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (9, N'adminS@admin.com', N'123456', N'admin', N'', N'S', N'F', 50, 50, 50, 50, 50, 0, 2)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (10, N'test3@test.com', N'test3', N'test3', N'test3', N'S', N'F', 50, 50, 50, 50, 50, 0, 0)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (11, N'test4@test4.com', N'test4', N'test4', N'test4', N'S', N'F', 50, 50, 50, 42, 50, 0, 0)
GO
INSERT [dbo].[login] ([ID], [UserName], [Pass], [FirstName], [LastName], [Designation], [Gender], [EL], [CL], [SL], [ML], [HL], [PL], [Role_ID]) VALUES (12, N'test5@gmail.com', N'test5', N'test5', N'test5', N'T', N'M', 50, 50, 50, 0, 50, 50, 0)
GO
SET IDENTITY_INSERT [dbo].[login] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_Master] ON 
GO
INSERT [dbo].[Role_Master] ([ID], [Role], [Role_ID]) VALUES (1, N'Employee', 0)
GO
INSERT [dbo].[Role_Master] ([ID], [Role], [Role_ID]) VALUES (2, N'HR', 1)
GO
INSERT [dbo].[Role_Master] ([ID], [Role], [Role_ID]) VALUES (3, N'Admin', 2)
GO
SET IDENTITY_INSERT [dbo].[Role_Master] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__employee__C9F28456339DF4D3]    Script Date: 7/21/2018 5:47:29 PM ******/
ALTER TABLE [dbo].[login] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[leave] ADD  DEFAULT ('N') FOR [status]
GO
ALTER TABLE [dbo].[leave]  WITH CHECK ADD FOREIGN KEY([EID])
REFERENCES [dbo].[login] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[sp_AddEmployeeDetails]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_AddEmployeeDetails]
(  
	@UserName varchar(64),
	@Pass varchar(16),
	@FirstName varchar(16),
	@LastName varchar(16),
	@Gender char(1),
	@Designation char(1),
	@Role_ID char(1)
)  
as  
Begin
if(@Gender='M')
begin
insert into login(UserName,Pass,FirstName,LastName,Designation,Gender,EL, CL, SL, ML, HL,PL,Role_ID) 
values(@Username,@Pass,@FirstName,@LastName,@Designation,@Gender,50,50,50,0,50,50,@Role_ID)
 end
 else
 begin
 insert into login(UserName,Pass,FirstName,LastName,Designation,Gender,EL, CL, SL, ML, HL,PL,Role_ID) 
values(@Username,@Pass,@FirstName,@LastName,@Designation,@Gender,50,50,50,50,50,0,@Role_ID)
 end
End
GO
/****** Object:  StoredProcedure [dbo].[sp_AddLeaveDetails]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_AddLeaveDetails]
(   @EID int=null,
	@FName NVARCHAR(16),
	@LName NVARCHAR(16),
	@Designation NVARCHAR(16),
	@date1 date = null,
	@date2 date = null,
	@reason NVARCHAR(max),
	@type char(2)
)  
as  
Begin
insert into leave (EID,FirstName,LastName,Designation,fromDate,toDate,reason,Ltype) values(@EID,@FName,@LName,@Designation,@date1,@date2,@reason,@type) 
End


--select * from leave
GO
/****** Object:  StoredProcedure [dbo].[sp_ChangeEmployeeDetails]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ChangeEmployeeDetails](
@UserName varchar(64),
@Password varchar(16)
)
as
begin
update login set Pass = @Password where UserName = @UserName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckRStatus]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CheckRStatus](
@EiD NVARCHAR(max)
)
as
begin
Select Count(*) as CountNo from leave where EID = @EID and status = 'R'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckStatus]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CheckStatus](
@EiD NVARCHAR(max)
)
as
begin
Select Count(*) as CountNo from leave where EID = @EID and status = 'Y'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEmployeeDetail]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetEmployeeDetail]
(
@UserName varchar(64),
@Password varchar(16)
)

As
Begin
Select * from login Where UserName=@UserName and Pass=@Password
End
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLeaveDetails]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetLeaveDetails]
(   
	@Designation  NVARCHAR(16)
)  
as  
Begin
select ID,EID, FirstName, LastName, fromDate, toDate, reason, Ltype from leave where Designation = @Designation and status = 'N'
End
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRStatus]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetRStatus](
@EID NVARCHAR(max)
)
as
begin
select ID,fromDate,toDate,reason,Ltype from leave where EID = @EID and status = 'R'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStatus]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetStatus](
@EID NVARCHAR(max)
)
as
begin
select ID,fromDate,toDate,reason,Ltype from leave where EID = @EID and status = 'Y'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SanctionLeave]    Script Date: 7/21/2018 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SanctionLeave] 
(
@ID nvarchar(max),
@EID nvarchar(max),
@Ltype nvarchar(max)
)
as
begin
declare @CName nvarchar(max)
declare @temp1 table(tableName nvarchar(max))
set @CName = 'select '+@Ltype+' from login where ID = '+@EID
insert @temp1
EXEC(@CName)

declare @day nvarchar(max)
declare @temp2 table(tableName nvarchar(max))
set @day = 'SELECT DATEDIFF(DD, "fromDate", "toDate") as days from leave where EID =' + @EID + 'and ID =' + @ID
insert @temp2
EXEC(@day)

declare @diff int
declare @op1 int
set @op1 = (select * from @temp1)
declare @op2 int 
set @op2 = (select * from @temp2)
set @diff = @op1 - @op2

declare @main nvarchar(max)
declare @temp3 table(tableName nvarchar(max))
set @main = 'update login set '+@Ltype+' = '+convert(nvarchar(max),@diff)+' where ID = '+@EID
Update leave set status = 'Y' where Ltype = @Ltype and ID = @ID
insert @temp3
EXEC(@main)
end
GO
