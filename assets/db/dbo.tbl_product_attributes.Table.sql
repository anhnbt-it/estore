USE [quanlysanpham]
GO
/****** Object:  Table [dbo].[tbl_product_attributes]    Script Date: 18/04/2021 2:59:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product_attributes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[attribute_id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_product_attributes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_product_attributes_tbl_attributes] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[tbl_attributes] ([id])
GO
ALTER TABLE [dbo].[tbl_product_attributes] CHECK CONSTRAINT [FK_tbl_product_attributes_tbl_attributes]
GO
ALTER TABLE [dbo].[tbl_product_attributes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_product_attributes_tbl_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
ALTER TABLE [dbo].[tbl_product_attributes] CHECK CONSTRAINT [FK_tbl_product_attributes_tbl_products]
GO
