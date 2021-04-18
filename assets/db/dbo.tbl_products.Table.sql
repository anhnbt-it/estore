USE [quanlysanpham]
GO
/****** Object:  Table [dbo].[tbl_products]    Script Date: 18/04/2021 2:59:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[manufacturer_id] [int] NOT NULL,
	[name] [varchar](45) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[description] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [varchar](15) NOT NULL,
	[discount] [tinyint] NOT NULL,
	[view_count] [int] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[created_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT (NULL) FOR [thumbnail_url]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('available') FOR [status]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('0') FOR [discount]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('0') FOR [view_count]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_products]  WITH CHECK ADD FOREIGN KEY([manufacturer_id])
REFERENCES [dbo].[tbl_manufacturers] ([id])
GO
ALTER TABLE [dbo].[tbl_products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[tbl_categories] ([id])
GO
