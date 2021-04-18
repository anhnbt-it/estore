USE [quanlysanpham]
GO
/****** Object:  Table [dbo].[tbl_customers]    Script Date: 18/04/2021 2:59:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[email] [varchar](45) NOT NULL,
	[password] [varchar](45) NOT NULL,
	[phone] [varchar](45) NULL,
	[date_of_birth] [date] NULL,
	[address] [varchar](45) NULL,
	[city] [varchar](45) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [date_of_birth]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [city]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
