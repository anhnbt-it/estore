USE [quanlysanpham]
GO
/****** Object:  Table [dbo].[tbl_orderdetails]    Script Date: 18/04/2021 2:59:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_orderdetails](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [pk_orderdetails] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_orderdetails] ADD  DEFAULT ('1') FOR [quantity]
GO
ALTER TABLE [dbo].[tbl_orderdetails]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[tbl_orders] ([id])
GO
ALTER TABLE [dbo].[tbl_orderdetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
