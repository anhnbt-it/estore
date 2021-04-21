USE [ecommerce_db]
GO

/****** Object:  Table [dbo].[tbl_product_attributes]    Script Date: 4/21/2021 8:48:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_product_attributes](
	[product_id] [int] NOT NULL,
	[attribute_id] [int] NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_product_attributes_1] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[attribute_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_product_attributes] ADD  CONSTRAINT [DF_tbl_product_attributes_created_at]  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[tbl_product_attributes] ADD  CONSTRAINT [DF_tbl_product_attributes_updated_at]  DEFAULT (getdate()) FOR [updated_at]
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

