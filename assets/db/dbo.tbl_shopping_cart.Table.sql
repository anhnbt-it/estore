USE [quanlysanpham]
GO
/****** Object:  Table [dbo].[tbl_shopping_cart]    Script Date: 18/04/2021 2:59:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_shopping_cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_shopping_cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
