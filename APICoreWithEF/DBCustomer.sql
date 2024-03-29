USE [DBCustomer]
GO
/****** Object:  Table [dbo].[CityTbl]    Script Date: 3/9/2018 2:33:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityTbl](
	[CityID] [nvarchar](50) NOT NULL,
	[CityName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/9/2018 2:33:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[Country] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK_CustomerTB] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CityTbl] ([CityID], [CityName]) VALUES (N'HCM', N'Hồ Chí Minh')
INSERT [dbo].[CityTbl] ([CityID], [CityName]) VALUES (N'HN', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [FullName], [Address], [Country], [City], [PhoneNumber]) VALUES (1, N'Lương Trần Hy Hiến', N'280 An Dương Vương', N'Việt Nam', N'HCM', NULL)
INSERT [dbo].[Customer] ([CustomerID], [FullName], [Address], [Country], [City], [PhoneNumber]) VALUES (2, N'Lương Gia Hân', N'280 An Dương Vương', N'Việt Nam', N'HCM', N'0942359784')
INSERT [dbo].[Customer] ([CustomerID], [FullName], [Address], [Country], [City], [PhoneNumber]) VALUES (1002, N'Ngô Thanh Nhật', N'74 Xóm Đấtm Q11', N'Việt Nam', N'HCM', N'0963123456')
INSERT [dbo].[Customer] ([CustomerID], [FullName], [Address], [Country], [City], [PhoneNumber]) VALUES (1003, N'Trịnh Công Sơn', N'290V An Dương Vương', N'Việt Nam', N'HCM', N'0912359784')
SET IDENTITY_INSERT [dbo].[Customer] OFF
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_CustomerTB_CityTbl] FOREIGN KEY([City])
REFERENCES [dbo].[CityTbl] ([CityID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_CustomerTB_CityTbl]
GO
